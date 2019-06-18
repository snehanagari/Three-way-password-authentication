<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register_new_user.aspx.cs" Inherits="register_new_user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style4
        {
            height: 115px;
        }
        .style3
        {
            height: 88px;
        }
        .style5
        {
            height: 76px;
        }
        .style6
        {
            height: 115px;
            }
        .style7
        {
            height: 88px;
            width: 346px;
        }
        .style8
        {
            height: 60px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <table class="style1">
        <tr>
            <td class="style8" align="center" bgcolor="#009999" colspan="2" 
                
                style="font-size: x-large; font-style: normal; color: #000066; font-family: 'Segoe UI Light'; font-weight: bold;">
                REGISTRATION&nbsp; FORM</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="usernm" runat="server" Text="Username"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="r_u_nm" runat="server" Height="41px" Width="302px" 
                    ToolTip="Please Enter Username"></asp:TextBox>
                <b
            </td>
                <br />
                </b>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="pass" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="r_pswd" runat="server" Height="40px" TextMode="Password" 
                    Width="307px" ToolTip="Please Enter Password"></asp:TextBox>
                
                <br />
                
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="reg" runat="server" onclick="save_Click" Text="Register" 
                    Height="51px" Width="131px" BackColor="#389E94" 
                    Font-Names="Bahnschrift Light" Font-Size="Medium" ForeColor="White" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Next"  Visible="False" 
                    BackColor="#27A5A2" ForeColor="White" Height="51px" onclick="Button1_Click" 
                    Width="133px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Rlabel" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
