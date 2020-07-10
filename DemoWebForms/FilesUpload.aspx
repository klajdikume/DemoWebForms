<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilesUpload.aspx.cs" Inherits="DemoWebForms.FilesUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    private string saveDir = @"Uploads\";
    
    protected void UploadButton_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile && FileUpload1.FileBytes.Length < 10000 &&
            !CheckForFileName())
        {
            string savePath = Request.PhysicalApplicationPath + saveDir +
                Server.HtmlEncode(FileName.Text);
            //Remove comment from the next line to upload file.
            //FileUpload1.SaveAs(savePath);
            UploadStatusLabel.Text = "The file was processed successfully.";
        }
        else
        {
            UploadStatusLabel.Text = "You did not specify a file to upload, or a file name, or the file was too large. Please try again.";
        }
    }

    protected void CheckButton_Click(object sender, EventArgs e)
    {
        if (FileName.Text.Length > 0)
        {
            string s = CheckForFileName() ? "exists already." : "does not exist.";
            UploadStatusLabel.Text = "The file name choosen " + s;
        }
        else
        {
            UploadStatusLabel.Text = "Specify a file name to check.";
        }
    }
    private Boolean CheckForFileName()
    {
        System.IO.FileInfo fi = new System.IO.FileInfo(Request.PhysicalApplicationPath + 
            saveDir + Server.HtmlEncode(FileName.Text));
            return fi.Exists;
    }

    void DropDownSelection_Change(Object sender, EventArgs e)
    {
        Calendar1.DayStyle.BackColor =
            System.Drawing.Color.FromName(ColorList.SelectedItem.Value);
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        SelectedDate.Text = 
            Calendar1.SelectedDate.ToString();
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>PostBackTrigger Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    The upload button is defined as a PostBackTrigger.<br/>
    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
    <ContentTemplate>
    <fieldset>
    <legend>FileUpload in an UpdatePanel</legend>
       First, enter a file name to upload your file to: 
       <asp:TextBox ID="FileName" runat="server" />
       <asp:Button ID="CheckButton" Text="Check" runat="server" OnClick="CheckButton_Click" />
       <br />
       Then, browse and find the file to upload:
       <asp:FileUpload id="FileUpload1"                 
           runat="server">
       </asp:FileUpload>
       <br />
       <asp:Button id="UploadButton" 
           Text="Upload file"
           OnClick="UploadButton_Click"
           runat="server">
       </asp:Button>    
       <br />
       <asp:Label id="UploadStatusLabel"
           runat="server" style="color:red;">
       </asp:Label>           
    </fieldset>
    </ContentTemplate>
    <Triggers>
    <asp:PostBackTrigger ControlID="UploadButton" />
    </Triggers>
    </asp:UpdatePanel>
    </div>
        <br />
         <asp:UpdatePanel ID="UpdatePanel2"
                             runat="server">
                <ContentTemplate>
                    <asp:Calendar ID="Calendar1" 
                                  ShowTitle="True"
                                  OnSelectionChanged="Calendar1_SelectionChanged"
                                  runat="server" />
                    <div>
                        Background:
                        <br />
                        <asp:DropDownList ID="ColorList" 
                                          AutoPostBack="True" 
                                          OnSelectedIndexChanged="DropDownSelection_Change"
                                          runat="server">
                            <asp:ListItem Selected="True" Value="White"> 
                            White </asp:ListItem>
                            <asp:ListItem Value="Silver"> 
                            Silver </asp:ListItem>
                            <asp:ListItem Value="DarkGray"> 
                            Dark Gray </asp:ListItem>
                            <asp:ListItem Value="Khaki"> 
                            Khaki </asp:ListItem>
                            <asp:ListItem Value="DarkKhaki"> D
                            ark Khaki </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    Selected date:
                    <asp:Label ID="SelectedDate" 
                               runat="server">None.</asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
    </form>
</body>
</html>