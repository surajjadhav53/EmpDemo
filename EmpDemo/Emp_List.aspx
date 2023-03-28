<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Emp_List.aspx.cs" Inherits="EmpDemo.Emp_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageBody" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="JoiningDate" HeaderText="JoiningDate" SortExpression="JoiningDate" />
            <asp:BoundField DataField="DepartmentId" HeaderText="DepartmentId" SortExpression="DepartmentId" />
            <asp:BoundField DataField="CreadtedOn" HeaderText="CreadtedOn" SortExpression="CreadtedOn" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
            <asp:BoundField DataField="Hobbies" HeaderText="Hobbies" SortExpression="Hobbies" />
            <asp:BoundField DataField="PhotoPath" HeaderText="PhotoPath" SortExpression="PhotoPath" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EMP_DBConnectionString %>" DeleteCommand="DELETE FROM [tblEmployee] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblEmployee] ([Name], [Address], [Gender], [MobileNo], [Email], [Status], [JoiningDate], [DepartmentId], [CreadtedOn], [Salary], [Hobbies], [PhotoPath]) VALUES (@Name, @Address, @Gender, @MobileNo, @Email, @Status, @JoiningDate, @DepartmentId, @CreadtedOn, @Salary, @Hobbies, @PhotoPath)" SelectCommand="SELECT [Id], [Name], [Address], [Gender], [MobileNo], [Email], [Status], [JoiningDate], [DepartmentId], [CreadtedOn], [Salary], [Hobbies], [PhotoPath] FROM [tblEmployee]" UpdateCommand="UPDATE [tblEmployee] SET [Name] = @Name, [Address] = @Address, [Gender] = @Gender, [MobileNo] = @MobileNo, [Email] = @Email, [Status] = @Status, [JoiningDate] = @JoiningDate, [DepartmentId] = @DepartmentId, [CreadtedOn] = @CreadtedOn, [Salary] = @Salary, [Hobbies] = @Hobbies, [PhotoPath] = @PhotoPath WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Status" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="JoiningDate" />
            <asp:Parameter Name="DepartmentId" Type="Int32" />
            <asp:Parameter Name="CreadtedOn" Type="DateTime" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="Hobbies" Type="String" />
            <asp:Parameter Name="PhotoPath" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Status" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="JoiningDate" />
            <asp:Parameter Name="DepartmentId" Type="Int32" />
            <asp:Parameter Name="CreadtedOn" Type="DateTime" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="Hobbies" Type="String" />
            <asp:Parameter Name="PhotoPath" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
