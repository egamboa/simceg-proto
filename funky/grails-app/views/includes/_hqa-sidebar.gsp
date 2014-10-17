  <div class="col-xs-4">
  <aside id="left-column">
    <div class="Students-search">
      <div class="search">
        <div class="input-group">
          <span class="input-group-btn">
          <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
          </span>
          <input type="text" class="form-control" id="search-input">
        </div>
      </div>
    </div>
    <div class="tab-content lead-view">
      <div id="all" class="tab-pane active fade in">
        <div class="list-search list-group">
          <sec:ifAllGranted roles='ROLE_USER'>
            <g:each in="${team.members}">
              <g:if test="${it.isManager}">
                <g:link 
                    controller="hqa" 
                    action="team"
                    id="${it.id}"
                    class="list-group-item">
                  <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:it.id)}" style="width: 48px; height: 50px;"/>
                  <div class="Student-list">
                  ${it.name} <br /><span>${it.position}</span>
                  </div>
                </g:link>
              </g:if>
              <g:else>

               <g:link 
                    controller="hqa" 
                    action="review"
                    id="${it.id}"
                    class="list-group-item">
                  <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:it.id)}" style="width: 48px; height: 50px;"/>
                  <div class="Student-list">
                  ${it.name} <br /><span>${it.position}</span>
                  </div>
                </g:link>
              </g:else> 
            </g:each>
          </sec:ifAllGranted>
          <sec:ifAllGranted roles='ROLE_ADMIN'>
            <g:each in="${allStudents}">
              <g:if test="${it.isManager}">
                <g:link 
                    controller="hqa"
                    action="team"
                    id="${it.id}"
                    class="list-group-item">
                  <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:it.id)}" style="width: 48px; height: 50px;"/>
                  <div class="Student-list">
                  ${it.name} <br /><span>${it.position}</span>
                  </div>
                </g:link>
              </g:if>
              <g:else>
                <g:link 
                    controller="hqa"
                    action="review"
                    id="${it.id}"
                    class="list-group-item">
                  <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:it.id)}" style="width: 48px; height: 50px;"/>
                  <div class="Student-list">
                  ${it.name} <br /><span>${it.position}</span>
                  </div>
                </g:link>
              </g:else> 
            </g:each>
          </sec:ifAllGranted>
        </div>
      </div>
    </div>
  </aside>
</div>
