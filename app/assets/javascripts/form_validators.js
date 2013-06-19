$("#new_user").validate({
  errorClass: "text-error",
  errorElement: "label",
  rules: {
    "user[username]": { 
      required: true, 
      minlength: 3, 
      maxlength: 25 
    },
    "user[last_name]": {
      required: true
    },
    "user[email]": { 
      required: true, 
      email: true
    },
    "user[password]": { 
      required: true, 
      minlength: 6
    },
    "user[password_confirmation]": { 
      minlength: 6, 
      equalTo: "#user_password", 
      required: true 
    }
  }
});

$("#building-form").validate({
  errorClass: "text-error",
  errorElement: "label",
  rules: {
    "building[name]": "required",
    "building[street_address]": "required"
  }
});

$("#new_room, #edit-room").validate({
  errorClass: "text-error",
  errorElement: "label",
  rules: {
    "room[name]": "required",
    "room[capacity]": "number",
    "room[category_id]": "required"
  }
});