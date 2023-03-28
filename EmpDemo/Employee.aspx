<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EmpDemo.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <script src="JS/jquery-3.6.0.js"></script>
<%--    <script>
        $(document).ready(function () {
            $("#form1").submit(function (e) {
                e.preventDefault();
                alert("Ok");
            });
        });
    </script>--%>
</head>
<body>
    <div class="row">
        <div class="col-4">
            <form id="form1" runat="server">
                <div class="row">
                    <div class="col-4">
                        Id
                    </div>
                    <div class="col-8">
                        <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        Name
                    </div>
                    <div class="col-8">
                        <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        Address
                    </div>
                    <div class="col-8">
                        <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        Gender
                    </div>
                    <div class="col-8">
                        <asp:RadioButton Text="Male" ID="rdbMale" Checked="true" GroupName="Gender" runat="server" />
                        <asp:RadioButton Text="Female" ID="rdbFemale" GroupName="Gender" runat="server" />

                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        MobileNo
                    </div>
                    <div class="col-8">
                        <asp:TextBox runat="server" ID="txtMobileNo" CssClass="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        Email
                    </div>
                    <div class="col-8">
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        Joining Date
                    </div>
                    <div class="col-8">
                        <asp:TextBox runat="server" ID="txtJoiningDate" CssClass="form-control" TextMode="Date" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        Hobbies
                    </div>
                    <div class="col-8">
                        <asp:CheckBox Text="Cricket" ID="chkCricket" runat="server" />
                        <asp:CheckBox Text="Coding" ID="chkCoding" runat="server" /><br />
                        <asp:CheckBox Text="Reading" ID="chkReading" runat="server" />
                        <asp:CheckBox Text="Swimming" ID="chkSwimming" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        Department
                    </div>
                    <div class="col-8">
                        <asp:DropDownList runat="server" ID="cmbDepartment">
                            <asp:ListItem Text="IT" />
                            <asp:ListItem Text="CSE" />
                            <asp:ListItem Text="MECHANICAL" />
                            <asp:ListItem Text="E&TC" />
                            <asp:ListItem Text="CIVIL" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        Select Your Photo
                    </div>
                    <div class="col-8">
                        <asp:FileUpload ID="UserImage" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="row">

                    <div class="col-12 text-center">
                        <asp:Button Text="Save" runat="server" ID="btnSave" CssClass="btn btn-success" OnClick="Unnamed1_Click" />
                    </div> 
                </div>
            </form>
        </div>
        <div class="col-8">
            <asp:DataGrid ID="EmpGrid" runat="server" class="table table-responsive table-bordered">
            </asp:DataGrid>
        </div>

    </div>

</body>
</html>
