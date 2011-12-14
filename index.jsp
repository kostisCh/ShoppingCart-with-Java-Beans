<%-- 
    Document   : index
    Created on : 14 Δεκ 2011, 6:06:11 μμ
    Author     : constantine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="prices.*"%>

<jsp:useBean id="basket" class="prices.Shopping" scope="session"/>
<jsp:setProperty name="basket" property="*"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WWW Technologies Project 3</title>
    </head>
    <body>
              <h1>My Shopping Cart</h1>
        <form method="post" action="index.jsp">
            <table border="1" cellpadding="5" width="300">
            <tr>
                <td align="center"><strong>Item</strong></td>
                <td align="center"><strong>Price</strong></td>
                <td align="center"><strong>Quantity</strong></td>
                <td align="center"><strong>Total</strong></td>
                </tr>
            <tr>
                <td align="left">Cafe</td>
                <td><jsp:getProperty name="basket" property="cafePrice"/></td>
                <td><input type="text" name="cafeQuantity" value="<jsp:getProperty name="basket" property="cafeQuantity"/>"/></td>
                <td align="right"><jsp:getProperty name="basket" property="cafeTotal"/>€</td>
            </tr>
            <tr>
                <td align="left">Sugar</td>
                <td><jsp:getProperty name="basket" property="sugarPrice"/></td>
                <td><input type="text" name="sugarQuantity" value="<jsp:getProperty name="basket" property="sugarQuantity"/>"></td>
                <td align="right"><jsp:getProperty name="basket" property="sugarTotal"/>€</td>
                </tr>
            <tr>
                <td align="left">Water</td>
                <td><jsp:getProperty name="basket" property="waterPrice"/></td>
                <td><input type="text" name="waterQuantity" value="<jsp:getProperty name="basket" property="waterQuantity"/>"></td>
                <td align="right"><jsp:getProperty name="basket" property="waterTotal"/>€</td>
            </tr>
            <tr>
                <td align="left">Total</td>
                <td></td>
                <td></td>
                <td align="right"><jsp:getProperty name="basket" property="basketTotal"/>€</td>
            </tr>
        </table>
       <input type="submit" value="Checkout" name="Checkout"/>
      <a href="http://constantinediary.wordpress.com/2011/12/14/my-shopping-cart/" target="_blank">Report</a>
       <a href="http://dl.dropbox.com/u/15863529/cartScript.zip" target="_blank">ShoppingCartWithScriptlet</a>
       <a href="http://dl.dropbox.com/u/15863529/cartBeans.zip" target="_blank">ShoppingCartWithoutScriptlet</a>
        </form>
      </body>
</html>