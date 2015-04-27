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
        this.validaNotas();
        this.collapseMenus();
        this.initCalendar();
        $("select[multiple]").bsmSelect();
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
    validaNotas: function(){
        $('#tabla-calificacion .input-holder input').keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                 // Allow: Ctrl+A
                (e.keyCode == 65 && e.ctrlKey === true) || 
                 // Allow: home, end, left, right, down, up
                (e.keyCode >= 35 && e.keyCode <= 40)) {
                     // let it happen, don't do anything
                    return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
        }).keyup(function (e) {
            if($(this).val() > 100 || $(this).val() < 0 ){
                $(this).val('');
            }
        });;
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
        if(mensajesParsed.length == 0){
            this.initEmptyChats();
            return;
        }
        var emisores = _.map(mensajesParsed, function(mensaje){
            return mensaje.emisor.id
        });
        var receptores = _.map(mensajesParsed, function(mensaje){
            return mensaje.receptor.id
        });
        var conversaciones = _.union(emisores, receptores);
        conversaciones = _.reject(conversaciones, function(chat){ return chat == currentUserId });
        this.initChats(conversaciones);
        $('#mensaje').css('overflow', 'hidden').autogrow();
    },
    initEmptyChats: function(){
        this.triggerTemplate('#emptyChats', {mensaje: 'No hay chats.'}, '.chat-list');
        this.triggerTemplate('#emptyChats', {mensaje: 'No hay mensajes.'}, '.mensajes-list');
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
            self.chatsEvents();
            self.initNotifications(data);
            if(currentChat > 0){
                $('.chat-list .chat[data-id="' + currentChat + '"]').addClass('active');
                self.initCurrentChat($('.chat-list .chat[data-id="' + currentChat + '"]').data('id'));
            }else{
                $('.chat-list .chat').first().addClass('active');
                self.initCurrentChat($('.chat-list .chat').first().data('id'));
            }
        }).fail(function(data) {
            console.log( data.responseText );
        }).always(function() {
            $('.chats-holder li.spinner').hide();
        });
    },
    initNotifications: function(chats){
        var notifications = [], self = this;
        _.each(chats, function(chat){
            notifications.push({
                'chat': chat.id,
                'mensajes': _.filter(mensajesParsed, function(mensaje){
                    return mensaje.visto == false && mensaje.emisor.id == chat.id;
                })
            });
        });
        _.each(notifications, function(chat){
            if(chat.mensajes.length > 0){
                self.triggerTemplate('#templateNotificacion', chat.mensajes.length, '.chat-list [data-id="' + chat.chat + '"] .notify-holder');
            }
        });
    },
    chatsEvents: function(){
        var self = this;
        $('.chat-list .chat').bind('click', function(){
            if(!$(this).hasClass('active')){
                $('.chat-list .chat').removeClass('active');
                $(this).addClass('active');
                self.initCurrentChat($(this).data('id'));
            }
            return false;
        });
    },
    initCurrentChat: function(chat){
        $('#mensajes-on .panel-footer').removeClass('hidden');
        var mensajes = mensajesParsed;
        mensajes = _.compact(_.map(mensajes, function(msg){
            if(msg.emisor.id == chat){
                msg.side = false
                msg.color = "alert-info"
                msg.nombre = $('.chat-list .chat.active h5').text();
                return msg;
            }else if(msg.receptor.id == chat){
                msg.side = true;
                msg.color = "alert-success"
                msg.nombre = 'Yo';
                return msg;
            }
        }));
        this.checkSeenMessage(mensajes, chat);
        this.triggerTemplate('#templateMensaje', mensajes, '.mensajes-list');
        $('.mensajes-list').scrollTop($('.mensajes-list')[0].scrollHeight);
        $('.nombre-chat-activo').html($('.chat-list .chat.active h5').text());
        $('#send-message').find('select').find('option').removeAttr('selected');
        $('#send-message').find('select').find('option[value="' + chat + '"]').attr('selected', 'selected');
    },
    checkSeenMessage: function(mensajes, chat){
        var seen = _.map(_.filter(mensajes, function(mensaje){
            return mensaje.visto == false && mensaje.emisor.id == chat;
        }), function(mensaje){
            return mensaje.id;
        });
        $.ajax({
          url: $('#seenMessages').attr('href'),
          data: {
                  mensajes: JSON.stringify(seen)
                }
        }).done(function( data ){
            $('.chat-list [data-id="' + chat + '"] .notify-holder .notification').fadeOut();
        }).fail(function(data) {
            console.log( data.responseText );
        }).always(function() {
        });
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
