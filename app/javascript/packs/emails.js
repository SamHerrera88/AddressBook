$(document).on('turbolinks:load', function() {
    return $("#emails").on("ajax:success", function(event) {
      var data, ref, status, xhr;
      ref = event.detail, data = ref[0], status = ref[1], xhr = ref[2];
      return $("#emails").replaceWith(xhr.responseText);
    }).on("ajax:error", function(event) {
      return $("#emails").replaceWith("<p>ERROR</p>");
    });
  });