$(".toggle-form").on("click", function(){
	$(".toggle-form").parent().next().slideToggle();
	return false;
});

$("#building-form").validate({
	errorClass: "text-error",
	errorElement: "label",
	rules: {
		"building[name]": "required",
		"building[street_address]": "required"
	}
});

$("#add-room").validate({
	errorClass: "text-error",
	errorElement: "label",
	rules: {
		"room[name]": "required",
		"room[capacity]": "number",
		"room[category_id]": "required"
	}
});