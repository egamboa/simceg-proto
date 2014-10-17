<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main"/>
    <title><g:message code='simceg.title.main'/> - Lead</title>
  </head>
  <body>
  <g:render template="/includes/header"/>
  <div class="container"> 
    <div class="row">
    
      <div class="col-xs-8 bg-white">
        <div class="dashboard profile">
         
            <div class="profile">
              <div class="Student-info">
                <div class="col-xs-2">
                  	  <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:team.lead.id)}" style="width: 95px; height: 100px;"/>
                </div>
                <div class="col-xs-6">
					  <h3>${team.lead}</h3>
					  <h5 class="sub-title">${team.lead?.position}</h5>
					  <h5 class="sub-title">Manager: <strong>${Student.getLead()}</strong></h5>
					  <!--<g:link controller="Student" action="edit" id="${team.lead.id}" class="btn btn-warning fancybox fancybox.iframe" widthbox="670" heightbox="454">
						Edit Account
						</g:link>-->
                </div>
              </div>
            </div>
          
          <ul class="nav nav-tabs">
            <li class="active"><a href="#manage">Managing</a></li>
            <li><a href="#reviews">Reviews</a></li>
          </ul>

      <div class="tab-content">
        <div id="manage" class="tab-pane fade in active">
            <div class="row">
              <div class="col-xs-9">
                <p class="sub-title">
                <strong>${team.lead}</strong> has <span class="Students-under"></span> Students to review
                </p>
              </div>
            </div>
          <g:each status="i" in="${team.members}" var="item">
            <g:if test="${(i % 2) == 0}">
              <div class="row">
            </g:if>
            <div class="col-xs-6">
              <div class="Students">
                <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:item.id)}" style="width: 50px; height: 50px;"/>
                <div class="Student-name">
                  <strong>${item.name} </strong>
                  <br>
                  <span>${item.position}</span>
                  <br>
                  <span style="font-style: italic">Initial Date: <g:formatDate format="MM-dd-yyyy" date="${item.date}"/></span>
                </div>
                <div class="btn-group">
                  <g:img dir="img" file="menu-eye.png" alt="View" data-toggle="dropdown"/>
                  <ul class="dropdown-menu">
                    <li>
                      <g:link controller="Index" action="review" id="${item.id}">
                        See Profile
                      </g:link>
                    </li>
                    <li class="divider"></li>
                    <li><g:link controller="Evaluation" action="index" params="[examinee:item.email]">${item.hasEvaluation()? 'See': 'Start'} Review</g:link></li> 
                    <li class="divider"></li>
                  </ul>
                </div>
              </div>
            </div>
            <g:if test="${(i % 2) != 0}">
              </div>
            </g:if>
            <g:elseif test="${i == (team.members.size()-1)}">
              </div>
            </g:elseif>
          </g:each>
         </div>
            <div id="reviews" class="tab-pane fade">
              <div class="row">
                <div class="col-xs-9"><p class="sub-title"><strong>${currentStudent}</strong> has ${evaluations.size} Performance Reviews</p></div>
                  <div class="col-xs-3">
                    <g:link controller="Evaluation" action="index" params="[examinee:currentStudent.email]" class="btn btn-warning pull-right">${currentStudent.hasEvaluation()? 'See': 'Start'} Review</g:link>
                  </div>
              </div>
              <table class="table reviews tablesorter">
                <thead>
                  <tr>
                    <th class="no-header"><strong>Description</strong></th>
                    <th class="sort"><strong>Date</strong></th>
                    <th class="sort"><strong>Progress</strong></th>
                    <th class="sort"><strong>Score</strong></th>
                    <th class="no-header"><strong>Action</strong></th>
                  </tr>
                </thead>
                <tbody>
                  <g:each status="i" in="${evaluations}" var="item">
                    <tr>
                      <td>${item.description}</td>
                      <td>${item.date}</td>
                      <g:if test="${item.complete == false}">
                      <td class="in-progress">In Progress</td>
                      </g:if>
                      <g:else>
                      <td class="completed">Completed</td>
                      </g:else>
                      <td>${item.note}</td>
                      <td><a href="#">See Review</a></td>
                  </tr>
                  </g:each>
                </tbody>
              </table>
            </div>
    </div>
  </div>
        <div class="row">
          <div class="col-md-12"></div>
        </div>
	</div>	
	 <g:render template="/includes/sidebar" />
</div>
</body>
</html>
