window.addEventListener("load", function () {
	//TODO: Uncomment & add a CMG.isDevMode check.
	// errdiv = document.createElement("div");
	// if (true) { //debug
	// 	errdiv.classList.add("console");
	// 	document.body.appendChild(errdiv);
	// 	window.onerror = function (errorMsg, url, lineNumber, column, errorObj) {
	// 		errdiv.innerHTML += '<br />Error: ' + errorMsg + ' Script: ' + url + ' Line: ' + lineNumber
	// 			+ ' Column: ' + column + ' StackTrace: ' + errorObj;
	// 	}
	// }

	var wprompt = new WPrompt();
	var requestmgr = new RequestManager();
	var announcemgr = new AnnounceManager();

	requestmgr.onResponse = function (id, ok) {
		$.post("http://cmg/request", JSON.stringify({act: "response", id: id, ok: ok}));
	}
	wprompt.onClose = function (type) {
		$.post("http://cmg/prompt", JSON.stringify({act: "close", result: wprompt.result, type: type}));
	}

	var divs = {}
	let currentTTS = null;

	//MESSAGES
	window.addEventListener("message", function (evt) { //lua actions
		var data = evt.data;

		if (data.type === 'playTTS' && data.dataUrl) {
        try {
          if (currentTTS) { currentTTS.pause(); currentTTS.src = ""; }
          currentTTS = new Audio(data.dataUrl); // data:audio/mpeg;base64,...
          currentTTS.oncanplay = () => currentTTS.play().catch(console.error);
        //   currentTTS.onplay = () => console.log('🔊 TTS Speaking…');
        //   currentTTS.onerror = () => console.error('Audio error', currentTTS.error);
        } catch (err) {
          console.error('Audio play failed', err);
        }
      }

		//PROMPT
		if (data.act == "open_prompt") {
			wprompt.open(data.title, data.text, data.type);
		}
		else if (data.act == "close_prompt") {
			wprompt.close();
		}
		// REQUEST
		else if (data.act == "request") {
			requestmgr.addRequest(data.id, data.text, data.time, data.acceptKey, data.rejectKey);
		}
		// ANNOUNCE
		else if (data.act == "announce") {
			announcemgr.addAnnounce(data.background, data.content);
		}
		// DIV
		else if (data.act == "set_div") {
			var div = divs[data.name];
			if (div)
				div.removeDom();

			divs[data.name] = new Div(data)
			divs[data.name].addDom();
		}
		else if (data.act == "set_div_css") {
			var div = divs[data.name];
			if (div)
				div.setCss(data.css);
		}
		else if (data.act == "set_div_content") {
			var div = divs[data.name];
			if (div)
				div.setContent(data.content);
		}
		else if (data.act == "div_execjs") {
			var div = divs[data.name];
			if (div)
				div.executeJS(data.js);
		}
		else if (data.act == "remove_div") {
			var div = divs[data.name];
			if (div)
				div.removeDom();

			delete divs[data.name];
		}
		// CONTROLS
		else if (data.act == "event") { //EVENTS
			if (data.event == "CANCEL") {
				if (wprompt.opened)
					wprompt.close();
			}
			else if (data.event == "requestAccept") {
				requestmgr.respond(true);
			}
			else if (data.event == "requestDeny") {
				requestmgr.respond(false);
			}
		}
		// CLIPBOARD
		else if (data.act == "copy_clipboard") {
			var copyFrom = $("<textarea/>");
			copyFrom.text(data.text);
			$("body").append(copyFrom);
			copyFrom.select();
			this.document.execCommand("copy");
			copyFrom.remove()
		}
	});
});