(function () {
    var root = null;
    var state = {
        open: false,
        mode: "fine",
        charges: [],
        categories: {},
        categoryOrder: [],
        selected: {},
        search: ""
    };

    function ensureRoot() {
        if (root) {
            return root;
        }
        root = document.getElementById("quickChargesRoot");
        if (!root) {
            return null;
        }
        root.innerHTML = [
            '<div class="qc-modal" role="dialog" aria-modal="true">',
            '  <div class="qc-header">',
            '    <div class="qc-title">',
            '      <span class="qc-title-badge">£</span>',
            '      <span class="qc-title-text">Quick Fine</span>',
            '    </div>',
            '    <button class="qc-close" type="button" aria-label="Close">✕</button>',
            '  </div>',
            '  <div class="qc-search-wrap">',
            '    <label class="qc-search">',
            '      <svg class="qc-search-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="7"/><path d="m21 21-3.5-3.5"/></svg>',
            '      <input type="text" placeholder="Search charges..." autocomplete="off" />',
            '    </label>',
            '  </div>',
            '  <div class="qc-body">',
            '    <div class="qc-pane">',
            '      <div class="qc-pane-header"><span>Available charges</span></div>',
            '      <div class="qc-pane-list" data-list="available"></div>',
            '    </div>',
            '    <div class="qc-pane">',
            '      <div class="qc-pane-header"><span>Selected</span><span class="qc-selected-count">0</span></div>',
            '      <div class="qc-selected-list" data-list="selected"></div>',
            '    </div>',
            '  </div>',
            '  <div class="qc-footer">',
            '    <div class="qc-total">',
            '      <span class="qc-total-label">Total</span>',
            '      <span class="qc-total-value">£0</span>',
            '      <span class="qc-total-sub"></span>',
            '    </div>',
            '    <div class="qc-actions">',
            '      <button class="qc-btn qc-btn-cancel" type="button">Cancel</button>',
            '      <button class="qc-btn qc-btn-primary qc-btn-confirm" type="button" disabled>Issue Fine</button>',
            '    </div>',
            '  </div>',
            '</div>'
        ].join("\n");

        root.querySelector(".qc-close").addEventListener("click", cancel);
        root.querySelector(".qc-btn-cancel").addEventListener("click", cancel);
        root.querySelector(".qc-btn-confirm").addEventListener("click", confirm);
        root.querySelector(".qc-search input").addEventListener("input", function (e) {
            state.search = (e.target.value || "").toLowerCase().trim();
            renderAvailable();
        });
        root.addEventListener("click", function (e) {
            if (e.target === root) {
                cancel();
            }
        });
        document.addEventListener("keydown", onKeyDown);
        return root;
    }

    function onKeyDown(e) {
        if (!state.open) {
            return;
        }
        if (e.key === "Escape") {
            e.preventDefault();
            cancel();
        }
    }

    function formatMoney(n) {
        return "£" + Math.max(0, Math.floor(n)).toLocaleString("en-GB");
    }

    function formatJailTime(minutes) {
        minutes = Math.max(0, Math.floor(minutes));
        if (minutes <= 0) {
            return "0 min";
        }
        var hours = Math.floor(minutes / 60);
        var mins = minutes % 60;
        if (hours <= 0) {
            return mins + " min";
        }
        if (mins <= 0) {
            return hours + "h";
        }
        return hours + "h " + mins + "m";
    }

    function getCharge(id) {
        for (var i = 0; i < state.charges.length; i++) {
            if (state.charges[i].id === id) {
                return state.charges[i];
            }
        }
        return null;
    }

    function getTierValue(charge, tier) {
        if (!charge || !charge.tiers || !charge.tiers[tier - 1]) {
            return { fine: 0, months: 0 };
        }
        return charge.tiers[tier - 1];
    }

    function totals() {
        var fine = 0;
        var months = 0;
        var count = 0;
        Object.keys(state.selected).forEach(function (id) {
            var tier = state.selected[id];
            var charge = getCharge(id);
            var v = getTierValue(charge, tier);
            fine += v.fine || 0;
            months += v.months || 0;
            count += 1;
        });
        return { fine: fine, months: months, count: count };
    }

    function renderAvailable() {
        var list = root.querySelector('[data-list="available"]');
        if (!list) {
            return;
        }
        list.innerHTML = "";

        var search = state.search;
        var rendered = 0;
        var orderedCategoryNames = (state.categoryOrder && state.categoryOrder.length > 0)
            ? state.categoryOrder.slice()
            : Object.keys(state.categories);
        if (orderedCategoryNames.length === 0) {
            orderedCategoryNames = ["All charges"];
            state.categories["All charges"] = state.charges.map(function (c) { return c.id; });
        }

        orderedCategoryNames.forEach(function (catName) {
            var catCharges = (state.categories[catName] || [])
                .map(function (id) { return getCharge(id); })
                .filter(function (c) { return !!c; })
                .filter(function (c) {
                    if (!search) {
                        return true;
                    }
                    return c.name.toLowerCase().indexOf(search) !== -1;
                });

            if (catCharges.length === 0) {
                return;
            }

            var catEl = document.createElement("div");
            catEl.className = "qc-category";
            catEl.textContent = catName;
            list.appendChild(catEl);

            catCharges.forEach(function (charge) {
                var row = document.createElement("div");
                row.className = "qc-charge";
                row.setAttribute("data-id", charge.id);

                var name = document.createElement("div");
                name.className = "qc-charge-name";
                name.textContent = charge.name;
                row.appendChild(name);

                var chips = document.createElement("div");
                chips.className = "qc-tier-chips";
                for (var t = 1; t <= 3; t++) {
                    if (!charge.tiers || !charge.tiers[t - 1]) {
                        continue;
                    }
                    var chip = document.createElement("button");
                    chip.type = "button";
                    chip.className = "qc-tier";
                    chip.textContent = String(t);
                    if (state.selected[charge.id] === t) {
                        chip.classList.add("active");
                    }
                    (function (id, tier) {
                        chip.addEventListener("click", function (e) {
                            e.stopPropagation();
                            toggleTier(id, tier);
                        });
                    })(charge.id, t);
                    chips.appendChild(chip);
                }
                row.appendChild(chips);

                row.addEventListener("click", function () {
                    if (state.selected[charge.id]) {
                        delete state.selected[charge.id];
                    } else {
                        state.selected[charge.id] = 1;
                    }
                    renderAll();
                });

                list.appendChild(row);
                rendered++;
            });
        });

        if (rendered === 0) {
            var empty = document.createElement("div");
            empty.className = "qc-empty";
            empty.textContent = search ? "No charges match your search." : "No charges available.";
            list.appendChild(empty);
        }
    }

    function toggleTier(id, tier) {
        if (state.selected[id] === tier) {
            delete state.selected[id];
        } else {
            state.selected[id] = tier;
        }
        renderAll();
    }

    function renderSelected() {
        var list = root.querySelector('[data-list="selected"]');
        if (!list) {
            return;
        }
        list.innerHTML = "";

        var ids = Object.keys(state.selected);
        if (ids.length === 0) {
            var empty = document.createElement("div");
            empty.className = "qc-empty";
            empty.textContent = "No charges selected.\nClick a charge on the left to add it.";
            empty.style.whiteSpace = "pre-line";
            list.appendChild(empty);
            return;
        }

        ids.forEach(function (id) {
            var charge = getCharge(id);
            if (!charge) {
                return;
            }
            var tier = state.selected[id];
            var v = getTierValue(charge, tier);

            var row = document.createElement("div");
            row.className = "qc-selected";

            var info = document.createElement("div");
            info.className = "qc-selected-info";
            var name = document.createElement("div");
            name.className = "qc-selected-name";
            name.textContent = charge.name;
            info.appendChild(name);

            var bottom = document.createElement("div");
            bottom.className = "qc-selected-bottom";
            var meta = document.createElement("span");
            meta.className = "qc-selected-meta";
            meta.textContent = "Tier " + tier;
            bottom.appendChild(meta);

            var value = document.createElement("span");
            value.className = "qc-selected-value";
            if (state.mode === "jail") {
                value.textContent = formatJailTime(v.months || 0);
            } else {
                value.textContent = formatMoney(v.fine || 0);
            }
            bottom.appendChild(value);
            info.appendChild(bottom);
            row.appendChild(info);

            var remove = document.createElement("button");
            remove.type = "button";
            remove.className = "qc-remove";
            remove.setAttribute("aria-label", "Remove");
            remove.innerHTML = "✕";
            remove.addEventListener("click", function () {
                delete state.selected[id];
                renderAll();
            });
            row.appendChild(remove);

            list.appendChild(row);
        });
    }

    function renderTotals() {
        var t = totals();
        var totalEl = root.querySelector(".qc-total-value");
        var subEl = root.querySelector(".qc-total-sub");
        var countEl = root.querySelector(".qc-selected-count");
        var confirmBtn = root.querySelector(".qc-btn-confirm");

        if (countEl) {
            countEl.textContent = t.count > 0 ? String(t.count) : "0";
        }

        if (state.mode === "jail") {
            totalEl.textContent = formatJailTime(t.months);
            subEl.textContent = t.count > 0 ? t.count + " " + (t.count === 1 ? "charge" : "charges") : "";
            confirmBtn.disabled = !(t.count > 0 && t.months > 0);
        } else {
            totalEl.textContent = formatMoney(t.fine);
            subEl.textContent = t.count > 0 ? t.count + " " + (t.count === 1 ? "charge" : "charges") : "";
            confirmBtn.disabled = !(t.count > 0 && t.fine > 0);
        }
    }

    function renderAll() {
        renderAvailable();
        renderSelected();
        renderTotals();
    }

    function open(payload) {
        if (!ensureRoot()) {
            return;
        }
        state.open = true;
        state.mode = payload.mode === "jail" ? "jail" : "fine";
        state.charges = payload.charges || [];
        state.categories = payload.categories || {};
        state.categoryOrder = payload.categoryOrder || [];
        state.selected = {};
        state.search = "";

        root.classList.toggle("mode-jail", state.mode === "jail");
        root.classList.toggle("mode-fine", state.mode === "fine");

        var titleText = state.mode === "jail" ? "Quick Jail" : "Quick Fine";
        var titleEl = root.querySelector(".qc-title-text");
        if (titleEl) {
            titleEl.textContent = titleText;
        }
        var badgeEl = root.querySelector(".qc-title-badge");
        if (badgeEl) {
            badgeEl.classList.toggle("jail", state.mode === "jail");
            badgeEl.textContent = state.mode === "jail" ? "⛓" : "£";
        }
        var totalLabel = root.querySelector(".qc-total-label");
        if (totalLabel) {
            totalLabel.textContent = state.mode === "jail" ? "Total Jail Time" : "Total Fine";
        }
        var confirmBtn = root.querySelector(".qc-btn-confirm");
        if (confirmBtn) {
            confirmBtn.textContent = state.mode === "jail" ? "Send to Jail" : "Issue Fine";
        }
        var input = root.querySelector(".qc-search input");
        if (input) {
            input.value = "";
            setTimeout(function () { try { input.focus(); } catch (_) {} }, 30);
        }

        root.classList.add("open");
        renderAll();
    }

    function close() {
        if (root) {
            root.classList.remove("open");
        }
        state.open = false;
        state.selected = {};
    }

    function cancel() {
        if (!state.open) {
            return;
        }
        close();
        post("quickChargesClose", {});
    }

    function confirm() {
        if (!state.open) {
            return;
        }
        var t = totals();
        if (t.count <= 0) {
            return;
        }
        var picks = Object.keys(state.selected).map(function (id) {
            return { id: id, tier: state.selected[id] };
        });
        var mode = state.mode;
        close();
        post("quickChargesConfirm", { mode: mode, picks: picks });
    }

    function post(name, body) {
        try {
            var req = new XMLHttpRequest();
            req.open("POST", "http://cmg/" + name, true);
            req.setRequestHeader("Content-Type", "application/json");
            req.send(JSON.stringify(body || {}));
        } catch (_) {}
    }

    window.addEventListener("message", function (event) {
        var data = event.data || {};
        if (data.openQuickCharges === true) {
            open(data);
        } else if (data.closeQuickCharges === true) {
            cancel();
        }
    });
})();
