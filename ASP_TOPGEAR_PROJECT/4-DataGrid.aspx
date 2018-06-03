<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-DataGrid.aspx.cs" Inherits="ASP_TOPGEAR_PROJECT._4_DataGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Read Data" />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
