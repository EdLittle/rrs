
$.validator.addMethod("usernameMustNotBeTaken", function(value, element){
  var username = value;
  var is_taken = $.get("/users/username_taken?username=" + username, function(data){
     
    });
  
  return is_taken;
},  "Username is already taken");


$.validator.addMethod("emailMustNotBeTaken", function(value, element){
  var email = value;
  //var is_taken;
  var is_taken  = $.get("/users/email_taken?email=" + email, function(data){
    is_taken = Boolean(data);
    return is_taken;
  });
  alert(is_taken);
  return is_taken;
}, "Email is already taken.");


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
      usernameMustNotBeTaken: true
    },
    "user[last_name]": {
      required: true
    },
    "user[email]": { 
      required: true, 
      email: true,
      emailMustNotBeTaken: true
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