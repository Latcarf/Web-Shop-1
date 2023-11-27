<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>

<#if user.email??>
    <h3>Ім'я корисувача: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Вийти"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Панель адміністратора</a>
    </#if>
<#else>
    <a href="/login">Увійти </a></h1>
</#if>
<hr>

<h4>Товари з усієї України</h4>

<form action="/" method="get">
    Поиск по названию объявления: <input type="text" name="title">
    <input type="submit" value="Пошук"/>
</form>

<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} грн | <a href="/product/${product.id}">Детальніше...</a></p>
    </div>
<#else>
    <h3>Нема товару</h3>
</#list>


<#if user.email??>
<hr>
<h3>Створити новий товар</h3>
<form action="/product/create/" method="post" enctype="multipart/form-data">

    Назва оголошення: <input type="text" name="title"/><br><br>
    Опис оголошення: <input type="text" name="description"/><br><br>
    Ціна оголошення: <input type="number" name="price"/><br><br>
    Город: <input type="text" name="city"/><br><br>

    Перше фото: <input type="file" name="file1"/><br><br>
    Друге фото: <input type="file" name="file2"/><br><br>
    Третє фото: <input type="file" name="file3"/><br><br>

    <input type="hiden" name="_csrf" value="${_csrf.token}">

    <input type="submit" value="Додати товар"/>
    </#if>


</form>
</body>
</html>