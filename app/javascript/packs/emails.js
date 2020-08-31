$(document).on('turbolinks:load', function() {
    return $("#email").on("ajax:success", function(event) {
      var data, ref, status, xhr;
      ref = event.detail, data = ref[0], status = ref[1], xhr = ref[2];
      return $("#email").replaceWith(xhr.responseText);
    }).on("ajax:error", function(event) {
      return $("#email").replaceWith("<p>ERROR</p>");
    });
  });