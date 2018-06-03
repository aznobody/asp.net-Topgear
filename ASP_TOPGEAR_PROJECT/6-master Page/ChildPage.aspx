<%@ Page Title="" Language="C#" MasterPageFile="~/master Page/Site.Master" AutoEventWireup="true" CodeBehind="ChildPage.aspx.cs" Inherits="ASP_TOPGEAR_PROJECT.master_Page.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    This is Child content
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <asp:Button ID="Button1" runat="server" Text="Button" />
</asp:Content>
