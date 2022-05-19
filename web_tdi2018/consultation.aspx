<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="consultation.aspx.cs" Inherits="web_tdi2018.consultation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idLoc" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="idLoc" HeaderText="idLoc" InsertVisible="False" ReadOnly="True" SortExpression="idLoc" />
        <asp:BoundField DataField="noPermis" HeaderText="noPermis" SortExpression="noPermis" />
        <asp:BoundField DataField="matricule" HeaderText="matricule" SortExpression="matricule" />
        <asp:BoundField DataField="dateLocation" HeaderText="dateLocation" SortExpression="dateLocation" />
        <asp:BoundField DataField="dateRetour" HeaderText="dateRetour" SortExpression="dateRetour" />
        <asp:BoundField DataField="dureeLocation" HeaderText="dureeLocation" SortExpression="dureeLocation" />
        <asp:BoundField DataField="montantTotal" HeaderText="montantTotal" SortExpression="montantTotal" />
        <asp:HyperLinkField DataNavigateUrlFields="idLoc" DataNavigateUrlFormatString="Details.aspx?id={0}" HeaderText="Details" Text="Details" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tdi2018ConnectionString %>" SelectCommand="SELECT * FROM [Location] ORDER BY [dateLocation] DESC"></asp:SqlDataSource>
</asp:Content>
