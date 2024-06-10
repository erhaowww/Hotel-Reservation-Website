

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserPage/MasterPage/Nav.Master" CodeBehind="Register.aspx.cs" Inherits="PeaceHotel.UserPage.Register" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <style>
         *, *::before, *::after {
    margin: 0 0 0 0;
    padding: 0;
    box-sizing: border-box;
}
         table#ContentPlaceHolder1_CreateUserWizard1 {
          margin: auto;
        }

.form input[type="submit"] {
    color: black;
    max-width: 150px;
    display: none;
}
input#ContentPlaceHolder1_Button3 {
    margin: auto;
}
input#ContentPlaceHolder1_Button4 {
    margin: auto;
}


input#ContentPlaceHolder1_CreateUserWizard1___CustomNav0_StepNextButtonButton {
    color: black;
    max-width: 159px;
}

input#ContentPlaceHolder1_CreateUserWizard1_CompleteStepContainer_ContinueButtonButton {
    color: black;
    width: 122px;
    margin: auto;
    margin-top: 20px;
    height: 37px;
}
     </style>
     <%--emailregularexpression="^[a-zA-Z][\w\.-][a-zA-Z0-9]@[a-zA-Z0-9][\w\.-][a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$" emailregularexpressionerrormessage="E-mail address must be in a valid format"--%>
     <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/UserPage/Login.aspx.cs" OnCreatedUser="CreateUserWizard1_CreatedUser1">
         <WizardSteps>
             <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
             </asp:CreateUserWizardStep>
             <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
             </asp:CompleteWizardStep>
         </WizardSteps>
     </asp:CreateUserWizard>

 <%--                          <asp:CreateUserWizard ID="CreateUserWizard2" runat="server" class="form" Width="438px" ContinueDestinationPageUrl="~/UserPage/Login.aspx" Height="16px" OnCreatedUser="CreateUserWizard1_CreatedUser">
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" />
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>--%>
                    

<%--     <asp:Button ID="Button3" runat="server" Height="30px" Margin="1580px" Text="Go to Login" Width="120px" ForeColor="Black" OnClick="Button3_Click1" PostBackUrl="~/UserPage/Login.aspx" />
     <br />
     <asp:Button ID="Button4" runat="server" Height="30px" Text="Create User" Width="120px" ForeColor="Black" OnClick="Button4_Click" PostBackUrl="~/UserPage/Login.aspx" />

                 --%>   

          </asp:Content>
