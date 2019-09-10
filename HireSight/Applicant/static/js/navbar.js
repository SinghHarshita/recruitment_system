// Active Link OnClick
$(document).ready(function () {
    $('.nav li a').click(function(e) {
        //console.log("hello")
        $('.nav li.active').removeClass('active');
        var $parent = $(this).parent();
        $parent.addClass('active');
        e.preventDefault();
        var name = $(this).attr("id");
        console.log(name);
        console.log($(this));
       // Activate the right nav-link
        var id = $(".content h1").attr("id");
        // if(id == "notifications"){
        //     if(name == "notifications_nav"){
        //         $parent.addClass('active');        
        //         $('.nav li.active').removeClass('active');
        //     }
        // }
    });
    // temporary handling of nav
    var id = $(".content h1").attr("id");
    if(id == "notifications"){
        $('.nav li.active').removeClass('active');
        $("#notifications_nav").parent().addClass("active");
    }
});
