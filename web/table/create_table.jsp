<%@page import="project.connectionproviderclass"%>
<%@page import="java.sql.*"%>
<%
    try
    {
        Connection con=connectionproviderclass.getcon();
        Statement st=con.createStatement();
        String q1="create table users(name varchar(100),email varchar(100)primary key,mobilenumber int"
                + "Sequrityquestion varchar(100),answer varchar(100),password varchar(100))";
        System.out.print(q1);
        st.execute(q1);
         System.out.print("Table created");
         con.close();
    }
    catch(Exception e){
         System.out.print(e);
    }
%>