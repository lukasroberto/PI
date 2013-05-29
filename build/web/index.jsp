<%-- 
    Document   : cadastroDeCliente
    Created on : 09/05/2013, 20:58:58
    Author     : Lukas
--%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Cliente</title>
<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body>
<section id = "wrapper" name="wrapper">
  <%@include file="cabecalho.jsp"%>
  <form id="form1" name="form1" method="post" action="/ClienteController">
    <section id="conteudo">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td width="54"><div id="descr">Nome:</div></td>
          <td width="438"><label for="sobrenome"></label>
            <input name="nome" type="text" class="texbox" id="nome" size="60" maxlength="60">
            <input type="hidden" name="tipo" value="salvar"></td>
        </tr>
        <tr>
          <td><div id="descr">Sobrenome:</div></td>
          <td><input name="sobrenome" type="text" class="texbox" id="sobrenome" size="60" maxlength="60"></td>
        </tr>
        <tr>
          <td><div id="descr">CPF:</div></td>
          <td><input name="cpf" type="text" class="texbox" id="cpf"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="enviar" id="enviar" value="Enviar"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </section>
  </form>
  <%@include file="rodape.jsp"%>
</section>
</body>
</html>
