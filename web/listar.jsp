<%-- 
    Document   : listar
    Created on : 28/04/2016, 21:12:10
    Author     : Maicon
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Contato"%>
<%@page import="controle.ContatoImpl"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Lista de Contatos</title>
    </head>
    <body>
        <h1>Contatos</h1>
        <div>
            <table>
                <tr>
                    <td>ID</td>
                    <td>NOME</td>
                    <td>TELEFONE</td>
                </tr>
                <%
                    ContatoImpl contatoImpl = new ContatoImpl();
                    List<Contato> list = contatoImpl.getListAll();
                    for(Contato c : list){
                        %>
                        <tr>
                            <td><%= c.getId() %></td>
                            <td><%= c.getNome()%></td>
                            <td><%= c.getTelefone()%></td>
                        </tr>
                        <%
                    }
                %>
            </table>
        </div>
    </body>
</html>
