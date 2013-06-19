(function() {

  $(document).on('click', 'a[data-set-level]', function(event) {
    var base_url, level, logger, target;
    logger = $(this).data('logger');
    level = $(this).data('set-level');
    target = $(this).parent();
    target.hide();
    base_url = $('meta[data-base-url]').data('base-url');
    return $.ajax("" + base_url + "set", {
      type: 'POST',
      dataType: 'json',
      data: {
        logger: logger,
        level: level
      },
      success: function(data, status, request) {
        target.replaceWith(data.html);
        return window.location.reload(true);
      },
      error: function(request, status, error) {
        return alert(":(");
      }
    });
  });

}).call(this);
