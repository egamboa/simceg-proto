// JavaScript Document

var ManagementApp = null;

(function($) {

ManagementApp = {
	initConfig : function(){
		
	},	
	selectors : {
		//Selectors
		'navigationTabs' : '.nav-tabs a',
		'asideHeight' : 'aside .tab-content',
		'searchInput' : '#search-input',
		'employeeList' : '.employee-list',
		'asideLeft' : 'aside',
		'searchList' : '.list-search a',
		'searchListScroll' : '.list-search'
	},
	overlay : {
		config : {
			'addEmployeeWidth' : 400,	
		}
	},
	aside : {
		config : { //Config aside section
			'minHeight' : 300,
			'availableTags' : []
		},
		
		searchEmployees : function () {
			// Retrieve the input field text and reset the count to zero
			var filter = $(ManagementApp.selectors.searchInput).val();
			// Loop through the comment list
			$(ManagementApp.selectors.employeeList).each(function(){
				// If the list item does not contain the text phrase fade it out
				if ($(this).text().search(new RegExp(filter, "i")) < 0) {
					$(this).parent().fadeOut();
				// Show the list item if the phrase matches 	
				} else {
					$(this).parent().show();
					
				}
			});
		},
	
	},
	
};

function updatingSlider(event){
	var value = $('#noteSlider').data('slider').getValue();
	if(value >= 0 && value <= 69){
		$('#noteScored').attr('class', 'alert alert-danger');
		$('.scoreRange').addClass('hidden').first().removeClass('hidden');
	}
	if(value >= 70 && value <= 79){
		$('#noteScored').attr('class', 'alert alert-warning');
		$('.scoreRange').addClass('hidden').first().next().removeClass('hidden');
	}
	if(value >= 80 && value <= 89){
		$('#noteScored').attr('class', 'alert alert-info');
		$('.scoreRange').addClass('hidden').last().prev().removeClass('hidden');
	}
	if(value >= 90 && value <= 100){
		$('#noteScored').attr('class', 'alert alert-success');
		$('.scoreRange').addClass('hidden').last().removeClass('hidden');
	}
}


$(document).on('change', '.btn-file :file', function() {
	var input = $(this),
	numFiles = input.get(0).files ? input.get(0).files.length : 1,
	label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
	input.trigger('fileselect', [numFiles, label]);
});

$(document).ready(function() {
	
	var widthbox = 0,
		heightbox = 0,
		countFields = 1;
	
	ManagementApp.initConfig();

	if($('#noteSlider').size() > 0){
		$('#noteSlider').slider().on('slide', updatingSlider);
		updatingSlider();
	}

	//FancyBox
	$('.fancybox').on ('click', function(){
		widthbox = $(this).attr('widthbox');
		heightbox = $(this).attr('heightbox');
		$('.fancybox').fancybox({
			'width' :  widthbox,//ManagementApp.overlay.config.addEmployeeWidth,
			'height' : heightbox,
			'fitToView' : false,  // use autoScale for v1.3.4
			'autoSize' : false
		});
	});
	//tabs functionality
	$(ManagementApp.selectors.navigationTabs).on('click', function(e){
		e.preventDefault();
		$(this).tab('show');
	});
	
	//asign the aside height
	$(ManagementApp.selectors.asideHeight).height($(window).height() * 1.5);
	/*$(ManagementApp.selectors.asideLeft).height($(window).height());*/

	//search Employees
 	$(ManagementApp.selectors.searchInput).keyup(function(){
		ManagementApp.aside.searchEmployees();
    });
	
	$(ManagementApp.selectors.searchInput).keydown(function(key){
		
		if (key.keyCode == 40) {
			$('.tab-pane.active').find('.list-search').find('a').first().focus();
			$('.tab-pane.active').find('.list-search').find('a').first().addClass('active-arrow');
		 	return false;	
		}
	});
	
	$('.list-group-item').keydown(function(key){
		
		if (key.keyCode == 40) {
			$(this).removeClass('active-arrow');
			$(this).next().addClass('active-arrow');
			$(this).next().focus();	
			
		}
		if (key.keyCode == 38) {	
			$(this).prev().addClass('active-arrow');
			$(this).removeClass('active-arrow');
			$(this).prev().focus();
			
		}
	});
	
	
	//Move employee
	$(ManagementApp.selectors.searchList).on ('click', function(e){

		$(ManagementApp.selectors.searchList).removeClass ('active');
		$(this).css('display', 'none');
		$(this).parent().prepend($(this));	
		$(this).fadeIn();
		$(this).addClass ('active');
		$('#left-column').scrollTo(0);
		
		
		/*$('.pointer').addClass ('active');*/
		var name;
		name = $(this).text();
		console.log(name);
		$(ManagementApp.selectors.employeeList).each(function(){
				
			// If the list item does not contain the text phrase fade it out
			if ($.trim(name) == $.trim($(this).text()) ) {
				$(this).parent().addClass('active');
				$(this).parent().parent().prepend($(this).parent());	
				$(this).parent().fadeIn();
				$(this).parent().addClass ('active');
				
			}
				
		});
	});
	
	//Start review form controls
	$('#add-field').on('click', function() {
		if (countFields == 2) {
			return;
		}
		if (countFields < (3 - emailsSent)) { 
			$('.fields').append('<div class="row"><div class="col-md-6"><input type="email" required class="form-control" placeholder="email@thehangar.cr" name="email'+(countFields+1)+'"></div><div class="col-md-6"></div></div>');	
			countFields ++;
			if (countFields == 2) {
				$(this).addClass ('disabled');
			}
		}
	});

	//Ajax request for sending forms, 4 emails required, will show alert success or error
	$('#sendForms').on('submit', function (e) {
		e.preventDefault();
		var formHolder = $("#sendFormHolder");
		$.ajax({
		  url: $(this).attr('action'),
		  data: { 
		  		  description: $('#description').val(),
		  		  evaluation: evaluation,	
		  		  examinee: examinee.email,
		  		  email0: $(this).find('input[name=email0]').val(), 
		  		  email1: $(this).find('input[name=email1]').val()
		  		},
		  beforeSend: function( xhr ) {
		  	$('#sendFormsSpinner').show();
		  }
		}).done(function( data ){
		    if ( console && console.log ) {
		    	console.log( data );
		    }
		    formHolder.find("form").fadeOut();
		    formHolder.append($('<div class="alert alert-success alert-dismissable" />').html('<button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button> We’ve just send '+examinee.name+'\'s evaluations to all emails, you can now continue.').fadeIn());
		    $('#nextStep').removeClass('hidden');
		}).fail(function() {
			alert( "error" );
		}).always(function() {
			$('#sendFormsSpinner').hide();
		});
	});

	$('#sendGoals').on('click', function(e){
		e.preventDefault();
		var self = $(this);
		$.ajax({
		  url: $(this).attr('href'),
		  data: {
		  	evaluation: $(this).attr('data-evaluation')
		  },
		  beforeSend: function( xhr ) {
		  	$('#sendFormsSpinner').show();
		  }
		}).done(function( data ){
		    if ( console && console.log ) {
		    	console.log( data );
		    }	
		    $('.qPending').parent().append('<span class="qInProgress" style="color:#ed9e2f">In Progress</span>');
		    $('.qPending').hide();
		    $('.alertPending').hide();
		    $('.alertInProgress').removeClass('hidden');
		    $('#nextStep').removeClass('hidden');
		    self.addClass('hidden');
		}).fail(function() {
			alert( "error" );
		}).always(function() {
			$('#sendFormsSpinner').hide();
		});
		return false;
	});

	$('#sendQualitative').on('submit', function(e){
		e.preventDefault();
		var self = $(this);
		$.ajax({
		  url: self.attr('action'),
		  data: {
		  	question1: $('#question1').val(),
		  	question2: $('#question2').val(),
		  	question3: $('#question3').val(),
		  	evaluation: self.attr('data-evaluation')
		  },
		  beforeSend: function( xhr ) {
		  	$('#sendFormsSpinner').show();
		  }
		}).done(function( data ){
			if ( console && console.log ) {
		    	console.log( data );
		    }
		    $('#submitQualitative').hide();
		    $('#finishNotes').removeClass('hidden');
		    setTimeout(function () { window.close();}, 5000);
		}).fail(function() {
			alert( "error" );
		}).always(function() {
			$('#sendFormsSpinner').hide();
		});
		return false;
	});

	$('#scoreQualitative').on('submit', function(e){
		e.preventDefault();
		var self = $(this);
		$.ajax({
		  url: self.attr('action'),
		  data: {
		  	leadComments: $('#leadComments').val(),
		  	note: $('#noteSlider').data('slider').getValue(),
		  	evaluation: self.attr('data-evaluation')
		  },
		  beforeSend: function( xhr ) {
		  	$('#spinner').show();
		  }
		}).done(function( data ){
		    $('#scoreSubmitQualitative').hide();
		    $('#finishNotes').removeClass('hidden');
		    //setTimeout(function () { window.close();}, 5000);
		}).fail(function() {
			alert( "error" );
		}).always(function() {
			$('#spinner').hide();
		});
		return false;
	});

	$(".categoryHolder").hide();
	$(".categoryHolder").first().show();
	$(".categoryHolder").on("click", ".nextCategory", function(e){
		if(!evaluationState){
			$('#saveNotes').hide();
		}
		e.preventDefault();
	    var category = $(this).closest('.categoryHolder');
	    var missing = false;
	    category.find('.preguntas.pending').each(function(i){
	    	var checked = $(this).find("input[name="+$(this).data("id")+"]:checked").val();
	    	if(!checked){
	    		missing = true;
	    	}
	    });
	    if(!missing){
	    	$(this).closest('.categoryHolder').hide().next().show();
	    }else{
	    	alert("All questions should have an answer.");
	    }
	    
	});
	$('#saveNotes').on('click', function(e){
		e.preventDefault();
		var self = $(this);
		var questions = [];
		var missing = false;
		$('.categoryHolder').find('.preguntas.pending').each(function(i){
			var note = $(this).find("input[name="+$(this).data("id")+"]:checked").val();
			if(!note){
	    		missing = true;
	    	}
			questions.push({
				id: $(this).data("question"),
				note: note ? note : 0
			});
	    });
	    if(missing){
	    	alert("All questions should have an answer.");
	    	return false;
	    }
		$.ajax({
		  url: $(this).attr('href'),
		  data: {
		  	evaluation: $(this).attr('data-evaluation'),
		  	evaluator: $(this).attr('data-evaluator'),
		  	questions: JSON.stringify(questions)
		  },
		  beforeSend: function( xhr ) {
		  	$('#spinner').show();
		  }
		}).done(function( data ){
		    if ( console && console.log ) {
		    	console.log( data );
		    }
		    $('#finishNotes').removeClass('hidden');
		    self.hide();
		    setTimeout(function () { window.close();}, 5000);
		}).fail(function() {
			alert( "Form already sent." );
		}).always(function() {
			$('#spinner').hide();
		});
		return false;
	});

	//Employees under review
	$('.employees-under').text($('.employees').length);

	$('.table').tablesorter(); 
	
	$('.no-header').on ('click', function (e) {
		e.preventDefault();
	});
	
	//File Upload Buttons
	$('.btn-file :file').on('fileselect', function(event, numFiles, label) {
				
		var input = $(this).parents('.input-group').find(':text'),
			log = numFiles > 1 ? numFiles + ' files selected' : label;
		
		if( input.length ) {
			input.val(log);
		} else {
			if( log ) alert(log);
		}
		
	});

	//Text display when its too long
	$('.profile .employees .maintenance').hover(
	function() {
		$(this).removeClass("hover");
		$(this).parent().addClass("hover")
	}, function() {
		$(this).addClass("hover");
	}		
	);
});

})(jQuery);

$.fn.scrollTo = function( target, options, callback ){
  if(typeof options == 'function' && arguments.length == 2){ callback = options; options = target; }
  var settings = $.extend({
    scrollTarget  : target,
    offsetTop     : 50,
    duration      : 500,
    easing        : 'swing'
  }, options);
  return this.each(function(){
    var scrollPane = $(this);
    var scrollTarget = (typeof settings.scrollTarget == "number") ? settings.scrollTarget : $(settings.scrollTarget);
    var scrollY = (typeof scrollTarget == "number") ? scrollTarget : scrollTarget.offset().top + scrollPane.scrollTop() - parseInt(settings.offsetTop);
    scrollPane.animate({scrollTop : scrollY }, parseInt(settings.duration), settings.easing, function(){
      if (typeof callback == 'function') { callback.call(this); }
    });
  });
}
