<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>

<h1>BUYSELL</h1><hr>
<h4>Детальна інформація про товар</h4>

<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>

<b>Назва товара: </b>${product.title}<br>
<b>Опис товару: </b>${product.description}<br>
<b>Ціна: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<b>Ім'я продавця: </b> <a href="/user/${product.user.id}"> ${product.user.name}</a><br>

</body>
</html>


