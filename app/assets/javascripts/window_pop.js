$(function(){
  $(document).on("mouseover", ".commit-message", function(){
    $(this).attr({"data-content" : $(this).text()})
    $(this).popover("show");
  }); 
  $(document).on("mouseout", ".commit-message", function(){
    $(this).popover("hide");
  }); 
});
$(document).ready(function() {
  //var stream = new AnsiStream()

  //onStreamText: (text) ->
  //  $('.code').append(stream.process(text))
});


$(document).ready(function() {
  $("#markItUp").markItUp(mySettings);
});