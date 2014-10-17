<!DOCTYPE html>
<html>
<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <title>"<g:message code='simceg.title.main'/></title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.fancybox.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'table.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
	</head>
	<body>
   <div class="modals" id="add-Student">
<g:if test="${flash.message}">
      <div class="flash-message" role="status" style="top:0;float: left;width: 295px;">${flash.message}</div>
      </g:if>
   <g:form url="[resource:StudentInstance, action:'delete']">
        <div class="submit-form">
            <div class="login-label">
                <h3>Delete Account</h3>
                <p>Are you sure you want to delete this account?</p>
            </div>    
            <div class="input-group input-group-lg">
                  <input type="text" placeholder="" class="form-control" value="${StudentInstance.name}" readonly="readonly">
            </div>
                
       </div>   
      
       <div class="submit-bg">
            <button class="btn btn-lg btn-warning" type="submit">Delete</button>  
            <!--<button class="btn btn-lg" type="">Close</button> -->
       </div> 
       
  </g:form>
  
</div>

		<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
		<g:javascript src="bootstrap.js" />
		<g:javascript src="script.js" />
		<g:javascript src="jquery.tablesorter.js"/>
		<g:javascript src="fancy_box/jquery.fancybox.pack.js"/>
	</body>
</html>
