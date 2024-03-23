
        let shoppingCart = [];

        function addToCart(product, price) {
            // Retrieve existing cart items from local storage
            const storedCart = localStorage.getItem('shoppingCart');
            if (storedCart) {
                shoppingCart = JSON.parse(storedCart);
            }

            // Add the new item to the cart
            shoppingCart.push({ product, price });

            // Save the updated cart back to local storage
            localStorage.setItem('shoppingCart', JSON.stringify(shoppingCart));

            // Show a message using SweetAlert2
            Swal.fire({
                title: 'Success!',
                text: `Your item "${product}" was added to the cart.`,
                icon: 'success',
                confirmButtonText: 'OK'
            });
            updateCart();
        }

        function updateCart() {
            displayCart();
        }

        function displayCart() {
            const cartItemsElement = document.getElementById('cartItems');
            const cartTotalElement = document.getElementById('cartTotal');

            // Retrieve cart data from local storage
            const storedCart = localStorage.getItem('shoppingCart');
            if (storedCart) {
                shoppingCart = JSON.parse(storedCart);

                // Display cart items and calculate total
                let total = 0;
                cartItemsElement.innerHTML = "";
                shoppingCart.forEach(item => {
                    const listItem = document.createElement('li');
                    listItem.textContent = `${item.product} - ₹${item.price}`;
                    cartItemsElement.appendChild(listItem);
                    total += item.price;
                });

                // Display total
                cartTotalElement.textContent = total.toFixed(2);
                return total;
            }
        }

        function checkout() {
            var username = document.getElementById("username").value;
            var address = document.getElementById("address").value;
            var paymentMode = document.getElementById("paymentMode").value;

            var cartItems = shoppingCart;

            var productNames = [];
            var prices = [];

            // Loop through cart items to extract product details
            cartItems.forEach(function(item) {
                productNames.push(item.product);
                prices.push(item.price);
            });

            // Calculate total price by summing up all prices
            var totalPrice = prices.reduce((acc, curr) => acc + curr, 0);

            // Populate hidden fields with values
            document.getElementById("productNames").value = productNames.join(',');
            document.getElementById("prices").value = prices.join(',');
            document.getElementById("username").value = username;
            document.getElementById("address").value = address;
            document.getElementById("paymentMode").value = paymentMode;
            document.getElementById("totalprice").value = totalPrice; // Set total price

            // Clear the local storage
            localStorage.removeItem('shoppingCart');

            // Submit the form
            document.getElementById("checkoutForm").submit();
        }

        // Display the cart contents on page load
        displayCart();
   