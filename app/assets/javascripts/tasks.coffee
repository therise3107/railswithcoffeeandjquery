# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery.fn.submitOnCheck = ->
	this.find("input[type=submit]").remove()
	this.find("input[type=checkbox]").click ->
		$(this).parent('form').submit()	
	

$(document).on "page:change", ->
	$("#notice").fadeOut("3000")
	$(".new_task input[type=submit]").click ->
		$(".modal-footer button").click()
	$(".edit_task").submitOnCheck()	