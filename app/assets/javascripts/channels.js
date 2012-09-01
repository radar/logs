$.fn.highlight = function() {
  $('.highlight').removeClass("highlight");
  this.parent().addClass("highlight");
}

$(document).ready(function() {
  if (document.location.hash) {
    $(document.location.hash).highlight()
  }

  $('.anchor').click(function() { $(this).highlight() });
})
