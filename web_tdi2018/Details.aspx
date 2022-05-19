<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="web_tdi2018.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="idLoc" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <EditRowStyle BackColor="#999999" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="idLoc" HeaderText="idLoc" InsertVisible="False" ReadOnly="True" SortExpression="idLoc" />
        <asp:BoundField DataField="noPermis" HeaderText="noPermis" SortExpression="noPermis" />
        <asp:BoundField DataField="matricule" HeaderText="matricule" SortExpression="matricule" />
        <asp:BoundField DataField="dateLocation" HeaderText="dateLocation" SortExpression="dateLocation" />
        <asp:BoundField DataField="dateRetour" HeaderText="dateRetour" SortExpression="dateRetour" />
        <asp:BoundField DataField="dureeLocation" HeaderText="dureeLocation" SortExpression="dureeLocation" />
        <asp:BoundField DataField="montantTotal" HeaderText="montantTotal" SortExpression="montantTotal" />
    </Fields>
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tdi2018ConnectionString %>" SelectCommand="SELECT * FROM [Location] WHERE ([idLoc] = @idLoc)">
    <SelectParameters>
        <asp:QueryStringParameter Name="idLoc" QueryStringField="id" Type="Int64" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
