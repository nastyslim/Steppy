$(document).ready(function() {

  $("#more").click(function(){
    $(".addstep").slideDown( 'slow', function(){ 
      $(".log").text('Slide Down Transition Complete');
    });
  });
});
$(".categories").change(function(){

var target = $(this).val();


if(target == "Career")
    $(".subcat").css( "display","inherit" ),
    $(".subcat2, .subcat3, .subcat4").css( "display","none" );
else if(target == "Life Style")
    $(".subcat2").css( "display","inherit" ),
    $(".subcat, .subcat3, .subcat4").css( "display","none" );
else if(target == "Do It Yourself")
    $(".subcat3").css( "display","inherit" ),
    $(".subcat2, .subcat, .subcat4").css( "display","none" );
else if (target == "Other")
    $(".subcat4").css( "display","inherit" ),
   $(".subcat2, .subcat3, .subcat").css( "display","none" );
});