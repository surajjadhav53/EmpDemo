<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="EmpDemo.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="col-4">
        <div class="row">
            <div class="col-4">
                Id
            </div>
            <div class="col-8">
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Id is mandatory" ControlToValidate="txtId" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                Name
            </div>
            <div class="col-8">
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is mandatory" ControlToValidate="txtName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
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
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is wrong" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                Joining Date
            </div>
            <div class="col-8">
                <asp:TextBox runat="server" ID="txtJoiningDate" CssClass="form-control" TextMode="Date" />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Date must between 1-Jan-2021 to 31-Dec-2030" ControlToValidate="txtJoiningDate" ForeColor="Red" MaximumValue="31-12-2030" MinimumValue="1-01-2021" SetFocusOnError="True" Type="Date"></asp:RangeValidator>
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
                Enter Password
            </div>
            <div class="col-8">
                <asp:TextBox runat="server" TextMode="Password" ID="txtPassword" CssClass="form-control" />
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                Re-Enter Password
            </div>
            <div class="col-8">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword2" ControlToValidate="txtPassword" ErrorMessage="Both password must be same." ForeColor="Red"></asp:CompareValidator>
                <asp:TextBox runat="server" TextMode="Password" ID="txtPassword2" CssClass="form-control" />
            </div>
        </div>
        <div class="row">

            <div class="col-12 text-center">
                <asp:Button Text="Save" runat="server" ID="btnSave" CssClass="btn btn-success" />
            </div>
        </div>
    </form>
</body>
</html>
