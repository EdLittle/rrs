
$("#user_username").on("blur", function(){
  var username = $("#user_username").val();
  $.get("/users/username_taken?username=" + username, function(data){
    if(data){
      $("#icon-container").html("<i class='icon-remove text-error'></i>");
      }
    else{
      $("#icon-container").html("<i class='icon-ok text-success'></i>");
    }
  });
});
