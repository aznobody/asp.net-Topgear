<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2-Validations.aspx.cs" Inherits="ASP_TOPGEAR_PROJECT._2_Validations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" >
        function IsEven(source, args)
        {
            if(args.Value=="")
            {
                args.IsValid = false;

            }
            else
            { 
                if(args.Value %2==0)
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }
            }
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td colspan="3">USER DETAILS</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name Required" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="UserDetails">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Age</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                     ErrorMessage="Age Required" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" ValidationGroup="UserDetails">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be between 10 and 100" ControlToValidate="TextBox2" MaximumValue="100" MinimumValue="10" Type="Integer" Display="Dynamic" ForeColor="Red" ValidationGroup="UserDetails">*</asp:RangeValidator> 
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox2" 
                    ErrorMessage="Age must be a number" Type="Integer" Display="Dynamic" ForeColor="Red" Operator="DataTypeCheck" ValidationGroup="UserDetails"
                    >*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">CAPTCHA (enter an even number)</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Captcha Required" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" ValidationGroup="UserDetails">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Invalid Captcha" 
                    OnServerValidate="CustomValidator1_ServerValidate" ValidateEmptyText="True"
                    ClientValidationFunction="IsEven" Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox3" ValidationGroup="UserDetails">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="UserDetails" />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Label"></asp:Label>
            </td>
        </tr>
       
        <tr>
            <td colspan="3" class="auto-style2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" HeaderText="Page Errors" ValidationGroup="UserDetails" />
            </td>
        </tr>
       
    </table>
    </div>
    </form>
</body>
</html>
