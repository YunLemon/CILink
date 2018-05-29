console.log("window_pop.js loaded");

var ready;
ready = function() {

  $("#test").on("click", function(event) {
    alert("link clicked");
  });

};

$(document).ready(ready);
$(document).on("page:load", ready);