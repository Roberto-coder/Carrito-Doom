<%-- 
    Document   : login
    Created on : 31/05/2020, 01:09:47 PM
    Author     : roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <title>Log in</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form>
                        <div class="form-group">
                            <label>Usuario:</label>
                            <input type="text" class="form-control" name="usuario" placeholder="Ingresa tu usuario">
                        </div>
                        <div class="form-group">
                            <label>Contraseña:</label>
                            <input type="password" class="form-control" name="password" placeholder="Ingresa tu contraseña">
                        </div>
                        <button type="submit" class="btn btn-primary" name="login" >Iniciar sesion</button>
                    </form>
                </div>
            </div>
    </body>
    <%
        if( request.getParameter("login")!=null ){
            String user=request.getParameter("usuario");
            String password=request.getParameter("password");
            HttpSession sesion=request.getSession();
            if(user.equals("admin") && password.equals("admin")){
                sesion.setAttribute("logueado", "1");
                sesion.setAttribute("user", user);
                response.sendRedirect("index.jsp");
            }
            else{
                out.print("Ingresaste el usuario o contraseña incorrectamente");
            }
        }
    %>
</html>
