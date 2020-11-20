<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ActivationEmail.aspx.cs" Inherits="ActivationEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 36%;
            height: 48px;
        }
        .auto-style2 {
            width: 146px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="txtActivate" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Activate your Email"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" BackColor="#800040" Font-Italic="True" Font-Size="Large" ForeColor="Silver"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style1" style="border-color: #800000; background-color: #800080" border="0">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Your Activation Code"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="198px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnVerify" runat="server" BackColor="#FF3300" Text="Verify Email" OnClick="BtnVerify_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" BackColor="#800040" Font-Italic="True" ForeColor="Silver"></asp:Label>
            <asp:LinkButton ID="Btnlnk" runat="server" OnClick="Btnlnk_Click">Click Here To Login</asp:LinkButton>
        </p>
    </form>
</body>
</html>
