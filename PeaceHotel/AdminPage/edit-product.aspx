<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit-product.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.edit_product" %>


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

    <style>
        .images {
            display: flex;
            flex-wrap: wrap;
            margin-top: 20px;
        }

    .images .img,
    .images .pic {
        flex-basis: 31%;
        margin-bottom: 10px;
        border-radius: 4px;
        max-width: 100px;
    }

    .images .img {
        width: 112px;
        height: 93px;
        background-size: cover;
        margin-right: 10px;
        background-position: center;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        position: relative;
        overflow: hidden;
    }

        .images .img:nth-child(3n) {
            margin-right: 0;
        }

        .images .img span {
            display: none;
            text-transform: capitalize;
            z-index: 2;
        }

        .images .img::after {
            content: '';
            width: 100%;
            height: 100%;
            transition: opacity .1s ease-in;
            border-radius: 4px;
            opacity: 0;
            position: absolute;
        }

        .images .img:hover::after {
            display: block;
            background-color: #000;
            opacity: .5;
        }

        .images .img:hover span {
            display: block;
            color: #fff;
        }

        .images .pic {
            background-color: #848EA1;
            align-self: center;
            text-align: center;
            padding: 40px 0;
            text-transform: uppercase;
            color: #F5F7FA;
            font-size: 12px;
            cursor: pointer;
            background-size: cover;
        }

        .col-md-12 .addBtnBox .form-control {
            /*float:left;*/
            max-width: 160px;
            color: white;
        }
        .noDisplay{
            display:none;
        }
    </style>

    <div class="main-wrapper">
        <div class="page-wrapper">
            <div class="content container-fluid">
                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title mt-5">Update Room</h3>
                        </div>
                    </div>
                </div>
                <form runat="server" enctype="multipart/form-data" id="Form1">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row formtype">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Room Type</label>
                                        <asp:DropDownList ID="roomType" runat="server"  CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="roomType" DataValueField="roomTypeId">
                                            
                                        </asp:DropDownList>

                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [roomType], [roomTypeId] FROM [RoomType] ORDER BY CASE WHEN [roomType] = @t THEN 1 ELSE 2 END, [roomType]">
                                            <SelectParameters>
                                                <asp:QueryStringParameter DefaultValue="" Name="t" QueryStringField="roomType" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                                    </div>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [roomType], [roomTypeId] FROM [RoomType] WHERE ([deleted] = @deleted)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="0" Name="deleted" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Room Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="roomName" Display="Dynamic" ErrorMessage="Required input room name." CssClass="error">*</asp:RequiredFieldValidator>
                                        <asp:TextBox ID="roomName" CssClass="form-control" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Room No</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="roomNo" Display="Dynamic" ErrorMessage="Required input room number." CssClass="error">*</asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="roomNo" Display="Dynamic" ErrorMessage="Room Number must in 1 to 9999" MaximumValue="9999" MinimumValue="1" Type="Integer" CssClass="error">*</asp:RangeValidator>
                                        <asp:TextBox ID="roomNo" CssClass="form-control" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Room Status</label>
                                        <asp:DropDownList ID="roomStatus" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="available">Available</asp:ListItem>
                                            <asp:ListItem Value="NOTavailable">Not Available</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <label>Room Price</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="roomPrice" Display="Dynamic" ErrorMessage="Required input room price." CssClass="error">*</asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="roomPrice" Display="Dynamic" ErrorMessage="Room Price must in 1 to 999.99" MaximumValue="999.99" MinimumValue="1" Type="Double" CssClass="error">*</asp:RangeValidator>
                                    <div class="input-group mb-3">
                                        <asp:TextBox ID="roomPrice" CssClass="form-control" runat="server" Text=''></asp:TextBox>
                                        <div class="input-group-append">
                                            <span class="input-group-text" id="basic-addon2">MYR/night</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Room Provided</label>
                                        <asp:CustomValidator ID="cvmodulelist" runat="server" ClientValidationFunction="ValidateCheckBoxList" ErrorMessage="Please Select At least one checkbox" Display="Dynamic" CssClass="error">*Please Select At least one checkbox</asp:CustomValidator> 
                                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                            <asp:ListItem>Desk bell</asp:ListItem>
                                            <asp:ListItem>Single bed</asp:ListItem>
                                            <asp:ListItem>Double bed</asp:ListItem>
                                            <asp:ListItem>Triple bed</asp:ListItem>
                                            <asp:ListItem>Towels</asp:ListItem>
                                            <asp:ListItem>Wifi</asp:ListItem>
                                        </asp:CheckBoxList>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Room Images</label>
                                 
                                 
                                        <div class="images" id="divimages1">
                                                   <asp:Label ID="Label1" style="margin-right:20px;" runat="server" ></asp:Label>
                                            <div class="pic" id="pic1" onclick="triggerClick1()">
                                                Update
                                                <asp:FileUpload ID="image1" Cssclass="inputfile1 noDisplay" runat="server" />
                                            </div>
                                            </div>
                                        </div>
                                        <div class="images" id="divimages2">
                                             <asp:Label ID="Label2" style="margin-right:20px;" runat="server" ></asp:Label>
                                            <div class="pic" id="pic2" onclick="triggerClick2()">
                                                Update
                                               
                                                <asp:FileUpload ID="image2" Cssclass="inputfile2 noDisplay" runat="server" />
                                            </div>
                                        </div>
                                        <div class="images" id="divimages3">
                                             <asp:Label ID="Label3" style="margin-right:20px;" runat="server" ></asp:Label>
                                            <div class="pic" id="pic3" onclick="triggerClick3()">
                                                Update
                                               
                                                 <asp:FileUpload ID="image3" Cssclass="inputfile3 noDisplay" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Description 1</label>
                                        <asp:TextBox ID="description1" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Description 1 cannot be empty" ControlToValidate="description1" CssClass="error" Display="Dynamic">*</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-6"  id="displayControl2">
                                    <div class="form-group">
                                        <label>Description 2</label>
                                        <asp:TextBox ID="description2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6" id="displayControl3">
                                    <div class="form-group">
                                        <label>Description 3</label>
                                        <asp:TextBox ID="description3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>


                            </div>
                           
                        </div>
                     <div class="col-md-12">
                            <div class="form-group">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" CssClass="error"/>
                            </div>
                        </div>
        
                        <div class="form-group">
                            <asp:Button ID="submitBtn" runat="server" Text="Update Room" CssClass="btn btn-primary buttonedit" OnClick="submitBtn_Click" />
                        </div>

                </form>
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
        var i = 2;
        $(".buttonAddDescription").click(function () {
            document.getElementById("displayControl" + i).style.display = "block";
            i++;
            if (i > 3) {
                document.getElementById("btnDisplay").style.display = "none";
            }
        });
    </script>
    <script>
        function ValidateModuleList(source, args) {
            var chkListModules = document.getElementById('<%= CheckBoxList1.ClientID %>');
            var chkListinputs = chkListModules.getElementsByTagName("input");
            for (var i = 0; i < chkListinputs.length; i++) {
                if (chkListinputs[i].checked) {
                    args.IsValid = true;
                    return;
                }
            }
            args.IsValid = false;
        }
    </script>

    <script>
        function triggerClick1() {
            document.getElementById('<%= image1.ClientID %>').click();
        }

        function triggerClick2() {
            document.getElementById('<%= image2.ClientID %>').click();
        }

        function triggerClick3() {
            document.getElementById('<%= image3.ClientID %>').click();
        }

        $('#<%= image1.ClientID%>').change(function () {
            // Check if any file is selected.
            if (!(this.files.length > 0)) {
                document.querySelector('#pic1').setAttribute("style", "background-image: url(\"https://i.ibb.co/0Y9JcSV/upload-image.png\")");
                return false;
            }

            var fileInput = document.getElementById('<%= image1.ClientID%>');
            var filePath = fileInput.value;
            // Allowing file type
            var allowedExtensions = /(\.PNG|\.png|\.JPEG|\.jpeg|\.jpg|\.JPG)$/i;

            if (!allowedExtensions.exec(filePath)) {
                document.querySelector('#pic1').setAttribute("style", "background-image: url(\"https://i.ibb.co/0Y9JcSV/upload-image.png\")");

                swal({
                    title: "Sorry!",
                    text: "Only image having extension jpg/png/jpeg is allowed",
                    icon: "warning",
                    button: "OK",
                });
                fileInput.value = '';
                return false;
            }

            // check file size
            const fileSize = this.files[0].size / 1024 / 1024; // in MiB
            if (fileSize > 1) {
                document.querySelector('#pic1').setAttribute("style", "background-image: url(\"https://i.ibb.co/0Y9JcSV/upload-image.png\")");

                swal({
                    title: "Sorry!",
                    text: "Image size exceeds 1MB",
                    icon: "warning",
                    button: "OK",
                });
                $(this).val(''); //for clearing with Jquery
                return false;

            }

            var reader = new FileReader()
            reader.onload = function (event) {
                document.querySelector('#pic1').setAttribute("style", "background-image: url(" + event.target.result + ")");

            }
            reader.readAsDataURL(this.files[0])

            //let reader = new FileReader();
            //reader.addEventListener("load", function () {
            //    window.src = reader.result;
            //    $('#image1').val('');
            //}, false);
            //if (this.files[0]) {
            //    reader.readAsDataURL(this.files[0]);
            //}
        });

        $('#<%= image2.ClientID%>').change(function () {
            // Check if any file is selected.
            if (!(this.files.length > 0)) {
                document.querySelector('#pic2').setAttribute("style", "background-image: url(\"https://i.ibb.co/0Y9JcSV/upload-image.png\")");
                return false;
            }

            var fileInput = document.getElementById('<%= image2.ClientID%>');
            var filePath = fileInput.value;
            // Allowing file type
            var allowedExtensions = /(\.PNG|\.png|\.JPEG|\.jpeg|\.jpg|\.JPG)$/i;

            if (!allowedExtensions.exec(filePath)) {
                document.querySelector('#pic2').setAttribute("style", "background-image: url(\"https://i.ibb.co/0Y9JcSV/upload-image.png\")");

                swal({
                    title: "Sorry!",
                    text: "Only image having extension jpg/png/jpeg is allowed",
                    icon: "warning",
                    button: "OK",
                });
                fileInput.value = '';
                return false;
            }

            // check file size
            const fileSize = this.files[0].size / 1024 / 1024; // in MiB
            if (fileSize > 1) {
                document.querySelector('#pic2').setAttribute("style", "background-image: url(\"https://i.ibb.co/0Y9JcSV/upload-image.png\")");

                swal({
                    title: "Sorry!",
                    text: "Image size exceeds 1MB",
                    icon: "warning",
                    button: "OK",
                });
                $(this).val(''); //for clearing with Jquery
                return false;

            }

            var reader = new FileReader()
            reader.onload = function (event) {
                document.querySelector('#pic2').setAttribute("style", "background-image: url(" + event.target.result + ")");

            }
            reader.readAsDataURL(this.files[0])

            //let reader = new FileReader();
            //reader.addEventListener("load", function () {
            //    window.src = reader.result;
            //    $('#image1').val('');
            //}, false);
            //if (this.files[0]) {
            //    reader.readAsDataURL(this.files[0]);
            //}
        });
        
        $('#<%= image3.ClientID%>').change(function () {
            // Check if any file is selected.
            if (!(this.files.length > 0)) {
                document.querySelector('#pic3').setAttribute("style", "background-image: url(\"https://i.ibb.co/0Y9JcSV/upload-image.png\")");
                return false;
            }

            var fileInput = document.getElementById('<%= image3.ClientID%>');
            var filePath = fileInput.value;
            // Allowing file type
            var allowedExtensions = /(\.PNG|\.png|\.JPEG|\.jpeg|\.jpg|\.JPG)$/i;

            if (!allowedExtensions.exec(filePath)) {
                document.querySelector('#pic3').setAttribute("style", "background-image: url(\"https://i.ibb.co/0Y9JcSV/upload-image.png\")");

                swal({
                    title: "Sorry!",
                    text: "Only image having extension jpg/png/jpeg is allowed",
                    icon: "warning",
                    button: "OK",
                });
                fileInput.value = '';
                return false;
            }

            // check file size
            const fileSize = this.files[0].size / 1024 / 1024; // in MiB
            if (fileSize > 1) {
                document.querySelector('#pic3').setAttribute("style", "background-image: url(\"https://i.ibb.co/0Y9JcSV/upload-image.png\")");

                swal({
                    title: "Sorry!",
                    text: "Image size exceeds 1MB",
                    icon: "warning",
                    button: "OK",
                });
                $(this).val(''); //for clearing with Jquery
                return false;

            }

            var reader = new FileReader()
            reader.onload = function (event) {
                document.querySelector('#pic3').setAttribute("style", "background-image: url(" + event.target.result + ")");

            }
            reader.readAsDataURL(this.files[0])

            //let reader = new FileReader();
            //reader.addEventListener("load", function () {
            //    window.src = reader.result;
            //    $('#image1').val('');
            //}, false);
            //if (this.files[0]) {
            //    reader.readAsDataURL(this.files[0]);
            //}
        });

    </script>
    <script>
        function ValidateCheckBoxList(source, args) {
            var chkListModules = document.getElementById('<%= CheckBoxList1.ClientID %>');
            var chkListinputs = chkListModules.getElementsByTagName("input");
            for (var i = 0; i < chkListinputs.length; i++) {
                if (chkListinputs[i].checked) {
                    args.IsValid = true;
                    return;
                }
            }
            args.IsValid = false;
        }
    </script>
    <style type="text/css">
        .error{
            color:red;
        }
    </style>
</asp:Content>


