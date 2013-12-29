# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "click", ".hide_advanced_link", ->
	$(document).find(".measurements_container").hide()
	$(document).find(".advanced_link").show()
	false

$(document).on "click", ".hide_made_in_link", ->
	$(document).find(".made_in_container").hide()
	$(document).find(".made_in_link").show()
	false

