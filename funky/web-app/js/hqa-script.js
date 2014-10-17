$(document).ready(function(){
	//Ajax request for sending forms
	$('#sendSurvey').on('submit', function (e) {
		e.preventDefault();
		var self = $(this);
		var appending = "";
		$.ajax({
		  url: $(this).attr('action'),
		  data: {
		  		  evaluation: evaluation,	
		  		  examinee: examinee,
		  		  email: self.find('input[name=email]').val(), 
		  		  name: self.find('input[name=name]').val()
		  		},
		  beforeSend: function( xhr ) {
		  	$('#sendFormsSpinner').show();
		  }
		}).done(function( data ){
		    if ( console && console.log ) {
		    	console.log( data );
		    }
		    appending = '<tr><td>' + self.find('input[name=name]').val() + '</td><td>' + self.find('input[name=email]').val() + '</td><td class="in-progress">In Progress</td><td><span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;?</strong></span></td></tr>';
	        $('#subTests-holder').find('tbody').append(appending);
	        self.find('input[name=name]').val('');
	        self.find('input[name=email]').val('');
		}).fail(function(data) {
			alert( data.responseText );
		}).always(function() {
			$('#sendFormsSpinner').hide();
		});
	});
	
	$('#saveSurvey').on('click', function(e){
		e.preventDefault();
		var self = $(this);
		var questions = [];
		var missing = false;
		$('.preguntas.inprogress').each(function(i){
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
		  	subtest: $(this).attr('data-subtest'),
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
	
});