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
<table border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
  <td><section id = "wrapper" name="wrapper">
    <section id="cabecalho"><br>Sistema de Cadastro de Clientes - JavaWeb  </section>
    
    <nav>
    
    </nav>
    
    <form id="form1" name="form1" method="post" action="/ClienteController">
      <section id="conteudo">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2"><section id="subcabecalho">      Cadastro de Clientes </section></td>
          </tr>
          <tr>
            <td width="54">Nome:</td>
            <td width="438"><label for="cpf"></label>
              <input type="text" name="nome" id="nome">
              <input type="hidden" name="tipo" value="salvar"></td>
          </tr>
          <tr>
            <td>CFP:</td>
            <td><input type="text" name="cpf" id="cpf"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="enviar" id="enviar" value="Enviar"></td>
          </tr>
        </table>
      </section>
    </form>
          <footer>Todos os Direitos Reservados - Lukas Roberto - Rodrigo Martins</footer>
  </section>
    </td></tr>
    </table>
</body>
</html>
