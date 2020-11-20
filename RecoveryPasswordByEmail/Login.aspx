<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>

                 
                              
                        
    <link rel="stylesheet" type="text/css" id="style1" href="style1.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="background-image:url('http://localhost:52489/images/giphy1.gif'); height: 349px; margin-top: 180px;">

    <form id="form1" runat="server">
        <div >
            
            <center>
                
                <hr />
                <fieldset style ="border:5px solid; border-radius:35px; border-color:darkgreen; text-align:left; padding-left:35px;height:200px;width:400px;">
                    <legend style="color:aqua;"><b>LOGIN</b></legend>
                    
                    <table style="color:forestgreen; padding-top:20px;">
                        <tr>
                            <td class="auto-style1"><b>UserName :</b></td>
                            <td><asp:TextBox ID="txtUsername" runat="server" TextMode="Email" Height="27px" Width="149px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1"><b>Password :</b></td>
                            <td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Height="28px" Width="151px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" style="background-color:aqua;" ><a href="" onclick="window.open('ForgetPassword.aspx','FP','width=500,height=500,top=300,left=500,fullscreen=no,resizable=0')">Forget Password</a></td>
                            <td colspan="2"><asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" Width="111px"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" Width="85px" CssClass="auto-style1"></asp:Button></td>
                            <td>&nbsp;</td>
                           
                        </tr>
                        <tr>
                            <td><asp:Literal ID="litmsg" runat="server"></asp:Literal>&nbsp;</td>
                             
                        </tr>
                    </table>
                </fieldset>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [LoginTable]"></asp:SqlDataSource>
            </center>
        </div>
    </form>
 </body>
</html>
