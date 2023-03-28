<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmpDemo.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageBody" runat="server">
     <div class="row">
            <div class="col-4">
                Enter Username
            </div>
            <div class="col-8">
                <asp:TextBox runat="server"  ID="txtUsername" CssClass="form-control" />
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
            <div class="col-12">
                <asp:CheckBox Text="Remember me at next time." runat="server" ID="chkRemember" />
            </div>
            
        </div>
        <div class="row">

            <div class="col-12 text-center">
                <asp:Button Text="Login" runat="server" ID="btnSave" CssClass="btn btn-success" OnClick="btnSave_Click" />
            </div>
             <div class="col-12 text-center">
                 <asp:Label ID="lblStatus" Text="" runat="server" />
            </div>
        </div>
</asp:Content>
 