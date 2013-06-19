$(document).on 'click', 'a[data-set-level]', (event) ->

  logger = $(this).data('logger')
  level  = $(this).data('set-level')
  target = $(this).parent()

  target.hide()
  base_url = $('meta[data-base-url]').data('base-url')

  $.ajax "#{base_url}set",
    type: 'POST'
    dataType: 'json',
    data: { logger: logger, level: level },

    success: (data, status, request) ->
      target.replaceWith data.html
      window.location.reload(true) 

    error: (request, status, error) ->
      alert ":("
