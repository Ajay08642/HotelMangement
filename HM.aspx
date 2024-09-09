
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HM.aspx.cs" Inherits="Hotel_Management.HM" %>


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
            font-size:20px;
        }
    </style>

    <script type="text/javascript">
    function showProductDetails(productName) {
        // Fetch product details using AJAX
        $.ajax({
            type: "POST",
            url: "YourPage.aspx/GetProductDetails",
            data: JSON.stringify({ productName: productName }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                // Populate the modal with the product details
                $('#productName').text('Name: ' + response.d.Name);
                $('#productPrice').text('Price: ' + response.d.Price);
                $('#productQuantity').text('Quantity: ' + response.d.Quantity);
                // Show the modal
                $('#productModal').modal('show');
            }
        });
    }
    </script>

</head>
<body style="background-color:#ff6a00">

    <form id="form1" runat="server">
        <!-- Navigation Bar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Hotel</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Menu
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="a.aspx">Starter</a></li>
                                <li><a class="dropdown-item" href="#">Main Course</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Reservations</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Hotel Menu -->
        <div class="container mt-4">
            <h1 style="text-align:center">Hotel Menu</h1>

            <!-- Starters Section -->
            <h2>Starter</h2>
            <div class="row">
                <div class="col-12 col-sm-6 col-md-2 menu-item">
    <img src="Images/paneer.jpg" alt="Paneer" onclick="showProductDetails('Paneer Crispy')" />
    <h3>Paneer Crispy</h3>
</div>

                <div class="col-12 col-sm-6 col-md-2 menu-item">
                   <img src="Images/spice%20potato.jpg" alt="Spice Potato" />
                    <h3>Spice Potato</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/masala%20pav.jpg" alt="Masala Pav" />
                    <h3>Masala Pav</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/aloo%20bemisaal.jpg" alt="Aloo Bemisaal" />
                    <h3>Aloo Bemisaal</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/wine&cheese.jpg" alt="Wine Cheese" />
                    <h3>Wine Cheese</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/Mushroom%20stacks.jpg" alt="Mushroom Stacks" />
                    <h3>Mushroom Stacks</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/berry%20salad.jpg" alt="Berry Salad" />
                    <h3>Berry Salad</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/cheesy%20spinach.jpg" alt="Cheesy Spinach" />
                    <h3>Cheesy Spinach</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/Corn%20Proppers.jpg" alt="Corn Proppers" />
                    <h3>Corn Proppers</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/Soya%20Galouti.jpg" alt="Soya Galouti" />
                    <h3>Soya Galouti</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/Stuffed%20Mushrooms.jpg" alt="Stuffed Mushrooms" />
                    <h3>Stuffed Mushrooms</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/Cucumber%20Boats.jpg" alt="Cucumber Boats" />
                    <h3>Cucumber Boats</h3>
                </div>
            </div>
            <hr />

            <!-- Main Course Section -->
            <h2>Main Course</h2>
            <div class="row">
                <div class="col-12 col-sm-6 col-md-4 menu-item">
                    <img src="Images/ang.jpg" style="height:100px; width:100px;" alt="Paneer Angara" />
                    <h3>Paneer Angara</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-4 menu-item">
                    <img src="Images/kolhapuri.jpg" style="height:100px; width:100px;" alt="Paneer Kolhapuri" />
                    <h3>Paneer Kolhapuri</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-4 menu-item">
                    <img src="Images/palak.jpg" style="height:100px; width:100px;" alt="Palak Paneer" />
                    <h3>Palak Paneer</h3>
                </div>
            </div>
        </div>

        <!-- Modal -->
<div class="modal fade" id="productModal" tabindex="-1" aria-labelledby="productModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="productModalLabel">Product Details</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p id="productName"></p>
                <p id="productPrice"></p>
                <p id="productQuantity"></p>
            </div>
            <div class="modal-footer">
                
            </div>
        </div>
    </div>
</div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
