$(document).ready ->

$("#building-form").validate
	errorClass: "field_with_errors"
	errorElement: "label"
	rules:
		"building[name]": "required"

