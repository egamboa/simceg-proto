<%@ page import="com.una.simceg.Student" %>

<div class="fieldcontain ${hasErrors(bean: StudentInstance, field: 'name', 'error')} required">
	<div class="center-field pull-left">
    	<div class="input-group input-group-lg">
			<label for="name">
				<g:message code="Student.name.label" default="Name" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="name" readonly="readonly" value="${StudentInstance?.name}" class="form-control"/>
		</div>
	</div>
</div>

<div>
	 <div class="center-field pull-right">
                <div class="input-group input-group-lg">
                      <label for="manager">Manager <span>*</span></label>
                      <g:select name="manager" id="manager" from="${managers}" optionKey="id" class=" form-control custom-dd" disabled="true"/>
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
					<g:field type="email" name="email" readonly="readonly"value="${StudentInstance?.email}" class="form-control"/>
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
					<g:checkBox name="isManager" class="css-checkbox" value="${StudentInstance?.isManager}" readonly="readonly" disabled="true"/>
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
	<g:select id="position" name="position.id" from="${com.una.simceg.Position.list()}" optionKey="id" required="" value="${StudentInstance?.position?.id}" class="many-to-one form-control custom-dd" disabled="true"/>
	</div>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: StudentInstance, field: 'avatar', 'error')} ">
	<div class="center-field pull-right">
          <div class="input-group input-group-lg">
			<label for="avatar">Photo <span>*</span></label>
			            <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:StudentInstance.id)}" style="width: 50px; height: 50px;" name="foto_actual" value="${StudentInstance?.avatar}"/>
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
			<g:field type="date" name="date" required="" value="${StudentInstance?.date}" class="form-control"/>
            <g:formatDate format="dd-MM-yyyy" date="${date}"/>
		</div>
	</div>
</div>
