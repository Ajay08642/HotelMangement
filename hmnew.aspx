<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hotel Menu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        .menu-item {
            position: relative;
            margin-bottom: 30px;
        }
        .menu-item img {
            width: 170px;
            height: 170px;
        }
        .menu-item h3 {
            position: absolute;
            bottom: 10px;
            left: 10px;
            color: #000000;
            text-align: center;
            margin: 0;
            font-size: 20px;
        }
    </style>
    <script>
        function showProductDetails(name, price, quantity) {
            document.getElementById('productName').innerText = name;
            document.getElementById('productPrice').innerText = 'Price: ' + price;
            document.getElementById('productQuantity').innerText = 'Quantity: ' + quantity;
            var myModal = new bootstrap.Modal(document.getElementById('productModal'), {
                keyboard: false
            });
            myModal.show();
        }
    </script>
</head>
<body style="background-color:#ff6a00">
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
        <!-- ... (Navigation code unchanged) ... -->

        <!-- Hotel Menu -->
        <div class="container mt-4">
            <h1 style="text-align:center">Hotel Menu</h1>

            <!-- Products Section -->
            <div class="row">
                <asp:Repeater ID="rptProducts" runat="server">
                    <ItemTemplate>
                        <div class="col-12 col-sm-6 col-md-4 menu-item">
                            <img src="Images/<%# Eval("Name").ToString().Replace(" ", "") + ".jpg" %>" 
                                 alt='<%# Eval("Name") %>' 
                                 onclick="showProductDetails('<%# Eval("Name") %>', '<%# Eval("Price") %>', '<%# Eval("Quantity") %>')" />
                            <h3><%# Eval("Name") %></h3>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

        <!-- Modal -->
        <!-- ... (Modal code unchanged) ... -->
    </form>
</body>
</html>
