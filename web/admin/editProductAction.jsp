 <%@page import="java.sql.*,java.util.*"%>
        <%@page import="project.connectionproviderclass"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","");
Statement st=conn.createStatement();
int i=st.executeUpdate("INSERT into product VALUES (where id='"+id+"','"+name+"','"+category+"','"+price+"','"+active+"')");
if(active.equals("No")){
    st.executeUpdate("delete from product where id='"+id+"'");
}
// i=st.executeUpdate("INSERT into signup VALUES(','Nawaz','Street4')");
ResultSet rs= st.executeQuery("select *from product");
   response.sendRedirect("addNewProduct.jsp?msg=valid");
//out.println("Thank you for registering: Data inserted");
}
catch(Exception e)
{
    System.out.print(e);
       response.sendRedirect("addNewProduct.jsp?msg=invalid");
e.printStackTrace();
}
%>