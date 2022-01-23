

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%@page import="java.sql.*,java.util.*"%>
      <%@page import="java.sql.*,java.util.*"%>
        <%@page import="project.connectionproviderclass"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobilenumber=request.getParameter("mobilenumber");
String SecurityQuestion=request.getParameter("SecurityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
    try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","");
Statement st=conn.createStatement();
int i=st.executeUpdate("INSERT into signup VALUES ('"+name+"','"+email+"','"+mobilenumber+"','"+SecurityQuestion+"','"+answer+"','"+password+"')");
// i=st.executeUpdate("INSERT into signup VALUES(','Nawaz','Street4')");
ResultSet rs= st.executeQuery("select * from signup");
   response.sendRedirect("signup.jsp?msg=valid");
out.println("Thank you for registering: Data inserted");
}
catch(Exception e)
{
    System.out.print(e);
       response.sendRedirect("signup.jsp?msg=invalid");
e.printStackTrace();
}
%>
    </body>
</html>
