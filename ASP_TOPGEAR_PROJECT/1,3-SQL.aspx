<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1,3-SQL.aspx.cs" Inherits="ASP_TOPGEAR_PROJECT._2_SQL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>GRID VIEW GETS DATA FROM XML</td>
                <td><asp:GridView ID="GridView1" runat="server">
        </asp:GridView></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Drop down list gets data from SQL
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                     </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Skills:</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>c#</asp:ListItem>
                        <asp:ListItem>asp.net</asp:ListItem>
                        <asp:ListItem>sql</asp:ListItem>
                        <asp:ListItem Value="javascript"></asp:ListItem>
                    </asp:CheckBoxList>

                </td>
            </tr>
            <tr>
                <td>
                    Date of birth:
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td colspan="2"> <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" /></td>
                <asp:Button ID="Button1" runat="server" Text="Submit" />

            </tr>
        </table>
        
      
        
    <div>
    
    </div>
    </form>
</body>
</html>
