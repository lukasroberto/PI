<%-- 
    Document   : cadastroDeCliente
    Created on : 09/05/2013, 20:58:58
    Author     : Lukas
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deletar Cliente</title>
<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body>
<section id = "wrapper" name="wrapper">
  <%@include file="cabecalho.jsp"%>
  <section id="conteudo">
    <section id="listaCliente">
      <table align="center">
        <tr>
          <th width="88">C&oacute;digo</th>
          <th width="261">Nome Completo</th>
          <th width="160">CPF</th>
        </tr>
        <c:forEach items="${clientes}" var="cliente">
          <form id="form2" name="form2" method="post" action="/ClienteController">
            <tr>
              <td>${cliente.id}</td>
              <td>${cliente.nome} ${cliente.sobrenome}</td>
              <td>${cliente.cpf}</td>
              <td><input type="hidden" name="tipo" value="deletar">
                <input type="hidden" name="id" value="${cliente.id}">
                <input type="submit" name="enviar2" id="enviar2" value="Deletar"></td>
            </tr>
          </form>
        </c:forEach>
      </table>
    </section>
  </section>
  <%@include file="rodape.jsp"%>
</section>
</body>
</html>
