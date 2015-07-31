$(function(){

  var todoWrap = $('#todo-wrap'),
      content = $('.content');

  $('#new-item').click(function() {
    $(todoWrap).css({left: "-100%"});
  });

  $('#todo-list').on('click', '.show-link', function() {
    $(todoWrap).css({left: "-100%"});
  });

  $(content).on('click', '.btn-back', function() {
    $(todoWrap).css({left: "0%"});
  });

});
