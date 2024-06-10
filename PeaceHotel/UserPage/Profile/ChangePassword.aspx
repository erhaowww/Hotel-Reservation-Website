<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" MasterPageFile="~/UserPage/MasterPage/Nav.Master"  Inherits="PeaceHotel.UserPage.Profile.ChangePassword" %>



   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       <style>
           *, *::before, *::after {
    margin: 0 0 0 0;
    padding: 0;
    box-sizing: border-box;
}
           table#ContentPlaceHolder1_ChangePassword1 {
    margin: auto;
}
           input#ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_ChangePasswordPushButton {
    color: black;
}

input#ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_CancelPushButton {
    color: black;
}

table{
    margin-top:180px;
}
       </style>

           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <link rel="stylesheet" href="style.css">


    <!-- 
    - google font link
  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&family=Source+Sans+Pro:wght@600;700&display=swap" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

                      <asp:ChangePassword ID="ChangePassword1" runat="server" ForeColor="Black" CancelDestinationPageUrl="~/UserPage/Login.aspx" ContinueDestinationPageUrl="~/UserPage/Login.aspx">
                      </asp:ChangePassword>

    

          </asp:Content>
 
