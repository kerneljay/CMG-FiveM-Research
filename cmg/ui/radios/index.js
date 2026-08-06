window.addEventListener("message", function(event) {
    var item = event.data;

    if (item.radioTransparentBackground) {
        var radioRoot = document.getElementById("radio-list");
        if (radioRoot) {
            if (item.enabled) {
                radioRoot.classList.add("radio-list-container--transparent-bg");
            } else {
                radioRoot.classList.remove("radio-list-container--transparent-bg");
            }
        }
    }

    if (item.radioHeader) {
        let radioListElem = document.getElementById("radio-list");
        let listHeader = document.createElement("div");
        listHeader.id = "radio-list-header";
        listHeader.className = "radio-list-header";
        listHeader.textContent = item.name + " Radio";
        radioListElem.appendChild(listHeader);
    }

    if (item.radioHide) {
        let radioListElem = document.getElementById("radio-list");
        if (radioListElem) {
            radioListElem.style.visibility = item.visible ? "visible" : "hidden"
        }
    }

    if (item.radioAdd) {
        let listItem = document.createElement("div");
        listItem.id = "radio-list-item-" + item.playerSrc;
        listItem.className = "radio-list-item";
        listItem.setAttribute("sortOrder", item.sortOrder)
        let nameSpan = document.createElement("span");
        nameSpan.className = "radio-item-name";
        nameSpan.textContent = item.name;
        let statusSpan = document.createElement("span");
        statusSpan.className = "radio-item-status radio-item-status--active";
        statusSpan.setAttribute("aria-label", "unmuted");
        listItem.appendChild(nameSpan);
        listItem.appendChild(statusSpan);
        let radioListElem = document.getElementById("radio-list");
        var didInsert = false;
        for (var i = 0; i < radioListElem.children.length; i++) {
            var child = radioListElem.children[i];
            if (child.getAttribute("sortOrder") > item.sortOrder) {
                radioListElem.insertBefore(listItem, child)
                didInsert = true
                break;
            }
        }
        if (!didInsert) {
            radioListElem.appendChild(listItem);
        }
    }

    if (item.radioTalking) {
        let listItem = document.getElementById("radio-list-item-" + item.playerSrc)
        if (!listItem) {
            return;
        }
        if (item.isTalking) {
            listItem.classList.add("talking")
        } else {
            listItem.classList.remove("talking")
        }
    }

    if (item.radioRemove) {
        let radioListElem = document.getElementById("radio-list");
        let listItem = document.getElementById("radio-list-item-" + item.playerSrc)
        radioListElem.removeChild(listItem);
    }

    if (item.radioClear) {
        let radioListElem = document.getElementById("radio-list");
        while (radioListElem.firstChild) {
            radioListElem.removeChild(radioListElem.firstChild);
        }
    }

    if (item.radioVisibility) {
        if (item.isVisible) {
            document.getElementById("radio-list").style.display = 'block';
        } else {
            document.getElementById("radio-list").style.display = 'none';
        }
    }

    if (item.radioMuted) {
        let listItem = document.getElementById("radio-list-item-" + item.playerSrc)
        if (!listItem) {
            return;
        }
        let statusEl = listItem.querySelector(".radio-item-status");
        if (!statusEl) {
            return;
        }
        if (item.isMuted) {
            statusEl.classList.remove("radio-item-status--active");
            statusEl.classList.add("radio-item-status--muted");
            statusEl.setAttribute("aria-label", "muted");
        } else {
            statusEl.classList.add("radio-item-status--active");
            statusEl.classList.remove("radio-item-status--muted");
            statusEl.setAttribute("aria-label", "unmuted");
        }
    }
});
