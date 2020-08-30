$(document).on('turbolinks:load', function() {
    return $("#addresses").on("ajax:success", function(event) {
      var data, ref, status, xhr;
      ref = event.detail, data = ref[0], status = ref[1], xhr = ref[2];
      return $("#addresses").replaceWith(xhr.responseText);
    }).on("ajax:error", function(event) {
      return $("#addresses").replaceWith("<p>ERROR</p>");
    });
  });