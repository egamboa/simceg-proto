<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main"/>
    <title><g:message code='simceg.title.main'/> - Maintenance</title>
  </head>
  <body>
  <g:render template="/includes/header"/>
  <div class="container"> 
  <div class="row"> 
    <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_USER">
   
<div class="col-xs-8">
    </sec:ifAnyGranted>
  <div class="profile">  
  <h2>Maintenance Module</h2>
 
  <!--<p class="last-login"></p>-->
  <ul class="nav nav-tabs">
      <li class="active"><a href="#Student">Student</a></li>
      <li><a href="#cities">Cities</a></li>
      <li><a href="#department">Department</a></li>
      <li><a href="#position">Position</a></li>
      <li><a href="#values">Values</a></li>
      <li><a href="#questions">Questions</a></li>
      <li><a href="#user">Users</a></li>
   </ul>
   
  <div class="tab-content">
<!-- aca empieza lo de esteban-->
  <div id="Student" class="tab-pane fade in active">
           <div class="row">
               <div class="col-xs-9"></div>
               <div class="col-xs-3">
        <g:link class="btn btn-warning fancybox fancybox.iframe" controller="Student" action="create" widthbox="670" heightbox="558">Create Student</g:link>
               </div>
           </div>
    <g:each status="i" in="${allTeams}" var="team">
      <div class="row"> 
        <div class="col-xs-12 maintenanceLead">
           <div class="Students manager">
              <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:team.lead.id)}" style="width: 50px; height: 50px;"/>
              <div class="Student-name">
                <strong>${team.lead.name} </strong>
                <br>
                <span>${team.lead.position}</span>
              </div>
              <div class="btn-group">
                <g:img dir="img" file="menu-eye.png" alt="View" data-toggle="dropdown"/>
                <ul class="dropdown-menu">
                  <li>
                    <g:link controller="Student" action="edit" id="${team.lead.id}" class="fancybox fancybox.iframe" widthbox="670" heightbox="558">
                    Edit
                    </g:link>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        <div class="col-xs-12 maintenanceTeam">
          <div class="panel-group" id="accordion-${team.id}">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" class="collapseLink" data-parent="#accordion-${team.id}" href="#collapse-${team.id}">
                    ${team.lead.name}'s Team
                  </a>
                </h4>
              </div>
              <div id="collapse-${team.id}" class="panel-collapse collapse">
                <div class="panel-body">
                  <g:each status="j" in="${team.members}" var="item">
                    <g:if test="${(j % 2) == 0}">
                      <div class="row ${j}">
                    </g:if>
                      <div class="col-xs-6">
                        <div class="Students">
                          <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:item.id)}" style="width: 50px; height: 50px;"/>
                          <div class="Student-name">
                            <strong>${item.name} </strong>
                            <br>
                            <span>${item.position}</span>
                          </div>
                          <div class="btn-group">
                            <g:img dir="img" file="menu-eye.png" alt="View" data-toggle="dropdown"/>
                            <ul class="dropdown-menu">
                              <li>
                                <g:link controller="Student" action="edit" id="${item.id}" class="fancybox fancybox.iframe" widthbox="670" heightbox="558">
                                Edit
                                </g:link>
                              </li>
                              <g:if test="${item.isManager}!=true">
                              <li>
                                 <g:link controller="Student" action="deactivateStudent" id="${item.id}" class="fancybox fancybox.iframe" widthbox="355" heightbox="258">
                                Delete
                                </g:link>
                              </li>
                            </g:if>
                            </ul>
                          </div>
                        </div>
                      </div>  
                    <g:if test="${(j % 2) != 0}">
                      </div>
                    </g:if>
                    <g:else>
                      <g:if test="${(team.members.size() - 1) == j}">
                        </div>
                      </g:if>
                    </g:else>
                  </g:each>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </g:each>
        <div class="row"></div>
      </div>
<!--aca termina lo de esteban -->
<div id="cities" class="tab-pane fade">
  <div class="row">
    <div class="col-xs-9"></div>
    <div class="col-xs-3">
      <g:link class="btn btn-warning fancybox fancybox.iframe pull-right" controller="city" action="create" widthbox="355" heightbox="246">Create City </g:link>
    </div>
  </div>
           <g:each status="i" in="${allCities}" var="item">
    <g:if test="${(i % 2) != 0}">
       <div class="row">
        </g:if>
        <div class="col-xs-6">
                    <div class="Students">
                         <div class="maintenance">
                            <strong>${item.description} </strong>
                         </div>
                     <div class="btn-group">
                        <g:img dir="img" file="menu-eye.png" alt="View" data-toggle="dropdown"/>
                          <ul class="dropdown-menu">
                            <li>
                              <g:link controller="city" action="edit" id="${item.id}" class="fancybox fancybox.iframe" widthbox="355" heightbox="264">
                              Edit
                              </g:link>
                            </li> 
                          
                          </ul>
                     </div>
                </div>
               </div>
          <g:if test="${(i % 2) != 0}">
          </div>
          </g:if>
        </g:each>
</div>
      <div id="department" class="tab-pane fade">
            <div class="row">
              <div class="col-xs-9"></div>
              <div class="col-xs-3">
              <g:link class="btn btn-warning fancybox fancybox.iframe pull-right" controller="department" action="create" widthbox="355" heightbox="305">Create Department</g:link>
              </div>
          </div>
          <g:each status="i" in="${allDepartments}" var="item">
    <g:if test="${(i % 2) != 0}">
       <div class="row">
        </g:if>
        <div class="col-xs-6">
                    <div class="Students">
                         <div class="maintenance">
                            <strong>${item.description} </strong>
                         </div>
                     <div class="btn-group">
                        <g:img dir="img" file="menu-eye.png" alt="View" data-toggle="dropdown"/>
                          <ul class="dropdown-menu">
                            <li>
                              <g:link controller="department" action="edit" id="${item.id}" class="fancybox fancybox.iframe" widthbox="355" heightbox="305">
                              Edit
                              </g:link>
                            </li> 
                          
                          </ul>
                     </div>
                </div>
               </div>
          <g:if test="${(i % 2) != 0}">
          </div>
          </g:if>
        </g:each>
      </div>
      
      <div id="position" class="tab-pane fade">
      	    <div class="row">
           		<div class="col-xs-9"></div>
           		<div class="col-xs-3">
              <g:link class="btn btn-warning fancybox fancybox.iframe pull-right" controller="position" action="create" widthbox="390" heightbox="372">Create Position</g:link>
              </div>
       		</div>
      <g:each status="i" in="${allPositions}" var="item">
        <g:if test="${(i % 2) != 0}">
          <div class="row">
        </g:if>
          <div class="col-xs-6">
            <div class="Students">
              <div class="maintenance">
                <strong>${item.description} </strong>
              </div>
              <div class="btn-group">
                <g:img dir="img" file="menu-eye.png" alt="View" data-toggle="dropdown"/>
                <ul class="dropdown-menu">
                  <li>
                    <g:link controller="position" action="edit" id="${item.id}" class="fancybox fancybox.iframe" widthbox="390" heightbox="372">Edit
                    </g:link>
                  </li> 
                 
                </ul>
              </div>
            </div>
          </div>
          <g:if test="${(i % 2) != 0}">
          </div>
          </g:if>
        </g:each>
      </div>
      
      <div id="questions" class="tab-pane fade">
           <div class="row">
               <div class="col-xs-9"></div>
               <div class="col-xs-3">            
               <g:link class="btn btn-warning fancybox fancybox.iframe pull-right" controller="question" action="create" widthbox="403" heightbox="372">Create Question</g:link>
              </div>
           </div>
      <g:each status="i" in="${allQuestions}" var="item">
        <g:if test="${(i % 2) != 0}">
          <div class="row">
        </g:if>
          <div class="col-xs-6">
            <div class="Students">
              <div class="maintenance hover">
                <strong>${item.question} </strong>
              </div>
              <div class="btn-group">
                <g:img dir="img" file="menu-eye.png" alt="View" data-toggle="dropdown"/>
                <ul class="dropdown-menu">
                  <li>
                    <g:link controller="question" action="edit" id="${item.id}" class="fancybox fancybox.iframe" widthbox="403" heightbox="372">Edit
                    </g:link>
                  </li> 
                
                </ul>
              </div>
            </div>
          </div>
          <g:if test="${(i % 2) != 0}">
          </div>
          </g:if>
        </g:each>
		   </div>
      
      
      <div id="values" class="tab-pane fade">
           <div class="row">
               <div class="col-xs-9"></div>
               <div class="col-xs-3">
               <g:link class="btn btn-warning fancybox fancybox.iframe pull-right" controller="category" action="create" widthbox="355" heightbox="305">Create Value</g:link>
              </div>
           </div>
      <g:each status="i" in="${allCategories}" var="item">
        <g:if test="${(i % 2) != 0}">
          <div class="row">
        </g:if>
          <div class="col-xs-6">
            <div class="Students">
              <div class="maintenance">
                <strong>${item.description} </strong>
              </div>
              <div class="btn-group">
                <g:img dir="img" file="menu-eye.png" alt="View" data-toggle="dropdown"/>
                <ul class="dropdown-menu">
                  <li>
                    <g:link controller="category" action="edit" id="${item.id}" class="fancybox fancybox.iframe" widthbox="355" heightbox="305">Edit
                    </g:link>
                  </li> 
                 
                </ul>
              </div>
            </div>
          </div>
          <g:if test="${(i % 2) != 0}">
          </div>
          </g:if>
        </g:each>
      </div>
      
      <div id="user" class="tab-pane fade">
           <div class="row">
               <div class="col-xs-9"></div>
               <div class="col-xs-3">
               <g:link class="btn btn-warning fancybox fancybox.iframe pull-right" controller="user" action="create" widthbox="670" heightbox="538">Create User</g:link>                
              </div>
           </div>
           <g:each status="i" in="${allUsers}" var="item">
        <g:if test="${(i % 2) != 0}">
          <div class="row">
        </g:if>
          <div class="col-xs-6">
            <div class="Students">
              <div class="maintenance">
                <strong>${item.name} </strong>
              </div>
              <div class="btn-group">
                <g:img dir="img" file="menu-eye.png" alt="View" data-toggle="dropdown"/>
                <ul class="dropdown-menu">
                  <li>
                    <g:link controller="user" action="edit" id="${item.id}" class="fancybox fancybox.iframe" widthbox="670" heightbox="538">Edit
                    </g:link>
                  </li> 
                
                </ul>
              </div>
            </div>
          </div>
          <g:if test="${(i % 2) != 0}">
          </div>
          </g:if>
        </g:each>
      </div>

</div>
</div>
	<div class="row">
    <div class="col-md-12">  
    </div>
</div> 
</div>
 <g:render template="/includes/sidebar" />
</div> 
</body>
</html>
