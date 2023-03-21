<?php
include '../PHP/conn.php';
require '../PHP/header.php';

?>
<div class="shop-title text-center m-5">
    <h1>Giỏ hàng</h1>
</div>
<table id="cart-table" class="table table-hover">
    <thead>
        <tr>
            <th>Image</th>
            <th>Title</th>
            <th>Body</th>
            <th>Price</th>
        </tr>
    </thead>
    <tbody></tbody>
</table>

<div class="shop-form text-center m-5">
    <h2>Thông tin mua hàng</h2>
</div>
<div class="container">
    <form method="post" action="shopping.php">
        <div class="form-row m-4" style="display: flex;">
            <div class="form-group col-md-6 pe-2">
                <input type="text" id="name" name="name" class="form-control" placeholder="Tên">
            </div>

            <div class="form-group col-md-6 ps-2">
                <input type="tel" id="phone" name="phone" class="form-control" placeholder="Số điện thoại">
            </div>
        </div>

        <div class="form-group m-4">
            <input type="text" id="address" name="address" class="form-control" placeholder="Địa chỉ">
        </div>

        <div class="form-group m-4">
            <textarea id="note" name="note" class="form-control" placeholder="Ghi chú"></textarea>
        </div>
        <div class="form-group m-4">
            <button type="submit" class="btn btn-primary" style="width: 100%;">Mua hàng</button>
        </div>
    </form>


</div>

<style>
    .container {
        background: #fff;
        display: flex;
        justify-content: center;
        margin-bottom: 50px;
        width: 1000px;
        min-height: 400px;
        padding: 50px;
        border-radius: 12px;
        box-shadow: 0 24px 80px rgba(0, 0, 0, .07), 0 10.0266px 33.4221px rgba(0, 0, 0, .0503198), 0 5.36071px 17.869px rgba(0, 0, 0, .0417275), 0 3.00517px 10.0172px rgba(0, 0, 0, .035), 0 1.59602px 5.32008px rgba(0, 0, 0, .0282725), 0 0.664142px 2.21381px rgba(0, 0, 0, .0196802);
    }

    form {
        width: 100%;
        height: 100%;
    }

    input {
        height: 50px;
    }

    .btn-primary {
        height: 50px;
    }
</style>

<script>
    function loadCart() {
        var cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
        var cartTable = document.querySelector("#cart-table tbody");
        var total = 0;

        cartTable.innerHTML = ""; // clear previous cart items

        for (var i = 0; i < cartItems.length; i++) {
            var product = cartItems[i];

            var row = document.createElement("tr");

            var imgCell = document.createElement("td");
            var img = document.createElement("img");
            img.src = product[0];
            imgCell.appendChild(img);
            row.appendChild(imgCell);

            var titleCell = document.createElement("td");
            titleCell.textContent = product[1];
            row.appendChild(titleCell);

            var bodyCell = document.createElement("td");
            bodyCell.textContent = product[2];
            row.appendChild(bodyCell);

            var priceCell = document.createElement("td");
            priceCell.textContent = product[3];
            row.appendChild(priceCell);

            var deleteCell = document.createElement("td");
            var deleteButton = document.createElement("button");
            deleteButton.textContent = "Delete";
            deleteButton.addEventListener("click", function() {
                var rowIndex = this.closest("tr").rowIndex;
                cartItems.splice(rowIndex - 1, 1);
                localStorage.setItem("cartItems", JSON.stringify(cartItems));
                this.closest("tr").remove(); // remove row from table
                updateTotal();
            });
            deleteCell.appendChild(deleteButton);
            row.appendChild(deleteCell);

            cartTable.appendChild(row);

            total += parseFloat(product[3].replace("$", ""));
        }

        var totalRow = document.createElement("tr");
        var totalCell = document.createElement("td");
        totalCell.colSpan = 3;
        totalCell.textContent = "Total";
        totalRow.appendChild(totalCell);

        var totalAmountCell = document.createElement("td");
        totalAmountCell.textContent = "$" + total.toFixed(2);
        totalAmountCell.id = "total-amount";
        totalRow.appendChild(totalAmountCell);

        cartTable.appendChild(totalRow);
    }




    function updateTotal() {
        var cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
        var total = 0;
        for (var i = 0; i < cartItems.length; i++) {
            var product = cartItems[i];
            total += parseFloat(product[3].replace("$", ""));
        }
        document.querySelector("#total-amount").textContent = "$" + total.toFixed(2);
    }

    loadCart();
</script>

<?php
include '../PHP/footer.php';
?>