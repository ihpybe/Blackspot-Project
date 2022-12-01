<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.sql.* " %>  
  <%@ page import = "com.sneha.* " %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String Location= request.getParameter("id");
try
{
Connection conn = connectDB.connect();
PreparedStatement ps2 = conn.prepareStatement("delete from blackspots where Location=? ");
ps2.setString(1,Location);
int res = ps2.executeUpdate();
if(res>=0)
{
	System.out.println("Spot deleted successfully!!!!");
	response.sendRedirect("viewSpots.jsp");
}
else
{
	System.out.println("Spot Not deleted !!!!");
	response.sendRedirect("error.html");
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>