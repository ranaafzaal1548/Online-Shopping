<%-- 
    Document   : page1
    Created on : Nov 29, 2021, 12:23:42 PM
    Author     : TAQASUR RASHEED 
MUHAMMAD AFZAAL
ALI AKBAR
--%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
    <div id='container'>
        <div class='signup'>
            <form action="Actionlogin.jsp" method="post">
                <input type="email" name="email" placeholder="email" required>
                <input type="password" name="password" placeholder="Enter password " required>
                <input type="Submit" value="Login" >
            </form>
            <h2><a href="signup.jsp">SignUp</a></h2>
        </div>
        <div class='whysignLogin'>
            <%String msg=request.getParameter("msg");
            if("notexist".equals(msg)){%>
            <h1>Incorrect Username or Password</h1>
            <%} %>
            <%if("invalid".equals(msg)){%>
            <h1>Invalid, Try again !</h1>
            <%} %>
            <h2>Online Shopping</h2>
            <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
        
        </div>
    </div>
</body>
</html>