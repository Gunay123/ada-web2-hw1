<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "ada.gunay.abbasov.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Greetin Page!</title>
<link href="../css/css.css" rel="stylesheet" type="text/css">
</head>
<body>

  	<%
  	//we get our session scope in here, too
  	LoginBean lb = (LoginBean) session.getAttribute("loginBean");
	%>
	
	 <%--I used EL in here to ease the getting process --%>
	The user ${loginBean.login} is logged in at ${loginBean.ip} from ${loginBean.time}
		  
		 
</body>
</html>