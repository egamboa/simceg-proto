<%@ page import="com.una.simceg.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="modal">
		<g:set var="entityName" value="${message(code: 'Student.label', default: 'Student')}" />
	</head>
	<body>
		<div id="edit-Student" class="content scaffold-edit" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${StudentInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${StudentInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<div class="modals" id="create-Student">			
			<g:form url="[resource:StudentInstance, action:'update']"  enctype="multipart/form-data">
			<div class="submit-form">
            <div class="login-label">
                <h3>Edit ${StudentInstance.name}</h3>
                <p>Please fill all the input fields to update an account</p>
       	     </div>
				<g:hiddenField name="version" value="${StudentInstance?.version}" />
				<fieldset class="form">
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
					                      <g:select 
					                      	name="manager" 
					                      	id="manager"
					                      	multiple="false"
					                      	optionKey="id"
					                      	from="${managers}" 
					                      	value="${StudentInstance?.getLead().id}"
					                      	class="form-control custom-dd"/>
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
					            <img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:StudentInstance.id)}" style="width: 50px; height: 50px;" name="foto_actual" value="${StudentInstance?.avatar}"/>
					            <span class="btn btn-default btn-file">
		                          <span class="glyphicon glyphicon-cloud-upload"></span>
		                          <input type="file" id="nuevaFoto" name="nuevaFoto"/>
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
								<g:field type="date" name="date" required="" value="${StudentInstance?.date}" class="form-control"/>
					            <g:formatDate format="dd-MM-yyyy" date="${date}"/>
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
				</fieldset>
       		</div>
       		<div class="submit-bg">
	            <button class="btn btn-lg btn-warning" type="submit">Update Student</button>   
	       	</div>  
			</g:form>
		</div>
		</div>
	</body>
</html>
