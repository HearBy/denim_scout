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

$(document).on "click", ".hide_fabric_origin_link", ->
	$(document).find(".fabric_origin_container").hide()
	$(document).find(".fabric_origin_link").show()
	false

$(document).on "click", ".hide_color_link", ->
	$(document).find(".color_container").hide()
	$(document).find(".color_link").show()
	false

$(document).on "click", ".hide_brand_link", ->
	$(document).find(".brand_container").hide()
	$(document).find(".brand_link").show()
	false


