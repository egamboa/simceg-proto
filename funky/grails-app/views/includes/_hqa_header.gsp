<header>
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="row">
          <div class="col-xs-3">
            <div class="logo">
              <g:link controller="index" action="index">
                <g:img dir="img" file="logo.jpg" alt="Hangar"/>
              </g:link>
            </div>
          </div>
           <div class="col-xs-2 no-padding">
		  	<div class="tabs"><g:link controller="index" action="index">Performance</g:link></div>
		  </div>
		   <div class="col-xs-2 no-padding">
		   	<div class="tabs tab-blue">Surveys</div>
		   </div>
          <div class="col-xs-5">
            <div class="my-profile">
              <g:if test="${currentStudent != null}">
                <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:currentStudent.id)}" style="width: 40px; height: 40px;"/>
				    <a href="#" data-toggle="dropdown" class="dropdown-toggle">
						<span class="caret"></span>
					</a>
					<ul role="menu" class="dropdown-menu hqa">
						<sec:ifAnyGranted roles='ROLE_ADMIN,ROLE_USER'>
						  <li><g:link controller="hqa" action="index" class="pageload-link">Dashboard</g:link></li>
						</sec:ifAnyGranted>
						<sec:ifAllGranted roles='ROLE_ADMIN'>
						   <li><g:link controller="hqa" action="maintenance">Maintenance</g:link></li>
						</sec:ifAllGranted>
						<li><g:link controller="hqa" action="reports">Reports</g:link></li>
						<li><g:link controller='logout'>Log Out</g:link></li>
						
					</ul>
		
              </g:if>
              <g:else>
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                <span class="caret"></span>
                </a>
                <ul role="menu" class="dropdown-menu">
                <li><g:link controller='logout'>Log Out</g:link> </li>
              </g:else>
            </div>  
          </div>
        </div>
      </div>
	   <div class="blue-line"></div>
      <!--
	  <div id="content" class="bs-header">
        <div class="container">
         
		  <div class="row">
            <div class="col-xs-4">
              <strong>
                <g:message code='${system}.title.main'/>
              </strong>
            </div>
            <div class="col-xs-8">
              <div class="pull-right btn-header"></div>
            </div>
          </div>  
		  
        </div>
      </div> -->
	  
    </div>
  </header>