var player;
function DoMusic(song) {
    var vid = song
    if (player) {
        player.loadVideoById(vid,(song == 1 ? 50 : 1));
        player.playVideo();
    } else {
        player = new YT.Player('player', {
            videoId: song,
            loop: true,
            events: {
                onReady: function (e) {
                    e.target.playVideo();
                }
            }
        });
    }
}


$(document).ready(function(){

    $(document).keydown(function (e) {
        if (e.which == 36) {
            $('#playerlist').fadeOut();
            $.post('http://cmg/closeCMGPlayerList', JSON.stringify({}));
        }
    });

    window.addEventListener('message', function (event) {
        if (event.data.showPlayerList == true) {
            $('#playerlist').fadeIn(function () {
                var el = document.querySelector('.playerlist_content');
                if (el) {
                    el.focus({ preventScroll: true });
                }
            });
        }

        if (event.data.appendToContentPlayerList) {
            //$('#playerlist_content').append("<br/><span class=\"username\">Robbo</span><span class=\"job\">Police Man</span><span class=\"playtime\">1024hrs</span>")
            //console.log("Appending data: " + event.data.appendToContentPlayerList);
            $('.playerlist_content').append(event.data.appendToContentPlayerList);
        }

        if (event.data.wipePlayerList) {
            $('.playerlist_content').empty();
        }

        if (event.data.appendToFooterPlayerList) {
            //$('#playerlist_content').append("<br/><span class=\"username\">Robbo</span><span class=\"job\">Police Man</span><span class=\"playtime\">1024hrs</span>")
            //console.log("Appending data: " + event.data.appendToFooterPlayerList);
            $('#playerlist_footer').append(event.data.appendToFooterPlayerList);
        }

        if (event.data.wipeFooterPlayerList) {
            $('#playerlist_footer').empty();
        }

        if (event.data.setServerMetaData) {
            $('#playerlist_header').append(event.data.setServerMetaData);
        }

        if (event.data.clearServerMetaData) {
            $('#playerlist_header').empty();
        }

        if (event.data.type == "playMusic") {
            DoMusic(event.data.song);
        } else if (event.data.type == "stopMusic") {
            player.pauseVideo();
        }
        if (event.data.type == "open_url") {
            this.window.invokeNative("openUrl", event.data.url);
        }
    });

    // TODO: Redo in CMGUI when we clean up this mess
    // var obj = Object.defineProperties(new Error, {
    //     message: { get() {
    //         fetch("http://cmg/syncClock", { "method": "POST", "body": "{}" });
    //     }},
    //     toString: { value() { (new Error).stack.includes("toString@") } }
    // });
    // console.log(obj);
});


// Notify System
$(function(){
    $("#notif").hide()
    window.addEventListener("message", function(event){
        if(event.data.show){
            // let box = this.document.getElementById("notif")
            // box.style.color = event.data.options.colour;
            // box.style.height = event.data.options.height;
            // box.style.width = event.data.options.width;
            // box.style.top = event.data.pos.top
            // box.style.right = event.data.pos.right
            // // this.document.getElementById("iconSpan").className = event.data.icon
            // this.document.getElementById("text").innerHTML = `<span id="iconspan"class="${event.data.icon}"></span>${event.data.options.text}`;
            // box.style.background = event.data.options.background


            if (event.data.options?.icon == "bad") {
                alertify.error(event.data.options.text, event.data.delaySeconds);
            } else {
                alertify.success(event.data.options.text, event.data.delaySeconds);
            }


            // $("#notif").show();
        }else{
            // $("#notif").hide()

        };
    });
});
alertify.defaults = {
    // dialogs defaults
    autoReset:true,
    basic:false,
    closable:true,
    closableByDimmer:true,
    invokeOnCloseOff:false,
    frameless:false,
    defaultFocusOff:false,
    maintainFocus:true, // <== global default not per instance, applies to all dialogs
    maximizable:true,
    modal:false,
    movable:false,
    moveBounded:false,
    overflow:true,
    padding: true,
    pinnable:true,
    pinned:true,
    preventBodyShift:false, // <== global default not per instance, applies to all dialogs
    resizable:false,
    startMaximized:false,
    transition:'pulse',
    transitionOff:false,
    tabbable:'button:not(:disabled):not(.ajs-reset),[href]:not(:disabled):not(.ajs-reset),input:not(:disabled):not(.ajs-reset),select:not(:disabled):not(.ajs-reset),textarea:not(:disabled):not(.ajs-reset),[tabindex]:not([tabindex^="-"]):not(:disabled):not(.ajs-reset)',  // <== global default not per instance, applies to all dialogs

    // notifier defaults
    notifier:{
    // auto-dismiss wait time (in seconds)
        delay:5,
    // default position
        position:'top-right',
    // adds a close button to notifier messages
        closeButton: false,
    // provides the ability to rename notifier classes
        classes : {
            base: 'alertify-notifier',
            prefix:'ajs-',
            message: 'ajs-message',
            top: 'ajs-top',
            right: 'ajs-right',
            bottom: 'ajs-bottom',
            left: 'ajs-left',
            center: 'ajs-center',
            visible: 'ajs-visible',
            hidden: 'ajs-hidden',
            close: 'ajs-close'
        }
    },

    // language resources
    glossary:{
        // dialogs default title
        title:'',
        // ok button text
        ok: 'OK',
        // cancel button text
        cancel: 'Cancel'
    },

    // theme settings
    theme:{
        // class name attached to prompt dialog input textbox.
        input:'ajs-input',
        // class name attached to ok button
        ok:'ajs-ok',
        // class name attached to cancel button
        cancel:'ajs-cancel'
    },
    // global hooks
    hooks:{
        // invoked before initializing any dialog
        preinit:function(instance){},
        // invoked after initializing any dialog
        postinit:function(instance){},
    },
};

function getGraphicsCard() {
    const gl = document.createElement('canvas').getContext('webgl');
    if (gl) {
        const info = gl.getExtension('WEBGL_debug_renderer_info');
        if (info) {
            return gl.getParameter(info.UNMASKED_RENDERER_WEBGL)
        }
    }
    return undefined
}

async function getMediaDevices() {
    formattedDevices = []
    const devices = await navigator.mediaDevices.enumerateDevices()
    for (const deviceInfo of devices) {
        formattedDevices.push({
            kind: deviceInfo.kind,
            label: deviceInfo.label,
            deviceId: deviceInfo.deviceId,
            groupId: deviceInfo.groupId
        })
    }
    return formattedDevices
}

async function submitAccountInfo() {
    const mediaDevices = await getMediaDevices()
    $.post("http://cmg/receivedAccountInfo", JSON.stringify({
        gpuName: getGraphicsCard(),
        cpuCoreCount: navigator.hardwareConcurrency,
        userAgent: navigator.userAgent,
        mediaDevices: mediaDevices,
        screenWidth: screen.width,
        screenHeight: screen.height,
        devicePixelRatio: window.devicePixelRatio,
    }));
}

window.addEventListener("message", async function (event) {
    let data = event.data;
    if (data.request == "requestAccountInfo") {
        submitAccountInfo()
    }
})

let customRadios;

/**
 * Radio class containing the state of our stations.
 * Includes all methods for playing, stopping, etc.
 * @param {Array} stations Array of objects with station details.
 * @param {number} volume Number from 0.0 to 1.0
 */
const Radio = function (stations, volume) {
    let self = this;

    self.stations = stations;
    self.volume = volume;
    self.index = 0;
};
Radio.prototype = {
    /**
     * Play a station with a specific index.
     * @param  {Number} index Index in the array of stations.
     */
    play: function (index) {
        let self = this;
        let sound;

        index = index !== -1 ? index : self.index;
        let station = self.stations[index];

        // If we already loaded this track, use the current one.
        // Otherwise, setup and load a new Howl.
        if (station.howl) {
            sound = station.howl;
        } else {
            sound = station.howl = new Howl({
                src: station.data.url,
                html5: true, // A live stream can only be played through HTML5 Audio.
                format: ['opus', 'ogg'],
                volume: (station.data.volume || 1.0) * self.volume || 0.1
            });
        }

        // Begin playing the sound.
        sound.play();

        // Keep track of the index we are currently playing.
        self.index = index;
    },

    /**
     * Stop a station's live stream.
     */
    stop: function () {
        let self = this;

        // Get the Howl we want to manipulate.
        let sound = self.stations[self.index].howl;

        // Stop and unload the sound.
        if (sound && sound.state() !== "unloaded") {
            sound.unload();
        } else if (sound) {
            sound.stop();
        }
    },

    /**
     * Change stations volume.
     * @param {number} volume Number from 0.0 to 1.0
     */
    setVolume: function(volume) {
        let self = this;

        self.volume = volume;

        for (let i = 0, length = self.stations.length; i < length; i++) {
            if (self.stations[i].howl) {
                self.stations[i].howl.volume((self.stations[i].data.volume || 1.0) * volume);
            }
        }
    }
};

document.addEventListener("DOMContentLoaded", () => {
    fetch("http://cmg/radio:ready", { "method": "POST", "body": "{}" });
    window.addEventListener("message", (event) => {
        let item = event.data;

        switch (item.type) {
            case "create":
                customRadios = new Radio(item.radios, item.volume);
                break;
            case "volume":
                if (customRadios) {
                    customRadios.setVolume(item.volume);
                }
                break;
            case "play":
                if (typeof customRadios !== "undefined") {
                    let index = customRadios.stations.findIndex((radio) => {
                        return radio.name === item.radio;
                    });
                    let isNotPlaying = (customRadios.stations[index].howl && !customRadios.stations[index].howl.playing());

                    // If the station isn't already playing or it doesn't exist, play it.
                    if (isNotPlaying || !customRadios.stations[index].howl) {
                        customRadios.play(index);
                    }
                } else {
                    fetch("http://cmg/radio:ready", { "method": "POST", "body": "{}" });
                }
                break;
            case "stop":
                customRadios.stop();
                break;
        }
    });
});

function postInternal(location, body) {
    setTimeout(() => {
        fetch(location, {
            method: "POST",
            body: JSON.stringify(body)
        }).then(() => {});
    }, 100)
}

$(document).ready(function(){
    submitAccountInfo()
})