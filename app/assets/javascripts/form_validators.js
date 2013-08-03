$("#new_user").validate({
  errorClass: "text-error",
  validClass: "text-success",
  errorElement: "label",
  errorPlacement: function(error, element){
    error.insertAfter(element.next());
  },
  rules: {
    "user[username]": { 
      required: true, 
      minlength: 3, 
      maxlength: 25,
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
  success: function(label){
    label.siblings("i").removeClass();
    label.siblings("i").addClass("icon-ok text-success");
  },
  showErrors: function(errorMap, errorList){
    $.each(errorList, function(idx, list_item){
      var element = $(list_item.element).siblings("i");
      $(element).removeClass();
      $(element).addClass("icon-remove text-error");
    });
    this.defaultShowErrors();
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