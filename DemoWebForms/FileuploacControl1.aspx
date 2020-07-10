<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileuploacControl1.aspx.cs" Inherits="DemoWebForms.FileuploacControl1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex">
            <asp:FileUpload ID="FileUpload1" runat="server"/> &nbsp; <asp:Button ID="btnUpload" runat="server" Text="Upload File" OnClick="btnUpload_Click"/>
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server" Font-Bold="true"></asp:Label>
        </div>
    </form>
</body>
</html>
<script src="Scripts/jquery-3.4.1.slim.js"></script>
<script src="Scripts/bootstrap.min.js"></script>

