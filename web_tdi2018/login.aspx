<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="web_tdi2018.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>
                        Email</td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password</td>
                    <td>
                        <asp:TextBox ID="txt_passwrd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btn_signin" runat="server" OnClick="btn_signin_Click" Text="Sign In" Width="294px" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
    </form>
</body>
</html>
