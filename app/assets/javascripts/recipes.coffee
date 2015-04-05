# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on "page:change", ->
#jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('.ingredient').hide()
    event.preventDefault

  $('form').on 'click', '#add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g' )
    $(this).before($(this).data('fields').replace(regexp, time ))
    event.preventDefault
    console.log('add ingredient')

  $('form').on 'input', '.ingredient-component', (event) ->
    #console.log( $(this).closest('.ingredient').get(0) == $(".ingredient").last().get(0) )
    if $(this).closest('.ingredient').get(0) == $(".ingredient").last().get(0)
      time = new Date().getTime()
      regexp = new RegExp($('#add_fields').data('id'), 'g' )
      $(this).closest('.ingredient').after($('#add_fields').data('fields').replace(regexp, time ))
      event.preventDefault
      console.log('add ingredient')

