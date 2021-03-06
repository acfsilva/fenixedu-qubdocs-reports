<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<spring:url var="datatablesUrl" value="/javaScript/dataTables/media/js/jquery.dataTables.latest.min.js"/>
<spring:url var="datatablesBootstrapJsUrl" value="/javaScript/dataTables/media/js/jquery.dataTables.bootstrap.min.js"></spring:url>
<script type="text/javascript" src="${datatablesUrl}"></script>
<script type="text/javascript" src="${datatablesBootstrapJsUrl}"></script>
<spring:url var="datatablesCssUrl" value="/CSS/dataTables/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="${datatablesCssUrl}"/>
<spring:url var="datatablesI18NUrl" value="/javaScript/dataTables/media/i18n/${portal.locale.language}.json"/>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/dataTables/dataTables.bootstrap.min.css"/>

<link href="//cdn.datatables.net/responsive/1.0.4/css/dataTables.responsive.css" rel="stylesheet"/>
<script src="//cdn.datatables.net/responsive/1.0.4/js/dataTables.responsive.js"></script>
<link href="//cdn.datatables.net/tabletools/2.2.3/css/dataTables.tableTools.css" rel="stylesheet"/>
<script src="//cdn.datatables.net/tabletools/2.2.3/js/dataTables.tableTools.min.js"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0-rc.1/css/select2.min.css" rel="stylesheet" />
<script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0-rc.1/js/select2.min.js"></script>

<!-- Choose ONLY ONE:  bennuToolkit OR bennuAngularToolkit -->
<%--${portal.angularToolkit()} --%>
${portal.toolkit()}

<%-- TITLE --%>
<div class="page-header">
	<h1><spring:message code="label.manageDocumentSignature.createDocumentSignature" />
		<small></small>
	</h1>
</div>

<%-- NAVIGATION --%>
<div class="well well-sm" style="display:inline-block">
	<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>&nbsp;<a class="" href="${pageContext.request.contextPath}/qubdocsreports/managedocumentsignature/documentsignature/"  ><spring:message code="label.event.back" /></a></div>
	<c:if test="${not empty infoMessages}">
				<div class="alert alert-info" role="alert">
					
					<c:forEach items="${infoMessages}" var="message"> 
						<p>${message}</p>
					</c:forEach>
					
				</div>	
			</c:if>
			<c:if test="${not empty warningMessages}">
				<div class="alert alert-warning" role="alert">
					
					<c:forEach items="${warningMessages}" var="message"> 
						<p>${message}</p>
					</c:forEach>
					
				</div>	
			</c:if>
			<c:if test="${not empty errorMessages}">
				<div class="alert alert-danger" role="alert">
					
					<c:forEach items="${errorMessages}" var="message"> 
						<p>${message}</p>
					</c:forEach>
					
				</div>	
			</c:if>

<form method="post" class="form-horizontal">
<div class="panel panel-default">
  <div class="panel-body">
  
<div class="form-group row">
	<div class="col-sm-2 control-label"><spring:message code="label.DocumentSignature.responsibleGender"/></div> 

	<div class="col-sm-4">
		<select id="documentSignature_responsibleGender" class="form-control" name="responsiblegender">
			<c:forEach items="${responsibleGenderValues}" var="field">
				<option value="<c:out value='${field}'/>"><c:out value='${field.localizedName}'/></option>
			</c:forEach>
		</select>
		<script>
			$("#documentSignature_responsibleGender").val('<c:out value='${not empty param.responsiblegender ? param.responsiblegender : documentSignature.responsibleGender }'/>');
		</script>	
	</div>
</div>	

<div class="form-group row">
<div class="col-sm-2 control-label"><spring:message code="label.DocumentSignature.responsibleName"/></div> 

<div class="col-sm-10">
	<input id="documentSignature_responsibleName" class="form-control" type="text" name="responsiblename"  value='<c:out value='${not empty param.responsiblename ? param.responsiblename : documentSignature.responsibleName }'/>' />
</div>	
</div>		
<div class="form-group row">
<div class="col-sm-2 control-label"><spring:message code="label.DocumentSignature.responsibleFunction"/></div> 

<div class="col-sm-10">
<input id="documentSignature_responsibleFunction" class="form-control" type="text" name="responsiblefunction"  bennu-localized-string value='${not empty param.responsiblefunction ? param.responsiblefunction : "{}" } '/> 
</div>
</div>		
<div class="form-group row">
<div class="col-sm-2 control-label"><spring:message code="label.DocumentSignature.responsibleUnit"/></div> 

<div class="col-sm-10">
<input id="documentSignature_responsibleUnit" class="form-control" type="text" name="responsibleunit"  bennu-localized-string value='${not empty param.responsibleunit ? param.responsibleunit : "{}" } '/> 
</div>
</div>		
  </div>
  <div class="panel-footer">
		<input type="submit" class="btn btn-default" role="button" value="<spring:message code="label.submit" />"/>
	</div>
</div>
</form>

<script>
$(document).ready(function() {

	
	
	});
</script>
