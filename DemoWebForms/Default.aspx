<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DemoWebForms._Default" %>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:for

</asp:Content>--%>

<html>
    <body>
        <form id="form1" runat="server">
            <asp:DropDownList ID="dropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="Select User" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Admin User" Value="Admin"></asp:ListItem>
                <asp:ListItem Text="Non-Admin User" Value="NonAdmin"></asp:ListItem>
            </asp:DropDownList>

            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="AdminGreeting" runat="server" Text="You are logged in as admin"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="AdminNameLabel" runat="server" Text="Admin Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="AdminNameTextBox" runat="server" Text="Tom"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="AdminRegionLabel" runat="server" Text="Admin Region:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="AdminRegionTextBox" runat="server" Text="Azia"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="AdminActionsLabel" runat="server" Text="Actions"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="AdminActionsTextBox" runat="server" TextMode="MultiLine" Text="There are 4 user queries to be answered by the end of Decemeber..."></asp:TextBox>
                    </td>
                </tr>
            </table>

            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="NonAdminGreeting" runat="server" Text="Welcome Tom"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="NonAdminNameLabel" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="NonAdminNameLabelTextBox" runat="server" Text="Mike"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="NonAdminRegionLabel" runat="server" Text="User Region"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="NonAdminRegionTextBox" runat="server" Text="Uk"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="NonAdminCityLabel" runat="server" Text="User City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="NonAdminCityTextBox" runat="server" Text="London"></asp:TextBox>
                    </td>
                </tr>

            </table>

        </form>
    </body>
</html>

<!-- Controls in asp .net webforms -->
<!-- 
    
    update panel, update progress
    ajax 
    Page IsPostBack
    -->