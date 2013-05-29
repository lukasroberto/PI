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
<title>Atualizar Cliente</title>
<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body>
<section id = "wrapper" name="wrapper">
  <%@include file="cabecalho.jsp"%>
  <section id="conteudo">
    <section id="listaCliente">
      <table align="center">
        <tr>
          <th width="170">C&oacute;digo</th>
          <th width="175">Nome</th>
          <th width="201">Sobrenome</th>
          <th width="173">CPF</th>
        </tr>
        <c:forEach items="${clientes}" var="cliente">
          <form id="form42" name="form42" method="post" action="/ClienteController">
            <tr>
              <td><input name="codigo" type="text" class="texbox" id="id" value="${cliente.id}"></td>
              <td><input name="nome" type="text" class="texbox" id="nome" value="${cliente.nome} "></td>
              <td><label for="sobrenome"></label>
                <input name="sobrenome" type="text" class="texbox" id="sobrenome" value="${cliente.sobrenome} "></td>
              <td><label for="cpf"></label>
                <input name="cpf" type="text" class="texbox" id="cpf" value="${cliente.cpf}"></td>
              <td width="57"><input type="submit" name="enviar42" id="enviar42" value="Atualizar">
                <input type="hidden" name="tipo" value="atualizar">
                <input type="hidden" name="id" value="${cliente.id}"></td>
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
