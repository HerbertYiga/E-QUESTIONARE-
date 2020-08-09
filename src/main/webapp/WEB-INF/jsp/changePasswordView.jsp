
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EQuestiannaire</title>
<!-- booot strap,css and java script files -->

<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/css/admin.css"/>" rel="stylesheet">


</head>
<body>

<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" style="color:#ffffff;">Dashboard</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    
                </li>
                
        <li><a href="<c:url value="/Logout"/>" style="color:#ffffff;"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>   </ul>
        </div>
    </div>
    <!-- /container -->
</div>

<!-- /Header -->

<!-- Main -->

<div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">

    <ul class="nav nav-pills nav-stacked" style="border-right:1px solid black">
         <!--<li class="nav-header"></li>-->
       <!--<li class="nav-header"></li>-->
        <li><a href="<c:url value="/AdminPanel"/>""><i class="glyphicon glyphicon-dashboard"></i> Dashboard</a></li>
        <li><a href="<c:url value="/viewUsers"/>""><i class="glyphicon glyphicon-book"></i> Manage Users</a></li>
      <li><a href="<c:url value="viewPersonDetailsAdmin/1"/>""><i class="glyphicon glyphicon-envelope"></i> View Lists</a></li>
      <li><a href="<c:url value="/Downloads"/>""><i class="glyphicon glyphicon-download"></i> Download Excel</a></li>
        
    </ul>
</div><!-- /span-3 -->
<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
    <!-- Right -->

    <a href="#"><strong><span class="fa fa-dashboard"></span> My Dashboard</strong></a>
    <hr>
    
    
    
    <!-- Form -->
				<form:form id="" action="/E-Questionnaire/updatePassword" method="POST"
						class="form-horizontal" commandName="edituser">
						<fieldset>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="firstName">Names </label>
								<div class="col-lg-10">
									<form:input path="fullName" class="form-control"
										placeholder="Full Name" id="one" type="text"
										value="${user.fullName}" readonly="true" />
									<form:errors path="fullName" cssStyle="color: #ff0000;" />
								</div>

							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="firstName">User Name </label>
								<div class="col-lg-10">
									<form:input path="userName" class="form-control"
										placeholder="userName" id="one" type="text"
										value="${user.userName}" readonly="true" />
									<form:errors path="userName" cssStyle="color: #ff0000;" />
								</div>

							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="otherName">Edit Password </label>
								<div class="col-lg-10">
									<form:input path="password" class="form-control"
										placeholder="password" type="text"
										value="${user.password}"  />
									<form:errors path="phoneNumber" cssStyle="color: #ff0000;" />
								</div>

							</div>



				
							<div class="form-group">
								<label class="col-lg-1 control-label" for="otherName"></label>
								<div class="col-lg-10">
									<form:input path="userId" class="form-control"
										placeholder="Email" type="hidden" value="${user.userId}" />
									<form:errors path="userId" cssStyle="color: #ff0000;" />
									<h5 style="color: #ff0000;">${error}</h5>
								</div>

							</div>









							<br> <br> <br>








							<div class="modal-footer">
								<button class="btn btn-primary" type="submit"
									onClick="return Checkfiles()">Submit</button>
								<button class="btn btn-default" data-dismiss="modal"
									type="button">Cancel</button>
							</div>
							<!-- end modal-footer -->
						</fieldset>
					</form:form>

	</div>
</body>
</html>