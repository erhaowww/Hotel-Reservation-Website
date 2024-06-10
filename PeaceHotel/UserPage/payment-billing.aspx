<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment-billing.aspx.cs" Inherits="PeaceHotel.AdminPage.payment_billing" %>

<!DOCTYPE html>
<style>
    
.backToMenu {
    position: absolute;
    top:10px;
    left:45px;
}
.backButton{
    display:block;
}

div.backToMenu > a > button {
    border: 2px solid grey;
    width: 60px;
    height: 45px;
    transition: all 0.15s ease;
    border-radius: 30px;
    margin:10px;
}
div.backToMenu > a > button:hover {
        -webkit-transform: translateY(-3px);
        transform: translateY(-3px);
    }
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <title></title>
</head>
<body>
        <div class="backToMenu">
        <a href="#" style="text-decoration: none;"><button class="backButton" style="font-size:30px;" onserverclick="Return_Click" runat="server">&#x2039;</button></a>
        </div>
    <form id="form1" runat="server">
          <div class="container">
  <div class="py-5 text-center">
            <div class="col-md-6 offset-md-3 text-center order-md-1">
      <h4 class="mb-3">Billing address</h4>
        <div class="row">
          <div class="col-md-6 mb-3">
              <asp:Label ID="Label1" runat="server" Text="First name"></asp:Label>
              <asp:TextBox ID="FirstName" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
          <div class="col-md-6 mb-3">
            <asp:Label ID="Label2" runat="server" Text="Last name"></asp:Label>
              <asp:TextBox ID="LastName" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
        </div>

        <div class="mb-3">
            <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text">@</span>
            </div>
              <asp:TextBox ID="UserName" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
          </div>
        </div>

        <div class="mb-3">
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
          <span class="text-muted">(Optional)</span>
               <asp:TextBox ID="Email" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="mb-3">
            <asp:Label ID="Label5" runat="server" Text="Address Line 1"></asp:Label>
            <asp:TextBox ID="Address" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="mb-3">
          <asp:Label ID="Label6" runat="server" Text="Address Line 2"></asp:Label>
            <asp:TextBox ID="Address2" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="row">
          <div class="col-md-5 mb-3">
               <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>
              <asp:DropDownList ID="Country" runat="server" Cssclass="custom-select d-block w-100 ">
                  <asp:ListItem>Malaysia</asp:ListItem>
               </asp:DropDownList>
          </div>
          <div class="col-md-4 mb-3">
            <asp:Label ID="Label8" runat="server" Text="State"></asp:Label>
              <asp:DropDownList ID="State" runat="server" Cssclass="custom-select d-block w-100 ">
                  <asp:ListItem>Sabah</asp:ListItem>
                  <asp:ListItem>Sarawak</asp:ListItem>
                  <asp:ListItem>Terengganu</asp:ListItem>
                  <asp:ListItem>Johor</asp:ListItem>
                  <asp:ListItem>Kedah</asp:ListItem>
                  <asp:ListItem>Kelantan</asp:ListItem>
                  <asp:ListItem>Melacca</asp:ListItem>
                  <asp:ListItem>Negeri Sembilan</asp:ListItem>
                  <asp:ListItem>Pahang</asp:ListItem>
                  <asp:ListItem>Penang</asp:ListItem>
                  <asp:ListItem>Perak</asp:ListItem>
                  <asp:ListItem>Perlis</asp:ListItem>
                  <asp:ListItem>Selangor</asp:ListItem>
                  <asp:ListItem>Kuala Lumpur</asp:ListItem>
                  <asp:ListItem>Labuan</asp:ListItem>
                  <asp:ListItem>Putrajaya</asp:ListItem>
               </asp:DropDownList>
          </div>
          <div class="col-md-3 mb-3">
              <asp:Label ID="Label9" runat="server" Text="Zip"></asp:Label>
            <asp:TextBox ID="Zip" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
            <div class="col-md-12">
                <asp:Button ID="Button1" CssClass="button" runat="server" Text="Confirm Payment" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
      </div>
              </div>
        
    </form>
</body>
</html>
