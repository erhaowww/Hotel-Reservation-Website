<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" MasterPageFile="~/UserPage/MasterPage/Nav.Master" Inherits="PeaceHotel.login" %>



   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       <style>
           *, *::before, *::after {
    margin: 0 0 0 0;
    padding: 0;
    box-sizing: border-box;
}
           table {
    margin: auto;
}
           form#form1 {
    margin: 106px;
}
           input[type="submit"]{
               color: black;
           }
          input#ContentPlaceHolder1_Login1_RememberMe {
    display: inline-block;
    max-width: 45px;
}
          input#ContentPlaceHolder1_Login1_LoginButton {
    width: 283px;
    margin: auto;
    margin-left: 155px;
}   
          input#ContentPlaceHolder1_Login1_RememberMe {
    margin-left: 111px;
    margin-top: 10px;
    margin-bottom: 16px;
}
          input#ContentPlaceHolder1_Button3 {
    margin-left: 684px;
}
       </style>
                      <asp:Login ID="Login1" runat="server" Width="471px" ForeColor="Black" Height="145px" DestinationPageUrl="~/UserPage/Home.aspx"  >
                      </asp:Login>

 <%--           <asp:Login ID="Login2" runat="server" OnLoggedIn="Login1_LoggedIn" OnLoggingIn="Login1_LoggingIn" >
        </asp:Login>--%>

          <br />
       <asp:Button ID="Button3" runat="server" ForeColor="Black" Height="25px" Text="Register" Width="283px" PostBackUrl="~/UserPage/Register.aspx" />

    

<%--          <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       Forget your password?
       <asp:HyperLink ID="HyperLink1" runat="server" Height="16px" Width="93px" NavigateUrl="~/UserPage/Profile/ForgetPassword.aspx">Click me</asp:HyperLink>
       <br />
       <br />--%>

    

          </asp:Content>
 
