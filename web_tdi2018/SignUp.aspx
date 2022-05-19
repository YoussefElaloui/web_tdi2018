<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="web_tdi2018.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 16px;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>NoPermis</td>
                    <td>
                        <asp:TextBox ID="txt_noPermis" runat="server" placeholder="Numero Permis"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="NoPremis must be provided" ForeColor="Red" ControlToValidate="txt_noPermis"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Nom</td>
                    <td>
                        <asp:TextBox ID="txt_nom" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Nom must be provided" ForeColor="Red" ControlToValidate="txt_nom"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Prenom</td>
                    <td>
                        <asp:TextBox ID="txt_prenom" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Prenom must be provided" ForeColor="Red" ControlToValidate="txt_prenom"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email must be provided" ForeColor="Red" ControlToValidate="txt_email"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email format is must" ForeColor="Red" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_passwrd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_passwrd" ErrorMessage="Password must be provided" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirme password</td>
                    <td>
                        <asp:TextBox ID="txt_newPasswrd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_newPasswrd" ErrorMessage="Double password must be provided" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_passwrd" ControlToValidate="txt_newPasswrd" ErrorMessage="Passwords deadmatch" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">
                        <asp:Button ID="btn_signin" runat="server" Text="S'inscrire" Width="349px" OnClick="btn_signin_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="lbl_error" runat="server" ForeColor="Red" Text="This noPermis aready used" Visible="False"></asp:Label>
    </form>
</body>
</html>
