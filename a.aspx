<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a.aspx.cs" Inherits="Hotel_Management.a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
  
        <script type="text/javascript">
            function showConfirm() {
        return confirm('Are you sure you want to cancel?');
            }

           
                function showPurchaseConfirm() {
        return confirm('Are you sure you want to proceed with the purchase?');
    }
      
    </script>

   
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h1 style="color:red;background-color:yellow"> HELLO WORLD</h1>
        </div>
       
        <asp:DataList ID="DataList1" runat="server" DataKeyField="PRODUCT_ID" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Product ID:<asp:Label ID="Label1" runat="server" Text='<%# Eval("PRODUCT_ID") %>'></asp:Label>
                        </td>
                   </tr>
                    <tr>
                    
                        <td>
                            <asp:Image ID="Image1" runat="server" Width="198px" ImageUrl='<%# Eval("IMAGE") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Rs:<asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                        </td>
                    </tr>
                     <tr>
                            <td >
                                <asp:Label ID="Label12" runat="server" Text="StockQuantity"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                            </td>
                        </tr></table>
                  <asp:Button ID="Button1" runat="server" Text="CANCEL" OnClientClick="return showConfirm();" />
            <asp:Button ID="Button2" runat="server" Text="BUY" OnClientClick="return showPurchaseConfirm();" />
                

                
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
          
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ajmobilestyxConnectionString2 %>" SelectCommand="SELECT * FROM [PRODUCT]"></asp:SqlDataSource>
    </form>
</body>
</html>
