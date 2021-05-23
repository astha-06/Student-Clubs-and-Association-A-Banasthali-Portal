//////CONTACT FORM VALIDATION
jQuery(document).ready(function ($) {
	
	//if submit button is clicked
	$("#bottomcontactform").submit(function() {		
		
		//Get the data from all the fields
		var namebottom = $('input[name=namebottom]');
		var emailbottom = $('input[name=emailbottom]');
		var regx = /^([a-z0-9_\-\.])+\@([a-z0-9_\-\.])+\.([a-z]{2,4})$/i;
		var comment = $('textarea[name=comment]');
		var returnError = false;
		
		//Simple validation to make sure user entered something
		//Add your own error checking here with JS, but also do some error checking with PHP.
		//If error found, add hightlight class to the text field
		if (namebottom.val()=='') {
			namebottom.addClass('error');
			returnError = true;
		} else namebottom.removeClass('error');
		
		if (emailbottom.val()=='') {
			emailbottom.addClass('error');
			returnError = true;
		} else emailbottom.removeClass('error');		
		
		if(!regx.test(emailbottom.val())){
          emailbottom.addClass('error');
          returnError = true;
		} else emailbottom.removeClass('error');
		
		
		if (comment.val()=='') {
			comment.addClass('error');
			returnError = true;
		} else comment.removeClass('error');
		
		// Highlight all error fields, then quit.
		if(returnError == true){
			return false;	
		}
		
		//organize the data
		
		var data = 'namebottom=' + namebottom.val() + '&emailbottom=' + emailbottom.val() + '&comment='  + encodeURIComponent(comment.val());

		//disabled all the text fields
		$('.text').attr('disabled','true');
		
		//show the loading sign
		$('.loading').show();
		
		//start the ajax
		$.ajax({
			//this is the php file that processes the data and sends email
			url: "contact/bottomcontact.php",	
			
			//GET method is used
			type: "GET",

			//pass the data			
			data: data,		
			
			//Do not cache the page
			cache: false,
			
			//success
			success: function (html) {				
				//if contact/bottomcontact.php returned 1/true (send mail success)
				if (html==1) {
				
					//show the success message
					$('.done2').fadeIn('slow');
					
					$(".form").find('input[type=text], textarea').val("");
					
				//if contact.php returned 0/false (send mail failed)
				} else alert('Sorry, unexpected error. Please try again later.');				
			}		
		});
		
		//cancel the submit button default behaviours
		return false;
	});	
});	