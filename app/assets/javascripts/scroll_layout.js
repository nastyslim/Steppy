var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-47669324-1']);
_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();


$(document).ready(function() {
    $(".dropdown-toggle").click(function(){
       $(".dropdown-menu").slideToggle( [300], function(){ 
           $(".log").text('Slide Down Transition Complete');
        });
    });
});

      

  /**  
  scroll to element function
**/
  function scrollToElement(selector, time, verticalOffset) {
    time = typeof(time) != 'undefined' ? time : 500;
    verticalOffset = typeof(verticalOffset) != 'undefined' ? verticalOffset : 0;
    element = $(selector);
    offset = element.offset();
    offsetTop = offset.top + verticalOffset;
    $('html, body').animate({
      scrollTop: offsetTop
    }, time);     
  }
    

$(document).ready(function() {
  /* scroll to #navigation */
    
    $("#back_to_top").click(function (e) {
      e.preventDefault();
      scrollToElement(".top_page");
    });
});