$(document).ready(function(){
    //Checks if private box is checked. If it is potential collaborators are shown.
    var addcollaborators = function () {
        if( $("#private").is(':checked') ){
          $(".collaborators").show();
        }else{
          $(".collaborators").hide();
        }
    }
    addcollaborators();

    $(".checkbox").click(function(){
      addcollaborators();
    });
});
