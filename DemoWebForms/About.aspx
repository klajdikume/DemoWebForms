<%@ Page Title="About" Language="C#"  AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DemoWebForms.About" %>

<!DOCTYPE html>  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
<title></title>  
</head>  
<body>  
<form id="form1" runat="server">  
<asp:ScriptManager ID="scriptmanager1" runat="server">  
</asp:ScriptManager>  
<div>  
<asp:UpdatePanel ID="updatepnl" runat="server">  
<ContentTemplate>  
<table>  
<tr>  
<td>Enter UserName </td>  
<td>:</td>  
<td><asp:TextBox ID="txtun" runat="server" AutoPostBack="true" OnTextChanged="txtun_TextChanged"/></td>  
<td>  
<div id="checkun" runat="server"  Visible="false">  
<asp:Image ID="shwimg" runat="server" Width="17px" Height="17px"/>  
<asp:Label ID="lblmsg" runat="server"></asp:Label>  
</div>  
</td>  
</tr>  
<tr>  
<td>Enter Password </td>  
<td>:</td>  
<td><asp:TextBox ID="txpwd" runat="server" TextMode="Password"></asp:TextBox></td>  
</tr>  
<tr>  
<td>Enter Confirm Password </td>  
<td>:</td>  
<td><asp:TextBox ID="txtconpwd" runat="server" TextMode="Password"></asp:TextBox></td>  
</tr>  
<tr>  
<td colspan="3"><asp:Button ID="txtbtn" Text="SUBMIT" runat="server" align="center" /></td>  
</tr>  
</table>  
</ContentTemplate>  
</asp:UpdatePanel>  
</div>  
</form>  
</body>  
</html>  