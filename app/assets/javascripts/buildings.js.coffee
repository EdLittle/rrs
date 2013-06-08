jQuery ->
	$("#building-form").validate
		errorClass: "text-error"
		errorElement: "label"
		rules:
			"building[name]": "required"
			"building[street_address]": "required"

jQuery ->
	$("#add-room").validate
		errorClass: "text-error"
		errorElement: "label"
		rules:
			"room[name]": "required"
			"room[capacity]": "number"
			"room[category_id]": "required"