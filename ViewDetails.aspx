<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="Hotel_Management.view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>PRODUCT_ID:<asp:Label ID="Label1" runat="server" Text='<%# Eval("PRODUCT_ID") %>'></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td> <asp:Image ID="Image1" runat="server" Width="198px" ImageUrl='<%# Eval("IMAGE") %>' /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Rs:<asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label12" runat="server" Text="StockQuantity"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList></td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>

            </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ajmobilestyxConnectionString3 %>" SelectCommand="SELECT * FROM [PRODUCT] WHERE ([PRODUCT_ID] = @PRODUCT_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="PRODUCT_ID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
