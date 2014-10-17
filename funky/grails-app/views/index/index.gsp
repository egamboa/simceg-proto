<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main"/>
    <title><g:message code='simceg.title.main'/> - Dashboard</title>
  </head>
  <body>
  <g:render template="/includes/header"/>
  <div class="container">  
    <div class="row">
      <sec:ifAllGranted roles='ROLE_ADMIN'>
        <div class="col-xs-8 bg-white"><div class="dashboard profile">
        
		<h2>Welcome back ${currentStudent}!</h2>

      </sec:ifAllGranted>

      <sec:ifAllGranted roles='ROLE_USER'>
        <div class="col-xs-8"><div class="profile">
          <div class="row breadcrumb">
            <div class="col-xs-12"><span class="glyphicon glyphicon-chevron-left"></span><g:link controller="index" action="index">Back</g:link></div>
          </div>

          <div class="row Student-info">
          <div class="col-xs-2">
          <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:currentStudent.id)}" style="width: 100px; height: 100px;"/>
          </div>
          <div class="col-xs-7">
          <h3>${currentStudent}</h3>
          <h5 class="sub-title">${currentStudent?.position}</h5>
          <h5 class="sub-title">Manager: <strong>${currentStudentteam.lead}</strong></h5>
          </div>
          <div class="col-xs-3 fill">
          <div class="vcenter">  
          </div>
        </div>
      </div>
      </sec:ifAllGranted>	 
  </div> 
	  
  <div class="row">
    <div class="col-md-12"></div>
  </div>

</div>

<g:render template="/includes/sidebar" />

</div>

</body>
</html>
