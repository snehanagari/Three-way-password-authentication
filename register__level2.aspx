<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register__level2.aspx.cs" Inherits="register__level2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style7
        {
            height: 88px;
            }
        .style3
        {
            height: 88px;
        }
        
        .style1
        {
            width: 100%;
        }
        .style8
        {
            height: 55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table class="style1">
        <tr>
            <td class="style8" align="center" bgcolor="#349DA3" colspan="2" 
                style="color: #000066; font-style: normal; font-weight: bold; font-size: x-large;">
                LEVEL&nbsp; TWO</td>
        </tr>
        <tr>
            <td class="style7">
                ID</td>
            <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="338px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="c_pass" runat="server" Text="Image Password"></asp:Label>
            </td>
            <td class="style3">
                    <asp:Image ID="r_image_pswd" runat="server" Width="334px" Height="286px" />
                    <br />
                <br />
                <asp:FileUpload ID="FileUpload11" runat="server" Width="354px" />
                    <br />
                    <br />
                    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#4087A2" ForeColor="White" 
                    Height="53px" onclick="Button1_Click" Text="Save" Width="125px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#4087A2" 
                    BorderColor="#4087A2" ForeColor="White" Height="51px" onclick="Button2_Click" 
                    Text="Next" Visible="False" Width="116px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
