<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Employee Form</title>
</head>
<body>
<h2>Employee Form</h2>

<form method="post" action="/save" enctype="multipart/form-data">

    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

    <label for="name">Name:</label>
    <input type="text" id="name" name="name"  required/><br/><br/>

    <label for="jobTitle">Job Title:</label>
    <input type="text" id="jobTitle" name="jobTitle"  required/><br/><br/>

    <label for="project">Project:</label>
    <input type="text" id="project" name="project"  required/><br/><br/>

    <label for="lead">Lead:</label>
    <input type="text" id="lead" name="lead"  required/><br/><br/>

    <label for="role">Role:</label>
    <input type="text" id="role" name="role"  required/><br/><br/>

    <label for="gender">Gender:</label>
    <input type="text" id="gender" name="gender"  required/><br/><br/>

    <label for="emailId">Email ID:</label>
    <input type="text" id="emailId" name="emailId"  required/><br/><br/>

    <label for="employeeId">Employee ID:</label>
    <input type="text" id="employeeId" name="employeeId"  required/><br/><br/>

    <label for="dateOfJoining">Date of Joining:</label>
    <input type="text" id="dateOfJoining" name="dateOfJoining"  required/><br/><br/>

    <label for="photo">Photo:</label>
    <input type="file" id="photo" name="photo" required/><br/><br/>

    <input type="submit" value="Submit"/>
</form>

</body>
</html>
