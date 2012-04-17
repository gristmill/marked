$(function() {
  prettyPrint();

  $(".contents").keydown(function() {
    $(this).unbind("keydown");
    $(".bar").slideToggle();
  });

  $(".toggle-preview").click(function() {
    $(".preview").toggle();

    if($(this).hasClass("active")) {
      $(this).removeClass("active");
    } else {
      $(this).addClass("active")
    }
  });

  $(".contents").keyup(function() {
    $.post("/preview", { document: $(".contents").val() }, function(data) {
      $(".preview").html(data);
      prettyPrint();
    });
  });

  $("form").submit(function(){
    if (!$(".contents").val()) {
      alert("You must have some content.");
      return false;
    }
  });
});
