<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin-login.aspx.cs" Inherits="PeaceHotel.AdminPage.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../assets/css/login.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-wrap">
            <div class="login-html">
                <div class="logo">
                    <img src="../UserPage/assets/images/Peacelogo.png"  >
                </div>
                <input id="tab-1" type="radio" name="tab" class="sign-up" checked><label for="tab-1" class="tab">Admin Login</label>
                <div class="login-form">
                    <form method="POST" action="../LoginServlet" >
                        <div class="sign-up-htm">
                            <div class="group">
                                <label for="user" class="label">Username</label>
                                <input id="username" type="text" class="input" name="username" >
                            </div>						
                            <div class="group">                            
                                <label for="pass" class="label">Password</label>				
                                <input id="password" type="password" class="input" data-type="password" name="password" >
                            </div>

                            <div class="group">
                                <input id="check" type="checkbox" class="check" checked>
                                <label for="check"><span class="icon"></span> Keep me Signed in</label>
                            </div>
                            <div class="group">
                                <input type="submit" class="button" value="Sign In">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
