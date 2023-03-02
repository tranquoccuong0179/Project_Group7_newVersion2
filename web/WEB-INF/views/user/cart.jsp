<%-- 
    Document   : GioHang
    Created on : 28-02-2023, 13:45:35
    Author     : visao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<div class="cart">
    <h2>Giỏ hàng</h2>
    <table>
        <thead>
            <tr>
                <th>Sản phẩm</th>
                <th>Giá</th>
                <th>Số lượng</th>
                <th>Tổng tiền</th>
            </tr>
            <tr>
                <th>|</th>
                <th>|</th>
                <th>|</th>
                <th>|</th>
            </tr>
            <tr>
                <th>|</th>
                <th>|</th>
                <th>|</th>
                <th>|</th>
            </tr>
            <tr>
                <th>|</th>
                <th>|</th>
                <th>|</th>
                <th>|</th>
            </tr>
        </thead>
        <tbody id="cart-items">
        </tbody>
    </table>
    <div class="cart-total">
        <span>Tổng tiền:</span>
        <span id="cart-total">0đ</span>
    </div>
    <button onclick="checkout()">Thanh toán</button>
</div>

<script>
    let cart = [];

    function addToCart(productName, price) {
        let product = {
            name: productName,
            price: price,
            quantity: 1
        };

        let index = cart.findIndex(item => item.name === productName);
        if (index === -1) {
            cart.push(product);
        } else {
            cart[index].quantity += 1;
        }

        displayCartItems();
        updateCartTotal();
    }

    function removeFromCart(productName) {
        let index = cart.findIndex(item => item.name === productName);
        if (index !== -1) {
            if (cart[index].quantity === 1) {
                cart.splice(index, 1);
            } else {
                cart[index].quantity -= 1;
            }
            displayCartItems();
            updateCartTotal();
        }
    }

    function displayCartItems() {
        let cartItems = document.getElementById('cart-items');
        cartItems.innerHTML = '';
        for (let item of cart) {
            let row = document.createElement('tr');
            row.innerHTML = `
        <td>${item.name}</td>
        <td>${item.price}đ</td>
        <td>
          <button onclick="removeFromCart('${item.name}')">-</button>
    ${item.quantity}
          <button onclick="addToCart('${item.name}', ${item.price})">+</button>
        </td>
        <td>${item.price * item.quantity}đ</td>
      `;
            cartItems.appendChild(row);
        }
    }

    function updateCartTotal() {
        let cartTotal = document.getElementById('cart-total');
        let total = cart.reduce((acc, item) => acc + item.price * item.quantity, 0);
        cartTotal.innerText = `${total}đ`;
    }

    function checkout() {
        // handle checkout logic here
    }
</script>
