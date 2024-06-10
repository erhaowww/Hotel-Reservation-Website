<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="PeaceHotel.UserPage.Payment2" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>

    <link rel="stylesheet" href="./assets/css/Payment.css"/>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function ClientValidator1_ClientValidate(source, args) {
            var num = args.Value;
            var pattern = /^[4|5]\d{13}$/;
            if (!pattern.text(num)) {
                args.IsValid = false;
                alert("Credit Card Number Invalid");
            }
        }
    </script>
    <style type="text/css">
        .error{
            color:red;
        }
    </style>
</head>
<body style="width:100%;">
    
    <div class="backToMenu">
        <a href="./Home.aspx" style="text-decoration: none;"><button class="backButton" style="font-size:30px;">&#x2039;</button></a>
        <a href="./Home.aspx" style="text-decoration: none;"><button class="backMenu" style="font-size:30px;">Back To Menu</button></a>
    </div>
    <form id="form1" runat="server">
<div class="payment-container">
  <div class="payment__types" id="paymentTypes">
          <div class="payment__type payment__type--cc payment-btn active" onclick="showCard()">
            <i class="icon icon-credit-card"></i>Credit Card</div>
          <div class="payment__type payment__type--paypal payment-btn" onclick="showPaypal()">
            <i class="icon icon-paypal"></i>Paypal</div>
  </div>
  
  <div class="card" id="card">
      <asp:Button ID="Submit" CssClass="proceed" runat="server" Text="&#8680;" OnClick="Submit_Click" commandname="card"/>
      
    
   <img src="https://seeklogo.com/images/V/VISA-logo-62D5B26FE1-seeklogo.com.png" class="logo-card"/>
    
 <label>Card number:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CardNumber" Display="Dynamic" ErrorMessage="Required input card number." CssClass="error" ValidationGroup="ValidationSummary1">*</asp:RequiredFieldValidator>
     <asp:CustomValidator ID="CustomValidator1" runat="server" CssClass="error" Display="Dynamic" ErrorMessage="Credit Card Number Invalid" ControlToValidate="CardNumber"  Text="*Credit Card Number Invalid" ValidationGroup="ValidationSummary1"></asp:CustomValidator>
 </label>
      <asp:TextBox ID="CardNumber" CssClass="card-detail input cardnumber" placeholder="41234567890123" runat="server"></asp:TextBox>
 <label>Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CardName" Display="Dynamic" ErrorMessage="Required input name." CssClass="error" ValidationGroup="ValidationSummary1">*</asp:RequiredFieldValidator></label>
      <asp:TextBox ID="CardName" CssClass="card-detail input name" runat="server" placeholder="abc"></asp:TextBox>
 <label class="toleft">CCV:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CardCCV" Display="Dynamic" ErrorMessage="Required input CCV." CssClass="error" ValidationGroup="ValidationSummary1">*</asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CardCCV" Display="Dynamic" ErrorMessage="CCV must have 3 digit" ValidationExpression="[0-9]{3}" CssClass="error" ValidationGroup="ValidationSummary1">*</asp:RegularExpressionValidator>
 </label>
      <asp:TextBox ID="CardCCV" CssClass="card-detail input toleft ccv" runat="server" placeholder="123"></asp:TextBox>
  </div>
  <div class="paypal" id="paypal">
      <img src="../UserPage/assets/images/paypal.png" width="90" height="50"/><br />
      <table style="margin:10px;">
          <tr>
              <td><lable>Email:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Required input email." CssClass="error" ValidationGroup="ValidationSummary1">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Must follow email format." ValidationExpression="/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/" ValidationGroup="ValidationSummary1"></asp:RegularExpressionValidator>
                  </lable></td>
              <td><asp:TextBox ID="email" runat="server" CssClass="paypal-id"></asp:TextBox></td>
          </tr>
          <tr>
              <td><lable>Password:<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="Required input password." CssClass="error" ValidationGroup="ValidationSummary1">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="8-15 characters and contain uppercase letter ,lowercase letter and one special character." CssClass="error" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$" ValidationGroup="ValidationSummary1">*</asp:RegularExpressionValidator>
                  </lable></td>
              <td><asp:TextBox ID="password" runat="server" CssClass="paypal-id"></asp:TextBox></td>
          </tr>
          <tr>
              <td colspan="2">
                  <asp:Button ID="Submit1" CssClass="paypal-submit" runat="server" Text="Make Payment" OnClick="Submit_Click" CommandName="paypal"/></td>
          </tr>
      </table>
      
  </div>
  <div class="receipt">
      
    <div class="receipt-detail">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" ValidationGroup="ValidationSummary1" />
    <div class="col"><p>Cost:</p>
    <h2 class="cost">
        <asp:Label ID="Cost" runat="server"></asp:Label>
    </h2>
    <p>Name:</p>
    <h2 class="buyer">
        <asp:Label ID="Buyer" runat="server"></asp:Label>
    </h2>
    </div>
    <div class="col">
      <p>Booking Rooms:</p>

      <h3 class="booking-rooms"><asp:Label ID="bRoom" runat="server" Text=""></asp:Label></h3>
        
      <p class="booking-rooms description">Description:<asp:Label ID="bRoomDesc" runat="server" Text=""></asp:Label></p>
      <p class="booking-rooms price">Price:<asp:Label ID="bRoomPrice" runat="server" Text=""></asp:Label></p>
      <p class="booking-rooms date">Date:<asp:Label ID="bRoomDate" runat="server" Text=""></asp:Label></p><br/>
    </div>
    <p class="comprobe" style="clear:both">This information will be sended to your email</p>
    </div>
  </div>
</div>
        </form>
</body>
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.8/dist/sweetalert2.all.min.js"></script>
    <script>
        var header = document.getElementById("paymentTypes");
        var btns = header.getElementsByClassName("payment-btn");
        for (var i = 0; i < btns.length; i++) {
            btns[i].addEventListener("click", function () {
                var current = document.getElementsByClassName("active");
                current[0].className = current[0].className.replace(" active", "");
                this.className += " active";
            });
        }

        function showCard() {
            document.getElementById("card").style.display = "block";
            document.getElementById("paypal").style.display = "none";
            document.getElementById("<%=RequiredFieldValidator1.ClientID %>").enabled = true;
            document.getElementById("<%=RequiredFieldValidator2.ClientID %>").enabled = true;
            document.getElementById("<%=RequiredFieldValidator3.ClientID %>").enabled = true;
            document.getElementById("<%=RegularExpressionValidator1.ClientID %>").enabled = true;
            document.getElementById("<%=CustomValidator1.ClientID %>").enabled = true;
            document.getElementById("<%=RequiredFieldValidator4.ClientID %>").enabled = false;
            document.getElementById("<%=RequiredFieldValidator5.ClientID %>").enabled = false; 
            document.getElementById("<%=RegularExpressionValidator2.ClientID %>").enabled = false;
            document.getElementById("<%=RegularExpressionValidator3.ClientID %>").enabled = false;
        }
        function showPaypal() {
            document.getElementById("card").style.display = "none";
            document.getElementById("paypal").style.display = "block";
            document.getElementById("<%=RequiredFieldValidator1.ClientID %>").enabled = false;
            document.getElementById("<%=RequiredFieldValidator2.ClientID %>").enabled = false;
            document.getElementById("<%=RequiredFieldValidator3.ClientID %>").enabled = false;
            document.getElementById("<%=RegularExpressionValidator1.ClientID %>").enabled = false;
            document.getElementById("<%=CustomValidator1.ClientID %>").enabled = false;
            document.getElementById("<%=RequiredFieldValidator4.ClientID %>").enabled = true;
            document.getElementById("<%=RequiredFieldValidator5.ClientID %>").enabled = true; 
            document.getElementById("<%=RegularExpressionValidator2.ClientID %>").enabled = true;
            document.getElementById("<%=RegularExpressionValidator3.ClientID %>").enabled = true;
        }
    </script>

</html>