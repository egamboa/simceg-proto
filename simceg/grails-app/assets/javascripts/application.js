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
        this.collapseMenus();
        $(function () {
          $('[data-toggle="popover"]').popover()
        })
    },
    fixSelects: function(){
        $('.edit-form select').addClass('form-control');
        $('.edit-form .date select').wrap( "<div class='select-style'></div>" );
    },
    validaCiclos: function(){
        $('#ciclos').bind('change', function(event){
            if($(this).val() > 4 || $(this).val() < 1 ){
                $(this).val(1);
            }
        });
    },
    collapseMenus: function(){
        $('.navbar-collapse').on('show.bs.collapse', function (event) {
            $(this).parent().toggleClass('open');
            var actives = $('body').find('.navbar-collapse.in'),
                hasData;
            if (actives && actives.length) {
                hasData = actives.data('collapse');
                if (hasData && hasData.transitioning) return
                if($(event.target).hasClass('navbar-collapse') ){
                    actives.collapse('hide')
                    hasData || actives.data('collapse', null)
                }
            }
        });
        $('.navbar-collapse').on('hide.bs.collapse', function (event) {
            $(this).parent().toggleClass('open');
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
        if (width < 991) {
            $('div.navbar-collapse').addClass('collapse')
            topOffset = 100; // 2-row-menu
        } else {
            $('div.navbar-collapse').removeClass('collapse')
        }
        topOffset = 90;
        height = (this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height;
        height = height - topOffset;
        if (height < 1) height = 1;
        if (height > topOffset) {
            $("#page-wrapper").css("min-height", (height) + "px");
        }
    });
})
