<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactForm.aspx.cs" MasterPageFile="~/UserPage/MasterPage/Nav.Master" Inherits="PeaceHotel.showPss" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
  color: black;
  opacity: 1; /* Firefox */
}
input[type=submit] {
    background-color: black;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    max-width: 100px;
}
h3 {
    margin: auto;
    text-align: center;
    margin: 50px 20px;
}
input[type=submit]:hover {
  background-color: #45a049;
}

.container2 {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    margin-top: 100px;
    max-width: 762px;
    margin: auto;
}

.error{
    color:red;
}
</style>
</head>
<body>

<h3>Contact Us Form</h3>


   
   
<div class="container2">

    <label for="fname">Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Required Name." CssClass="error">*</asp:RequiredFieldValidator>

      <asp:TextBox ID="TextBox1" required runat="server"  placeholder="Your name.." ></asp:TextBox>

    <label for="subject">Subject</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="subject" Display="Dynamic" ErrorMessage="Required Subject." CssClass="error">*</asp:RequiredFieldValidator>
    <textarea id="subject" name="subject" placeholder="Write something.." runat="server" required style="height:200px"></textarea>
      
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" />
    </br>
      <asp:Button ID="Button1" class="btn" runat="server" Text="Submit" OnClick="Button1_Click1" />

 
</div>

</body>
</html>


         </asp:Content>
 
