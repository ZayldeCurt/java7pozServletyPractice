<html>
<head>
<title>Zaloguj</title>
</head>
<body>
<%--<h2>Hello World!</h2>--%>
    <h1>
        Twoje IP to: <%= request.getRemoteAddr() %>
    </h1>
    <form action="/login" method="post">
        <input type="text"  class="form-control" id="firstName" name="firstName" placeholder="imię">
        <input type="text"  class="form-control" id="lastName" name="lastName" placeholder="nazwisko">
        <input type="password" class="form-control" id="password" name="password" placeholder="hasło">

        <button type="submit">Zaloguj</button>
    </form>
</body>
</html>
