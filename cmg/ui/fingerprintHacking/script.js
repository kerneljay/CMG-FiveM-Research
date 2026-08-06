$('document').ready(function(){
  $gif = $('img').first();
});

window.addEventListener("message", (event) => {
  if (event.data.type === "intro") {
    intro();
  } else if (event.data.type === "success") {
    success();
  } else if (event.data.type == "fail") {
    fail();
  }
});

function intro() {
  $gif.attr("src", "https://cdn.cmgstudios.net/content/fivem/jewlery/intro.gif");
  setTimeout(function() {
    $gif.attr('src', "fingerprintHacking/blank.webp");
  }, 3500)
};

function success() {
  $gif.attr("src", "https://cdn.cmgstudios.net/content/fivem/jewlery/success.gif");
  setTimeout(function() {
    $gif.attr('src', "fingerprintHacking/blank.webp");
  }, 3000)
};

function fail() {
  $gif.attr("src", "https://cdn.cmgstudios.net/content/fivem/jewlery/fail.gif");
  setTimeout(function() {
    $gif.attr('src', "fingerprintHacking/blank.webp");
  }, 3000)
};