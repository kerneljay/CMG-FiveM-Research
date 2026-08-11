// I used this to log channels within CMG 

(async () => {
    console.clear();

    const sleep = ms =>
        new Promise(resolve => setTimeout(resolve, ms));

    const stored = new Map();

    window.DISCORD_LOGGER_STOP = false;

    // =========================================================
    // FIND A REAL MESSAGE
    // =========================================================

    function findAnyMessage() {
        return (
            document.querySelector('li[id^="chat-messages-"]') ||
            document.querySelector(
                '[data-list-item-id*="chat-messages___chat-messages"]'
            )
        );
    }

    // =========================================================
    // FIND SCROLLABLE PARENT
    // =========================================================

    function findScroller() {
        const message = findAnyMessage();

        if (!message) {
            console.error(
                "[LOGGER] Could not find any Discord message."
            );

            return null;
        }

        console.log(
            "[LOGGER] Found message element.",
            message
        );

        let el = message.parentElement;

        while (el && el !== document.body) {
            const style = getComputedStyle(el);

            const verticallyScrollable =
                el.scrollHeight >
                el.clientHeight + 50;

            const scrollStyle =
                style.overflowY === "auto" ||
                style.overflowY === "scroll" ||
                style.overflowY === "overlay";

            if (
                verticallyScrollable &&
                scrollStyle
            ) {
                console.log(
                    "[LOGGER] Found scrollable parent:",
                    el
                );

                console.log({
                    scrollTop: el.scrollTop,
                    scrollHeight: el.scrollHeight,
                    clientHeight: el.clientHeight,
                    overflowY: style.overflowY
                });

                return el;
            }

            el = el.parentElement;
        }

        // -----------------------------------------------------
        // FALLBACK:
        // find the biggest scrollable element containing message
        // -----------------------------------------------------

        const candidates = [];

        el = message.parentElement;

        while (el && el !== document.body) {
            if (
                el.scrollHeight >
                el.clientHeight + 100
            ) {
                candidates.push(el);
            }

            el = el.parentElement;
        }

        candidates.sort(
            (a, b) =>
                (b.scrollHeight - b.clientHeight) -
                (a.scrollHeight - a.clientHeight)
        );

        if (candidates.length) {
            console.warn(
                "[LOGGER] Using fallback scroller:",
                candidates[0]
            );

            return candidates[0];
        }

        return null;
    }

    // =========================================================
    // CLEAN TEXT
    // =========================================================

    function clean(text) {
        return String(text || "")
            .replace(/\u00A0/g, " ")
            .replace(/[ \t]+\n/g, "\n")
            .replace(/\n{3,}/g, "\n\n")
            .trim();
    }

    // =========================================================
    // EXTRACT MESSAGE ID
    // =========================================================

    function getMessageId(element) {
        if (!element) {
            return null;
        }

        // Standard Discord LI format
        //
        // chat-messages-CHANNELID-MESSAGEID

        if (element.id) {
            const match =
                element.id.match(
                    /^chat-messages-\d+-(\d+)$/
                );

            if (match) {
                return match[1];
            }
        }

        // data-list-item-id format

        const data =
            element.getAttribute(
                "data-list-item-id"
            ) || "";

        const dataMatch =
            data.match(
                /chat-messages-(\d+)$/
            );

        if (dataMatch) {
            return dataMatch[1];
        }

        return null;
    }

    // =========================================================
    // GET CURRENT MESSAGE ELEMENTS
    // =========================================================

    function getMessageElements() {
        const set = new Set();

        document
            .querySelectorAll(
                'li[id^="chat-messages-"]'
            )
            .forEach(el => set.add(el));

        document
            .querySelectorAll(
                '[data-list-item-id*="chat-messages___chat-messages"]'
            )
            .forEach(el => set.add(el));

        return [...set];
    }

    // =========================================================
    // USERNAME
    // =========================================================

    function getUsername(row, id) {
        let username =
            row.querySelector(
                `#message-username-${id}`
            );

        if (!username) {
            const labelled =
                row.getAttribute(
                    "aria-labelledby"
                ) || "";

            const match =
                labelled.match(
                    /message-username-(\d+)/
                );

            if (match) {
                username =
                    document.getElementById(
                        `message-username-${match[1]}`
                    );
            }
        }

        if (!username) {
            username =
                row.querySelector(
                    '[class*="username"]'
                );
        }

        return clean(
            username?.innerText ||
            username?.textContent ||
            "Unknown"
        );
    }

    // =========================================================
    // CAPTURE MESSAGES
    // =========================================================

    function capture() {
        const rows =
            getMessageElements();

        let added = 0;

        for (const row of rows) {
            const id =
                getMessageId(row);

            if (!id) {
                continue;
            }

            if (stored.has(id)) {
                continue;
            }

            const content =
                row.querySelector(
                    `#message-content-${id}`
                );

            // Ignore things such as dividers / system entries
            if (!content) {
                continue;
            }

            const timestamp =
                row.querySelector(
                    `#message-timestamp-${id}`
                );

            const text =
                clean(
                    content.innerText ||
                    content.textContent
                );

            const username =
                getUsername(row, id);

            stored.set(id, {
                id,
                username,

                datetime:
                    timestamp?.getAttribute(
                        "datetime"
                    ) || "",

                content: text
            });

            added++;
        }

        if (added > 0) {
            console.log(
                `[LOGGER] ${stored.size} stored (+${added})`
            );
        }

        return added;
    }

    // =========================================================
    // OLDEST MESSAGE CURRENTLY MOUNTED
    // =========================================================

    function oldestVisible() {
        const ids =
            getMessageElements()
                .map(getMessageId)
                .filter(Boolean)
                .map(x => BigInt(x));

        if (!ids.length) {
            return null;
        }

        return ids.reduce(
            (oldest, current) =>
                current < oldest
                    ? current
                    : oldest
        );
    }

    // =========================================================
    // FIND SCROLLER
    // =========================================================

    const scroller =
        findScroller();

    if (!scroller) {
        console.error(
            "[LOGGER] Could not determine scroll container."
        );

        return;
    }

    console.log(
        "[LOGGER] Logger started."
    );

    console.log(
        "[LOGGER] Stop with:"
    );

    console.log(
        "window.DISCORD_LOGGER_STOP = true"
    );

    capture();

    // =========================================================
    // SCROLL LOOP
    // =========================================================

    let bestOldest =
        oldestVisible();

    let failedPasses = 0;

    const MAX_FAILED = 20;

    while (
        !window.DISCORD_LOGGER_STOP &&
        failedPasses <
        MAX_FAILED
    ) {
        capture();

        const before =
            oldestVisible();

        const oldScrollTop =
            scroller.scrollTop;

        // -----------------------------------------------------
        // Scroll a moderate amount upward.
        //
        // Huge jumps sometimes confuse Discord virtualization.
        // -----------------------------------------------------

        scroller.scrollBy({
            top:
                -(scroller.clientHeight * 0.75),

            behavior: "instant"
        });

        // Also dispatch wheel event
        scroller.dispatchEvent(
            new WheelEvent(
                "wheel",
                {
                    deltaY: -800,
                    bubbles: true,
                    cancelable: true
                }
            )
        );

        await sleep(700);

        capture();

        // If we're approaching the top,
        // push all the way upward.
        if (scroller.scrollTop < 250) {
            scroller.scrollTop = 0;

            await sleep(1800);

            capture();
        }

        const after =
            oldestVisible();

        // -----------------------------------------------------
        // Check for an older Discord snowflake
        // -----------------------------------------------------

        if (
            after !== null &&
            (
                bestOldest === null ||
                after < bestOldest
            )
        ) {
            bestOldest = after;

            failedPasses = 0;

            console.log(
                "[LOGGER] Older history loaded:",
                after.toString()
            );
        } else {
            failedPasses++;

            console.log(
                `[LOGGER] No older message yet ` +
                `(${failedPasses}/${MAX_FAILED})`
            );

            // Try explicitly forcing top
            scroller.scrollTop = 0;

            scroller.dispatchEvent(
                new Event(
                    "scroll",
                    {
                        bubbles: true
                    }
                )
            );

            await sleep(2000);

            capture();

            const retry =
                oldestVisible();

            if (
                retry !== null &&
                (
                    bestOldest === null ||
                    retry < bestOldest
                )
            ) {
                bestOldest =
                    retry;

                failedPasses = 0;

                console.log(
                    "[LOGGER] Older messages arrived."
                );
            }
        }

        // Helpful diagnostic
        console.log({
            stored:
                stored.size,

            scrollTop:
                scroller.scrollTop,

            previousScrollTop:
                oldScrollTop,

            oldest:
                bestOldest?.toString()
        });
    }

    capture();

    // =========================================================
    // SORT
    // =========================================================

    const sorted =
        [...stored.values()]
            .sort((a, b) => {
                const A =
                    BigInt(a.id);

                const B =
                    BigInt(b.id);

                if (A < B) {
                    return -1;
                }

                if (A > B) {
                    return 1;
                }

                return 0;
            });

    // =========================================================
    // EXPORT
    // =========================================================

    const lines = [];

    lines.push(
        "DISCORD CHANNEL LOG"
    );

    lines.push(
        "==================="
    );

    lines.push("");

    for (const msg of sorted) {
        let date =
            msg.datetime;

        if (msg.datetime) {
            try {
                date =
                    new Date(
                        msg.datetime
                    ).toLocaleString();
            } catch { }
        }

        lines.push(
            `[${date}] ${msg.username}`
        );

        lines.push(
            msg.content
        );

        lines.push(
            `Message ID: ${msg.id}`
        );

        lines.push("");
    }

    const blob =
        new Blob(
            [
                lines.join("\n")
            ],
            {
                type:
                    "text/plain;charset=utf-8"
            }
        );

    const url =
        URL.createObjectURL(
            blob
        );

    const a =
        document.createElement(
            "a"
        );

    a.href = url;

    a.download =
        "discord-channel-log.txt";

    document.body.appendChild(
        a
    );

    a.click();

    a.remove();

    setTimeout(
        () =>
            URL.revokeObjectURL(
                url
            ),
        1000
    );

    console.log(
        `[LOGGER] Finished. Exported ${sorted.length} messages.`
    );

})();