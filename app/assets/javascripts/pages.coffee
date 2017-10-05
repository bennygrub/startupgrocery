# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  lightbox.option
    'resizeDuration': 200
    'wrapAround': true
    'albumLabel': ''
  disappear = () ->
    $(".alert").fadeOut(1000)

  if $(".alert").length > 0
    setTimeout disappear, 1000

  $(".get-it-now").click ->
    ga 'send', 'event',
      eventCategory: 'Outbound Buy Link'
      eventAction: 'click'
      eventLabel: $(this).data("link")