<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Gridviewbasics.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
        .auto-style2 {
            width: 125px;
            height: 67px;
            position: absolute;
            top: 45px;
            left: 476px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 50px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="au_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="au_id" HeaderText="au_id" ReadOnly="True" SortExpression="au_id" />
                    <asp:BoundField DataField="au_fname" HeaderText="au_fname" SortExpression="au_fname" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style2" DataKeyNames="au_id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <Fields>
                    <asp:BoundField DataField="au_id" HeaderText="au_id" ReadOnly="True" SortExpression="au_id" />
                    <asp:BoundField DataField="au_lname" HeaderText="au_lname" SortExpression="au_lname" />
                    <asp:BoundField DataField="au_fname" HeaderText="au_fname" SortExpression="au_fname" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:TemplateField HeaderText="city" SortExpression="city">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" style="z-index: 1">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("city") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                    <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                    <asp:CheckBoxField DataField="contract" HeaderText="contract" SortExpression="contract" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            </asp:DetailsView>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p class="auto-style1">
                <br />
                <br />
            </p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-OSDBPFJ;Initial Catalog=pubs;Integrated Security=True" DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" InsertCommand="INSERT INTO [authors] ([au_id], [au_fname], [city]) VALUES (@au_id, @au_fname, @city)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [au_id], [au_fname], [city] FROM [authors]" UpdateCommand="UPDATE [authors] SET [au_fname] = @au_fname, [city] = @city WHERE [au_id] = @au_id">
                <DeleteParameters>
                    <asp:Parameter Name="au_id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="au_id" Type="String" />
                    <asp:Parameter Name="au_fname" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="au_fname" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="au_id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-OSDBPFJ;Initial Catalog=pubs;Integrated Security=True" DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" InsertCommand="INSERT INTO [authors] ([au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract]) VALUES (@au_id, @au_lname, @au_fname, @phone, @address, @city, @state, @zip, @contract)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [authors] WHERE ([au_id] = @au_id)" UpdateCommand="UPDATE [authors] SET [au_lname] = @au_lname, [au_fname] = @au_fname, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [contract] = @contract WHERE [au_id] = @au_id">
                <DeleteParameters>
                    <asp:Parameter Name="au_id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="au_id" Type="String" />
                    <asp:Parameter Name="au_lname" Type="String" />
                    <asp:Parameter Name="au_fname" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="zip" Type="String" />
                    <asp:Parameter Name="contract" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="au_id" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="au_lname" Type="String" />
                    <asp:Parameter Name="au_fname" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="zip" Type="String" />
                    <asp:Parameter Name="contract" Type="Boolean" />
                    <asp:Parameter Name="au_id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
