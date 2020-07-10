<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateExample.aspx.cs" Inherits="DemoWebForms.updatePanels.updateExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager runat="server" ID="sm">

            </asp:ScriptManager>
            <!-- https://www.youtube.com/watch?v=sKboH7nX8UE -->

            <asp:Button ID="SubmitButton" runat="server" Text="Get Time" OnClick="SubmitButton_Click"/>
           
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="TimeLabel" runat="server"></asp:Label>
                    
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="SubmitButton" EventName="Click"/>
                </Triggers>
            </asp:UpdatePanel>
            <br />
            
            <span id="OutputSpan"></span>
        </div>
    </form>
</body>
</html>
