// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery

$(function() {

    $('#side-menu').metisMenu();

});

//App functions
var app = {
    init: function(){
        this.fixSelects();
        this.validaCiclos();
        $(function () {
          $('[data-toggle="popover"]').popover()
        })
    },
    fixSelects: function(){
        $('.edit-form select').addClass('form-control');
    },
    validaCiclos: function(){
        $('#ciclos').bind('change', function(event){
            if($(this).val() > 4 || $(this).val() < 1 ){
                $(this).val(1);
            }
        });
    }
}

//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function() {
    $(window).bind("load", function() {
        app.init();
    });
    $(window).bind("load resize", function() {
        topOffset = 100;
        width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
        if (width < 768) {
            $('div.navbar-collapse').addClass('collapse')
            topOffset = 100; // 2-row-menu
        } else {
            $('div.navbar-collapse').removeClass('collapse')
        }

        height = (this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height;
        height = height - topOffset;
        if (height < 1) height = 1;
        if (height > topOffset) {
            $("#page-wrapper").css("min-height", (height) + "px");
        }
    });
})
