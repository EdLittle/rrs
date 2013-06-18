$("#new_user").validate({
  errorClass: "text-error",
  errorElement: "label",
  rules: {
    "user[username]": { required: true, minLength: 3, maxLength: 25 },
    "user[last_name": "required",
    "user[email]": { required: true, }
    "user[password]": { required: true, minLength: 6},
    "user[password_confirmation]": { minLength: 6, equalTo: "#user_password", required: true }
  }
});