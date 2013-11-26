# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#search').on 'click', ->
    title = $('#movie_search').val()
    $.ajax(
      type: "GET"
      dataType: "jsonp"
      url: 'http://www.omdbapi.com?s=' + title
    ).done (data) ->
      console.log data
      $('.movies').append JST["templates/movies"](movies : data["Search"] || [])
