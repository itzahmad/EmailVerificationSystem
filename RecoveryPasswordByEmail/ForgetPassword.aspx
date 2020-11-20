<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:aqua;">
    <form id="form1" runat="server">
        <center>
        <div style="padding-top:120px;">
        <fieldset style ="border:2px solid; border-radius:35px; text-align:left;padding-left:35px;
            height:110px;width:400px;  background-color:darkgreen;">
                    <legend><b>Forget Password</b></legend>
                    
        
            
                Enter your Registred Email-Id : <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
                <div style="padding-top:20px;">
                    <asp:Button ID="btnpwd" runat="server" Text="Get Your Password" OnClick="btnpwd_Click" ></asp:Button><br />
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </div>
            
        </div>
        </fieldset>
        </center>
    </form>
</body>
</html>
