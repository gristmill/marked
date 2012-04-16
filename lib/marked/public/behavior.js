$(function() {
  prettyPrint();

  $(".contents").keydown(function() {
    $(this).unbind("keydown");
    $(".bar").slideToggle();
  });

  $(".toggle-preview").click(function() {
    $(".preview").fadeToggle();
  });

  $(".contents").keyup(function() {
    $.post("/preview", { document: $(".contents").val() }, function(data) {
      $(".preview").html(data);
      prettyPrint();
    });
  });
});
