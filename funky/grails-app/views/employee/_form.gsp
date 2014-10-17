<%@ page import="com.una.simceg.Student" %>

<div class="fieldcontain ${hasErrors(bean: StudentInstance, field: 'name', 'error')} required">
	<div class="center-field pull-left">
    	<div class="input-group input-group-lg">
			<label for="name">
				<g:message code="Student.name.label" default="Name" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="name" required="" value="${StudentInstance?.name}" class="form-control"/>
		</div>
	</div>
</div>

<div>
	 <div class="center-field pull-right">
                <div class="input-group input-group-lg">
                      <label for="manager">Manager <span>*</span></label>
                      <g:select name="manager" id="manager" from="${managers}" optionKey="id" class=" form-control custom-dd"/>
                </div>
            </div>
</div>

<div class="fieldcontain ${hasErrors(bean: StudentInstance, field: 'email', 'error')} required">
	<div class="center-field pull-left">
                <div class="input-group input-group-lg">
					<label for="email">
						<g:message code="Student.email.label" default="Email" />
						<span class="required-indicator">*</span>
					</label>
					<g:field type="email" name="email" required="" value="${StudentInstance?.email}" class="form-control"/>
				</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: StudentInstance, field: 'isManager', 'error')} ">
	<div class="center-field pull-right">
                <div class="input-group input-group-lg">
                      <label for="isManager">
						<g:message code="Student.isManager.label" default="Is Lead?" />
					</label>
					<br />
					<g:checkBox name="isManager" class="css-checkbox" value="${StudentInstance?.isManager}"/>
					<label class="css-label lite-orange-check" name="checkbox2_lbl" for="isManager"></label>
                </div>
            </div>    
</div>

<div class="fieldcontain ${hasErrors(bean: StudentInstance, field: 'position', 'error')} required">
	<div class="center-field pull-left">
    <div class="input-group input-group-lg">
	<label for="position">
		<g:message code="Student.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="position" name="position.id" from="${com.una.simceg.Position.list()}" optionKey="id" required="" value="${StudentInstance?.position?.id}" class="many-to-one form-control custom-dd"/>
	</div>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: StudentInstance, field: 'avatar', 'error')} ">
	<div class="center-field pull-right">
          <div class="input-group input-group-lg">
			<label for="avatar">Photo <span>*</span></label>
                      <input type="text" class="form-control" readonly>
                      <span class="input-group-btn upload">
                        <span class="btn btn-default btn-file">
                          <span class="glyphicon glyphicon-cloud-upload"></span>
                          <input type="file" id="avatar" name="avatar" value="${StudentInstance?.avatar}"/>
                        </span>
                      </span>	 
		</div>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: StudentInstance, field: 'date', 'error')} ">
	<div class="center-field pull-left">
          <div class="input-group input-group-lg">
			<label for="date">
				<g:message code="Student.date.label" default="Initial Date" />
				<span class="required-indicator">*</span>
			</label>
			<g:formatDate format="yyyy-MM-dd" date="${date}"/>
			<g:field type="date" name="date" required="" value="${StudentInstance?.date}" class="form-control"/>
		</div>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: StudentInstance, field: 'city', 'error')} ">
						<div class="center-field pull-right">
					          <div class="input-group input-group-lg">
								<label for="city">
									<g:message code="Student.city.label" default="City" />
									<span class="required-indicator">*</span>
								</label>
									<g:select id="category" name="category.id" from="${com.una.simceg.City.list()}" optionKey="id" required="" value="${StudentInstance?.city?.id}" class="many-to-one form-control custom-dd" noSelection="['':"--Select--"]"/>
							</div>
						</div>
					</div>
