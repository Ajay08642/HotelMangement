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
            cursor: pointer;
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
        function showProductDetails(productName) {
            // Sample data, replace with dynamic content as needed
            var productDetails = {
                "Paneer Crispy": { price: "₹250", availableQuantities: [1, 2, 3, 4, 5] },
                "Spice Potato": { price: "₹150", availableQuantities: [1, 2, 3, 4, 5] },
                "Masala Pav": { price: "₹120", availableQuantities: [1, 2, 3, 4, 5] },
                "Aloo Bemisaal": { price: "₹180", availableQuantities: [1, 2, 3, 4, 5] },
                "Wine Cheese": { price: "₹350", availableQuantities: [1, 2, 3, 4, 5] },
                "Mushroom Stacks": { price: "₹300", availableQuantities: [1, 2, 3, 4, 5] },
                "Berry Salad": { price: "₹220", availableQuantities: [1, 2, 3, 4, 5] },
                "Cheesy Spinach": { price: "₹250", availableQuantities: [1, 2, 3, 4, 5] },
                "Corn Proppers": { price: "₹180", availableQuantities: [1, 2, 3, 4, 5] },
                "Soya Galouti": { price: "₹200", availableQuantities: [1, 2, 3, 4, 5] },
                "Stuffed Mushrooms": { price: "₹280", availableQuantities: [1, 2, 3, 4, 5] },
                "Cucumber Boats": { price: "₹150", availableQuantities: [1, 2, 3, 4, 5] },
                "Paneer Angara": { price: "₹320", availableQuantities: [1, 2, 3, 4, 5] },
                "Paneer Kolhapuri": { price: "₹310", availableQuantities: [1, 2, 3, 4, 5] },
                "Palak Paneer": { price: "₹290", availableQuantities: [1, 2, 3, 4, 5] }
            };

            // Get product details based on the productName passed
            var product = productDetails[productName];

            // Update modal content
            document.getElementById('productName').textContent = productName;
            document.getElementById('productPrice').textContent = product.price;

            // Populate quantity dropdown
            var quantityDropdown = document.getElementById('productQuantity');
            quantityDropdown.innerHTML = ""; // Clear previous options
            product.availableQuantities.forEach(function (quantity) {
                var option = document.createElement('option');
                option.value = quantity;
                option.textContent = quantity;
                quantityDropdown.appendChild(option);
            });

            // Show the modal
            var myModal = new bootstrap.Modal(document.getElementById('productModal'), {
                keyboard: false
            });
            myModal.show();
        }

        //function confirmOrder() {
        //     Confirmation popup
        //    if (confirm("Do you want to place the order?")) {
        //        alert("Order placed successfully!");
        //    } else {
        //        alert("Order cancelled.");
        //    }
        //}
        
        //    function confirmOrder() {
        //// First confirmation dialog
        //if (confirm("Do you want to place the order?")) {
        //    // Second confirmation dialog
        //    if (confirm("Would you like to order additional items?")) {
        //        alert("Feel free to select more items.");
        //        // Optionally, you can close the current modal or keep it open based on your needs
        //    } else {
        //        alert("Order placed successfully!");
        //    // Close the modal
        //    var myModalEl = document.getElementById('productModal');
        //    var modal = bootstrap.Modal.getInstance(myModalEl);
        //    modal.hide();
        //    }
        //} else {
        //        alert("Order cancelled.");
        //}
        //}

 
            function confirmOrder() {
                // Show the second confirmation dialog directly
                showConfirmationModal("Would you like to order additional items?", function (result) {
                    if (result) {
                        window.location.href = "hm3.aspx";
                         // Optionally, you can close the current modal or keep it open based on your needs
                    } else {
                       
                        // Close the modal
                        var myModalEl = document.getElementById('productModal');
                        var modal = bootstrap.Modal.getInstance(myModalEl);
                        modal.hide();
                        // Redirect to another page
                        alert("Order placed successfully!");
                    }
                });
  }


        function showConfirmationModal(message, callback) {
            var confirmationModal = new bootstrap.Modal(document.getElementById('confirmationModal'));
            document.getElementById('confirmationMessage').textContent = message;

            // Set up Yes/No button actions
            document.getElementById('confirmYes').onclick = function () {
                callback(true);
                confirmationModal.hide();
            };
            document.getElementById('confirmNo').onclick = function () {
                callback(false);
                confirmationModal.hide();
            };

            confirmationModal.show();
        }

        //function showPaymentSuccessfulModal() {
        //    var paymentSuccessModal = new bootstrap.Modal(document.getElementById('paymentSuccessModal'));
        //    paymentSuccessModal.show();

        //    // Redirect when the user clicks OK
        //    document.getElementById('paymentSuccessOkButton').onclick = function () {
        //        paymentSuccessModal.hide();
        //        window.location.href = "payment sucessful";
        //    };
        //}

       
        

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
                    <img src="Images/spice%20potato.jpg" alt="Spice Potato" onclick="showProductDetails('Spice Potato')" />
                    <h3>Spice Potato</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/masala%20pav.jpg" alt="Masala Pav" onclick="showProductDetails('Masala Pav')" />
                    <h3>Masala Pav</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/aloo%20bemisaal.jpg" alt="Aloo Bemisaal" onclick="showProductDetails('Aloo Bemisaal')" />
                    <h3>Aloo Bemisaal</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/wine&cheese.jpg" alt="Wine Cheese" onclick="showProductDetails('Wine Cheese')" />
                    <h3>Wine Cheese</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/Mushroom%20stacks.jpg" alt="Mushroom Stacks" onclick="showProductDetails('Mushroom Stacks')" />
                    <h3>Mushroom Stacks</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/berry%20salad.jpg" alt="Berry Salad" onclick="showProductDetails('Berry Salad')" />
                    <h3>Berry Salad</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/cheesy%20spinach.jpg" alt="Cheesy Spinach" onclick="showProductDetails('Cheesy Spinach')" />
                    <h3>Cheesy Spinach</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/corn%20proppers.jpg" alt="Corn Proppers" onclick="showProductDetails('Corn Proppers')" />
                    <h3>Corn Proppers</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/Soya%20Galouti.jpg" alt="Soya Galouti" onclick="showProductDetails('Soya Galouti')" />
                    <h3>Soya Galouti</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/stuffed%20mushrooms.jpg" alt="Stuffed Mushrooms" onclick="showProductDetails('Stuffed Mushrooms')" />
                    <h3>Stuffed Mushrooms</h3>
                </div>
                <div class="col-12 col-sm-6 col-md-2 menu-item">
                    <img src="Images/cucumber%20boats.jpg" alt="Cucumber Boats" onclick="showProductDetails('Cucumber Boats')" />
                    <h3>Cucumber Boats</h3>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="productModal" tabindex="-1" aria-labelledby="productModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header"> 
                        <h5 class="modal-title" id="productName">Product Name</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <strong>Price:</strong>
                                <div id="productPrice">₹0</div>
                            </div>
                            <div class="col-md-6">
                                <strong>Quantity:</strong>
                                <select id="productQuantity" class="form-select">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary" onclick="confirmOrder()">Buy</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Custom Confirmation Modal -->
<div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="confirmationModalLabel">Confirmation</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="confirmationMessage">
        <!-- Confirmation message will be inserted here -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="confirmNo">No</button>
        <button type="button" class="btn btn-primary" id="confirmYes">Yes</button>
      </div>
    </div>
  </div>
</div>
    </form>
</body>
</html>
