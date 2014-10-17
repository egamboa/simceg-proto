<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main"/>
    <title><g:message code='simceg.title.main'/> - Student</title>
  </head>
  <body>
  <g:render template="/includes/header"/>
  <div class="container"> 
    <div class="row">
      <div class="col-xs-8">
          <div class="profile">


          <div class="row Student-info">
            <div class="col-xs-2">
            <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:Student.id)}" style="width: 95px; height: 100px;"/>
            </div>
            <div class="col-xs-7">
            <h3>${Student}</h3>
            <h5 class="sub-title">${Student?.position}</h5>
            <h5 class="sub-title">Manager: <strong>${Student.getLead()}</strong></h5>
            <!-- <h5 class="sub-title">Manager: <strong>Melania Madriz</strong></h5> -->
            </div>
            <div class="col-xs-3 fill">
              <div class="vcenter">  
  <!--           <g:link controller="Student" action="edit" id="${currentStudent.id}" class="btn btn-warning fancybox fancybox.iframe" widthbox="670" heightbox="454">
            Edit Account
            </g:link> -->
              </div>
            </div>
          </div>
      <ul class="nav nav-tabs">
        <li class="active"><a href="#reviews">Reviews</a></li>
      </ul>

      <div class="tab-content">
      <div id="reviews" class="tab-pane fade in active">
        <div class="row">
          <div class="col-xs-9"><p class="sub-title"><strong>${Student}</strong> has ${evaluations.size} Performance Reviews</p></div>
            <div class="col-xs-3">
              <g:link controller="Evaluation" action="index" params="[examinee:Student.email]" class="btn btn-warning pull-right">${Student.hasEvaluation()? 'See': 'Start New'} Review</g:link>
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
                <td>
                  <g:if test="${item.complete == false}">
                    <g:link controller="Evaluation" action="index" params="[examinee:Student.email]">See Review</g:link>
                  </g:if>
                  <g:else>
                    <g:link controller="Evaluation" action="summary" params="[evaluation:item.id]">See Review</g:link>
                  </g:else>
                </td>
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
