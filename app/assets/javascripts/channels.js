$.fn.highlight = function() {
  $('.highlight').removeClass("highlight");
  this.parent().addClass("highlight");
}

$(document).ready(function() {
  if (document.location.hash) {
    $(document.location.hash).highlight()
  }

  $('.anchor').click(function() { $(this).highlight() });

  $('.join, .part').hide();

  $('#show_events').change(function (event) {
    var target = $(event.target);
    if (target.is(":checked")) {
      $('.join, .part').show();
    } else {
      $('.join, .part').hide();
    }
  });
})
