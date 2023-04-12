$(document).ready(function () {
  $("#user").click(function () {
    $("#login-signup").css("visibility", "visible");
  });
  $("#leave-login-signup").click(function () {
    $("#login-signup").css("visibility", "hidden");
  });
});
