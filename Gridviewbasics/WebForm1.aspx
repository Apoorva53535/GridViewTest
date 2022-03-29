<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Gridviewbasics.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" ReadOnly="True" SortExpression="CustomerId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City" SortExpression="City">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsDB %>" DeleteCommand="DELETE FROM [tblCustomers] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [tblCustomers] ([CustomerId], [Name], [Gender], [City]) VALUES (@CustomerId, @Name, @Gender, @City)" SelectCommand="SELECT * FROM [tblCustomers]" UpdateCommand="UPDATE [tblCustomers] SET [Name] = @Name, [Gender] = @Gender, [City] = @City WHERE [CustomerId] = @CustomerId">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerId" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="CustomerId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
