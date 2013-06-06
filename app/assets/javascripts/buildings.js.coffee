$(document).ready ->
	$("#building-form").validate
		errorClass: "text-error"
		errorElement: "label"
		rules:
			"building[name]": "required"

