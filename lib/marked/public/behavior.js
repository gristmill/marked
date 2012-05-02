$(function() {
  prettyPrint();

  $(".contents").keydown(function() {
    $(this).unbind("keydown");
    $(".bar").slideToggle();
  });

  $(".toggle-preview").click(function() {
    window.open("/preview?" + $(".contents").serialize(), "Marked | Preview");
  });

  $("form").submit(function(){
    if (!$(".contents").val()) {
      alert("You must have some content.");
      return false;
    }
  });
});
