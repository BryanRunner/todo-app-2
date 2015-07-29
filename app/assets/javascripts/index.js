$(function(){

  $('#new-item').click(function() {
    $('#todo-wrap').css({left: "-100%"});
  });

  $('.show-link').click(function() {
    $('#todo-wrap').css({left: "-100%"});
  });

  $('.content').on('click', '.btn-back', function() {
    $('#todo-wrap').css({left: "0%"});
  });

});
