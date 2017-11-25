$(document).ready(function(){
    $(".checkbox").click(function(){

      if( $("#private").is(':checked') ){
        $(".collaborators").show();
      }else{
        $(".collaborators").hide();
      }

    });
});
