$(<submitbutton>).click(function(event){
    event.preventDefault();
    $('#page').animate({opacity:0},400, function(){
        $('form').submit();
    });
});
