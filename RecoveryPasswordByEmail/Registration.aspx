<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
          
    </title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 125px;
        }
        .auto-style3 {
            width: 125px;
            height: 38px;
        }
        .auto-style4 {
            height: 38px;
            width: 132px;
        }
        .auto-style5 {
            width: 132px;
        }
        .auto-style6 {
            margin-top: 20px;
        }
    </style>
    <tr>
                <td colspan=2>
                    <center class="auto-style1">
                        <font color ="red" size=6><b>
                        <br />
                        
                        Registration Form</b><br /><br /></font>
                    </center>
                </td>
        <center>
            <div style="width: 700px; color: #FFFF00; font-size:larger;">
                 <b>
                <marquee direction="left"><strong> Wani's Website</strong></marquee>
                </b>
             </div>
         <br />

            <div style=" width: 700px; color: #CCFFCC;">
                <marquee direction="right"><strong>Register YourSelf Here</strong></marquee>
            </div>
        </center>
    </tr>
</head>
<body style="background-image: url(http://localhost:52489/images/giphy.gif);
        margin: 0px;
        padding: 0px;
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: scroll;">
    <form id="form1" runat="server">
        <div style="padding-top:0px;">
            <center class="auto-style6">
            <%--<fieldset style="border:2px solid; border-radius:30px; padding-top:0px; padding-bottom:0px; padding-left:20px; padding-right:20px; height:550px;width:320px;">--%>
                
                <table cellpadding="4" width="20%" bgcolor="fff9999" align="center" cellspacing="4"; 
                    style="background-image: url('images/blog-image-1-1.jpg');
                    background-size:cover; background-repeat: inherit; background-attachment: fixed;
                    background-position: left bottom; background-color: #FFFFFF; color: #008000; font-size: 16px; 
                    font-style: inherit; font-family: Calibri; margin-top: 120px; border:3px solid; border-radius:30px;
                    padding-top:20px;">
                    
            
                    <b>

                    <tr>
                        <td class="auto-style2">Name</td>
                        <td class="auto-style5"><asp:TextBox ID="txtname" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox></td>
                        <td class="auto-style5" style="color: #EE1611; font-size: 15px; font-style: oblique; font-family: 'Calibri Light'">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style2">Last Name</td>
                        <td class="auto-style5"><asp:TextBox ID="txtLastname" runat="server"></asp:TextBox></td>
                        <td class="auto-style5" style="color: #EE1611; font-size: 15px; font-style: oblique; font-family: 'Calibri Light'">&nbsp;</td>
                    </tr>
            <%--<tr>
                <td>Postal Address</td>
                <td><input type="text" name="paddress" id="paddress" size="30"></td>
            </tr>

            <tr>
                <td>Personal Address</td>
                <td><input type="text" name="personaladdress" id="personaladdress" size="30"></td>
            </tr>--%>

                    <tr>
                        <td class="auto-style2">Gender</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="DDlist" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style5" style="color: #EE1611; font-size: 15px; font-style: oblique; font-family: 'Calibri Light'">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DDlist" ErrorMessage="Gender Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                   <%-- <tr>
                        <td class="auto-style2">City</td>
                        <td>
                            <asp:DropDownList ID="ddlst" runat="server">
                                <asp:ListItem Value="1" Text="Select"></asp:ListItem>
                                <asp:ListItem Value="1" Text="jummu"></asp:ListItem>
                                <asp:ListItem Value="1" Text="kashmir"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Other"></asp:ListItem>
                            </asp:DropDownList>


                        </td>
                    </tr>--%>

           <%-- <tr>
                <td>Course</td>
                <td><select name="Course">
                        <option value="-1" selected>select..</option>
                        <option value="B.Tech">B.TECH</option>
                        <option value="MCA">MCA</option>
                        <option value="MBA">MBA</option>
                        <option value="BCA">BCA</option>
                    </select></td>
            </tr>--%>

                   <%-- <tr>
                        <td class="auto-style2">District</td>
                        <td><select name="District">
                                <option value="-1" selected>select..</option>
                                <option value="Nalanda">NALANDA</option>
                                <option value="UP">UP</option>
                                <option value="Goa">GOA</option>
                                <option value="Patna">PATNA</option>
                            </select></td>

                    </tr>--%>

                   <%-- <tr>
                        <td class="auto-style2">State</td>
                        <td><select Name="State">
                                <option value="-1" selected>select..</option>
                                <option value="New Delhi">NEW DELHI</option>
                                <option value="Mumbai">MUMBAI</option>
                                <option value="Goa">GOA</option>
                                <option value="Bihar">PUNJAB</option>
                                <option value="Bihar">J&K</option>
                                <option value="Bihar">HIMACHAL PRADESH</option>
                                <option value="Bihar">CHADIGARH</option>
                                <option value="Bihar">HARYANA</option>
                            </select></td>
                
                    </tr>--%>
           <%-- <tr>
                <td>PinCode</td>
                <td><input type="text" name="pincode" id="pincode" size="30"></td>

            </tr>--%>
                    <tr>
                        <td class="auto-style2">DOB</td>
                        <td class="auto-style5"><asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox></td>
                        <td class="auto-style5" style="color: #EE1611; font-size: 15px; font-style: oblique; font-family: 'Calibri Light'">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDOB" ErrorMessage="DOB Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style2">Email</td>
                        <td class="auto-style5"><asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox></td>
                        <td class="auto-style5" style="color: #EE1611; font-size: 15px; font-style: oblique; font-family: 'Calibri Light'">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Password</td>
                        <td class="auto-style5"><asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                        <td class="auto-style5" style="color: #EE1611; font-size: 15px; font-style: oblique; font-family: 'Calibri Light'">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Confirm Password</td>
                        <td class="auto-style5"><asp:TextBox ID="txtConpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                        <td class="auto-style5" style="color: #EE1611; font-size: 15px; font-style: oblique; font-family: 'Calibri Light'">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConpassword" ErrorMessage="password Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    

                    <tr>
                        <td class="auto-style2">MobileNo</td>
                        <td class="auto-style5"><asp:TextBox ID="txtmobile" runat="server" TextMode="Number"></asp:TextBox></td>
                        <td class="auto-style5" style="color: #EE1611; font-size: 15px; font-style: oblique; font-family: 'Calibri Light'">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtmobile" ErrorMessage="Mobile Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
           <%-- <tr>
                <td>Upload</td>
                <td><input type="file" name="Upload" id="fileselect" size="30"></td>
            </tr>--%>
                    <tr>
                        <td class="auto-style3"><input type="reset"></td>
                        <td class="auto-style4"><asp:Button ID="Btnregister" runat="server" Text="Register" OnClick="Btnregister_Click"></asp:Button></td>

                        <td class="auto-style4" style="color: #EE1611; font-size: 15px; font-style: oblique; font-family: 'Calibri Light'">&nbsp;</td>

                    </tr>
                    <center>
                        <tr>
                        <td><asp:Button ID="BtnAlready" runat="server" Text="I Have An Account" OnClick="BtnAlready_Click" BackColor="#400040" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Green"></asp:Button></td>
                            <td class="auto-style5">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtConpassword" ErrorMessage="CompareValidator" ForeColor="#F01B0F">pass dosn't match</asp:CompareValidator>
                            </td>
                            <td class="auto-style5" style="color: #EE1611; font-size: 15px; font-style: oblique; font-family: 'Calibri Light'">
                                &nbsp;</td>
                        </tr>
                    </center>
                </b>

                </table>
            
                <br />
                <br />
                <br />

                <h5 style="color:aqua;">Copyright@Wani Mudasir 2020</h5>
            </center>

        </div>
    </form>
</body>
</html>
