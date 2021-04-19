<%-- 
    Document   : newjsp
    Created on : 18-04-2021, 22:57:58
    Author     : I7_6700
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



    <title>Bono por hijo</title>
    </head>
    <body>
        <h1>Bono por hijo del 10% si tiene mas de un hijo</h1>
        <form method="post"> 
            <table>
                <tr>
                    <td>Ingrese nombre</td>
                    <td><input name="nombre" type="text" required></td>
                </tr>
                <tr>
                    <td>Cantidad de hijos</td>
                    <td><Input name="cantidadHijos" type="number" required></td>
                </tr>
                <tr>
                    <td>Sueldo</td>
                    <td><Input name="sueldo" type="number" required></td>
                </tr>
                
                 <tr>
                    <td>ingrese su fecha de nacimiento</td>
                    <td><Input name="fecnac" type="number" required></td>
                </tr>
               
              
                <tr>
                    <td colspan="2">
                        <button type="Submit">Solicitar</button>
                    </td>
                </tr>
            </table>
        </form>

        <table>
            <tr>
                <td> 
                    <%
                        if (request.getMethod().equals("POST")) {

                            int cantidadHijos, sueldo, fechanaci, fechaactual;
                            String nombre;

                            nombre = request.getParameter("nombre");
                            cantidadHijos = Integer.parseInt(request.getParameter("cantidadHijos"));
                            sueldo = Integer.parseInt(request.getParameter("sueldo"));
                            
                            fechanaci = Integer.parseInt(request.getParameter("fecnac"));
                            
                            
                            int bono = cantidadHijos * sueldo;
                            
                         

                            out.print("nombre: " + nombre);
                            out.print("</br>");
                            out.print("Bono: " + bono);
                            out.print("</br>");
                        }
                    %>
                </td>
            </tr>
        </table>
    </body>
</html>
