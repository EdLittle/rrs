$("#new_user").validate({
  errorClass: "text-error",
  errorElement: "label",
  errorPlacement: function(error, element){
    error.insertAfter(element.next());
    element.next().html("<i class='icon-remove text-error'></i>");
  },
  success: function(label){
    label.siblings(".icon-container").html("<i class='icon-ok text-success'></i>")
  },
  rules: {
    "user[username]": { 
      required: true, 
      minlength: 3, 
      maxlength: 25,
      //usernameMustNotBeTaken: true,
      remote: "/users/username_taken"//.join('')
    },
    "user[last_name]": {
      required: true
    },
    "user[email]": { 
      required: true, 
      email: true,
      remote: "users/email_taken"
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
  },
  messages:{
    "user[username]": {
      remote: "This username is already taken."
    },
    "user[email]": {
      remote: "This email is already registered."
    }
  },
  onKeyup: false,
  onBlur: true
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