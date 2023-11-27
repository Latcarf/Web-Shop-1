<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>

<h1>BUYSELL</h1>
<h3>Подробна інформація о ${user.name}</h3>
<b>Номер телефону: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>

<hr>
<h4>Товари користувача ${user.name}</h4>

<#list products as product>
    <div>
    <p><b>${product.title}</b> ${product.price} грн | <a href="/product/${product.id}">Детальніше...</a></p>
    </div>
<#else>
    <h3>НЕМА ТОВАРУ</h3>
</#list>

<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>

</body>
</html>