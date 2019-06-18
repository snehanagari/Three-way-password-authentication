<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register_level3.aspx.cs" Inherits="register_level3" %>

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
            <td class="style8" align="center" bgcolor="#3496A0" colspan="2" 
                style="font-size: x-large; font-weight: bold; font-style: normal; color: #000066">
                LEVEL THREE</td>
            </tr>
        <tr>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ID</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="326px"></asp:TextBox>
                 </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;<asp:Label ID="c_pass0" runat="server" Text="Color Combination"></asp:Label>
            </td>
            <td class="style3">
                <asp:Button ID="r_red" runat="server" BackColor="Red" ForeColor="Red" 
                    Height="66px" style="margin-left: 0px" Text="50" Width="141px" 
                    onclick="r_red_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="r_green" runat="server" BackColor="#33CC33" ForeColor="#33CC33" 
                    Height="66px" Text="100" Width="141px" onclick="r_green_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="r_blue" runat="server" BackColor="#0099FF" ForeColor="#0099FF" 
                    Height="66px" Text="150" Width="141px" onclick="r_blue_Click" />
                <br />
                <br />
                <asp:TextBox ID="r_pattern" runat="server" Height="31px" 
                    Width="504px" ontextchanged="TextBox1_TextChanged" Enabled="false"></asp:TextBox>
                <br />
                <br />
                 </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#398E8A" ForeColor="White" 
                    Height="47px" onclick="Button1_Click" Text="Save" Width="155px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
            </td>
            </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
