<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DemoWebForms.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div>
                <asp:Label ID="lblDate" runat="server"></asp:Label><br />
                <asp:TextBox ID="txtabc" runat="server"></asp:TextBox>
                <asp:Button ID="btnPostBack" runat="server" Text="PostBack" OnClick="btnPostBack_Click"/>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

<script>

    Sys.Application.add_load(function () {
        $('#<%= txtabc.ClientID %>').datepicker();
    });
</script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
</asp:Content>

