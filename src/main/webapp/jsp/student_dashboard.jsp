<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="net.project.model.User"%>
<%@page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Student Dashboard</title>
       <style type="text/css">
		body {
		background-color: black;
		color: white;
		font-family: Arial, sans-serif;
		text-align: center; /* center the page text */
		}
		h1 {
		color: white;
		font-size: 36px; /* increase font size for better visibility */
		margin-top: 50px; /* add margin to separate from the top */
		}
		table {
		margin: auto; /* center the table */
		}
		table, th, td {
		border: 1px solid white; /* update the border color */
		border-collapse: collapse;
		padding: 10px;
		}
		th {
		background-color: #222; /* add background color to table headers */
		color: white;
		}
		td {
		background-color: #444; /* add background color to table cells */
		color: white;
		}
		ul{
		list-style-type: none;
		}
		a {
  		text-decoration: none;
  		color: purple;
		}
	</style>
</head>
<body>

	<%User sessionUser = (User)session.getAttribute("user"); %>

    <h1>Welcome:  <%=sessionUser.getFirstName() +" " + sessionUser.getLastName()%></h1>
    <h2>Student Dashboard</h2>

    <h3>Actions</h3>
    <ul>
        <li><a href="viewappointments.jsp">View Appointments</a></li>
        <li><a href="schedule_dashboard.jsp">Schedule Appointment</a></li>
        <li><a href="deleteappointment.jsp">Cancel Appointment</a></li>
    </ul>

   <form action="<%= request.getContextPath() %>/logout" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
