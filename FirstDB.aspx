<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstDB.aspx.cs" Inherits="FirstDB.FirstDB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My First DB - TOR</title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="PatientNumber" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal" Height="213px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="280px" CssClass="auto-style1" Font-Names="Verdana">
            <Columns>
                <asp:BoundField DataField="PatientNumber" HeaderText="PatientNumber" ReadOnly="True" SortExpression="PatientNumber" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FirstDBConnectionString1 %>" DeleteCommand="DELETE FROM [Table_Patient] WHERE [PatientNumber] = @PatientNumber" InsertCommand="INSERT INTO [Table_Patient] ([Name], [Age]) VALUES (@Name, @Age)" ProviderName="<%$ ConnectionStrings:FirstDBConnectionString1.ProviderName %>" SelectCommand="SELECT [PatientNumber], [Name], [Age] FROM [Table_Patient]" UpdateCommand="UPDATE [Table_Patient] SET [Name] = @Name, [Age] = @Age WHERE [PatientNumber] = @PatientNumber">
            <DeleteParameters>
                <asp:Parameter Name="PatientNumber" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="PatientNumber" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
