$("#add-room, #edit-room").validate({
	errorClass: "text-error",
	errorElement: "label",
	rules: {
		"room[name]": "required",
		"room[capacity]": "number",
		"room[category_id]": "required"
	}
});