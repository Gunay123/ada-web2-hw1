<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
    <%@ page import = "ada.gunay.abbasov.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>Login Form</h3>  
<%  
String fName = request.getParameter("email");
String fPassword= request.getParameter("password");

//All system.out prints are for testing the system
System.out.println(fName);
System.out.println(fPassword);

StringBuilder sb = new StringBuilder();
String rev;

//for reversing the password to check
for(int i = fName.length() - 1; i >= 0; i--)
{
    sb.append(fName.charAt(i));
}

rev = sb.toString();
if(fPassword.equals(rev)){
	System.out.println("Correct");
	Date date = new Date();
	String sData = date.toString();
	String sIP = request.getRemoteAddr().toString();
	System.out.println(sIP);
	System.out.println(sData);
	
	
	//to store data to bean
	LoginBean lb = new LoginBean();
	lb.setLogin(fName);
	lb.setIp(sIP);
	lb.setTime(sData);
	
	
	//create session to get it from another page in the same session
	session.setAttribute("loginBean",lb);
	
	
	
 %>
 <%--In here changing page to greet.jsp --%>
	<jsp:forward page="greet.jsp"/>
	<% 
}else{
	out.println("Incorrect");
	

%>
<jsp:forward page="login.html"/>
<%
}
%>


  

</body>
</html>