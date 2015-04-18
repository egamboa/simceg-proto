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
        this.initCalendar();
        $(function () {
          $('[data-toggle="popover"]').popover()
        });
        if($('#mensajes-on').size() > 0){
            this.initMensajes();
        }
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
    },
    initCalendar: function(){
        var eventDataParsed, refactorEventdata;
        if(typeof eventData != "undefined" && eventData){
            eventDataParsed = JSON.parse(eventData.replace(/&quot;/g,'"'));
            refactorEventdata = $.map(eventDataParsed, function(value, index){
                return {
                    title: value.titulo,
                    start: value.tiempoInicio,
                    end: value.tiempoFinal,
                    id: value.id,
                    url: '/simceg/evento/show/'+value.id,
                    allDay: value.allDay
                };
            });
        }
        if(typeof $.fullCalendar != "undefined"){
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                lang: 'es',
                timezone: 'America/Costa_Rica',
                buttonIcons: true, // show the prev/next text
                editable: false,
                eventLimit: true, // allow "more" link when too many events
                events: refactorEventdata
            });
        }
    },
    initMensajes: function(){
        var emisores = _.map(mensajesParsed, function(mensaje){
            return mensaje.emisor.id
        });
        var receptores = _.map(mensajesParsed, function(mensaje){
            return mensaje.receptor.id
        });
        var conversaciones = _.union(emisores, receptores);
        conversaciones = _.reject(conversaciones, function(chat){ return chat == currentUserId });
        this.initChats(conversaciones);
    },
    initChats: function(chats){
        var chatsReady, self = this;
        $.ajax({
          url: $('#getChats').attr('href'),
          data: {
                  chats: JSON.stringify(chats)
                }
        }).done(function( data ){
            self.triggerTemplate('#templateChat', data, '.chat-list');
            $('.chat-list .chat').first().addClass('active');
            self.chatsEvents();
            self.initCurrentChat($('.chat-list .chat').first().data('id'));
        }).fail(function(data) {
            console.log( data.responseText );
        }).always(function() {
            $('.chats-holder li.spinner').hide();
        });
    },
    chatsEvents: function(){
        var self = this;
        $('.chat-list .chat').bind('click', function(){
            $('.chat-list .chat').removeClass('active');
            $(this).addClass('active')
            self.initCurrentChat($(this).data('id'));
        });
    },
    initCurrentChat: function(chat){
        $('#mensajes-on .panel-footer').removeClass('hidden');
        var mensajes = _.compact(_.map(mensajesParsed, function(mensaje){
            if(mensaje.emisor.id == chat){
                mensaje.side = false
                mensaje.color = "alert-info"
                mensaje.nombre = $('.chat-list .chat.active h5').text();
                return mensaje;
            }else if(mensaje.receptor.id == chat){
                mensaje.side = true;
                mensaje.color = "alert-success"
                mensaje.nombre = 'Yo';
                return mensaje;
            }
        }));
        this.triggerTemplate('#templateMensaje', mensajes, '.mensajes-list');
    },
    triggerTemplate: function(id, data, classTo){
        var template = $(id).html();
        Mustache.parse(template);   // optional, speeds up future uses
        var rendered = Mustache.render(template, data);
        $(classTo).html(rendered);        
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
