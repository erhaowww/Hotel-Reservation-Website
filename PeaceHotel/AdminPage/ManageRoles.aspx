<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageRoles.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.MasterPage.ManageRoles" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="shortcut icon" type="image/x-icon" href="../images/logo.jpeg">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/feathericon.min.css">
    <link rel="stylesheet" href="../assets/plugins/datatables/datatables.min.css">
    <link rel="stylesheet" href="../assets/plugins/morris/morris.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">

    <div class="main-wrapper">
        <div class="page-wrapper">
            <div class="content container-fluid">
                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                        </div>
                    </div>
                </div>



    <form id="form1" runat="server">
        <h2>Manage Roles</h2>
    <p>
        <b>Create a New Role: </b>
        <asp:TextBox ID="RoleName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RoleNameReqField" runat="server" 
            ControlToValidate="RoleName" Display="Dynamic" 
            ErrorMessage="You must enter a role name."></asp:RequiredFieldValidator>
        
        <br />
        <asp:Button ID="CreateRoleButton" runat="server" Text="Create Role" 
            onclick="CreateRoleButton_Click" />
    </p>
    <p>
        <asp:GridView ID="RoleList" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="RoleList_RowDeleting">
            <Columns>
                <asp:CommandField DeleteText="Delete Role" ShowDeleteButton="True" />
                <asp:TemplateField HeaderText="Role">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="RoleNameLabel" Text='<%# Container.DataItem %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
    </form>



            </div>
        </div>
    </div>
    </div>
</div>
    <script src="../assets/js/jquery-3.5.1.min.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/moment.min.js"></script>
    <script src="../assets/js/select2.min.js"></script>
    <script src="../assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="../assets/js/bootstrap-datetimepicker.min.js"></script>
    <script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../assets/plugins/datatables/datatables.min.js"></script>
    <script src="../assets/js/script.js"></script>
    <script>
        $(function () {
            $('#datetimepicker3').datetimepicker({
                format: 'LT'
            });
        });
        $("#product-form").submit(function () {
            var sizeChecked = $("[name='size']:checked").length > 0;
            if (!sizeChecked) {
                alert("Please check at least one checkbox on Product Size");
                return false;
            }
        });
        var loadFile = function (event) {
            var image = document.getElementById('output');
            image.src = URL.createObjectURL(event.target.files[0]);
        };
    </script>


</asp:Content>

