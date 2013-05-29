package br.app.controllers;

import br.app.dao.ClienteDao;
import br.app.entidades.Cliente;
import java.io.IOException;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ClienteController extends HttpServlet {

    @Inject
    private ClienteDao dao;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        String cpf = request.getParameter("cpf");
        String tipo = request.getParameter("tipo");


        if (tipo.equals("atualizar")) {
            if (id == null) {
                //Listar
                List<Cliente> clientes1 = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "clientes", clientes1);
                request.getRequestDispatcher(
                        "AtualizarCliente.jsp").forward(request, response);
            } else {
                Cliente alteraCliente = dao.find(Long.parseLong(id));
                alteraCliente.setNome(nome.toString());
                alteraCliente.setSobrenome(sobrenome.toString());
                alteraCliente.setCpf(cpf.toString());
                dao.atualizar(alteraCliente);

                List<Cliente> clientes1 = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "clientes", clientes1);
                request.getRequestDispatcher(
                        "AtualizarCliente.jsp").forward(request, response);
            }
        }

        if (tipo.equals("salvar")) {

            if (nome == null) {
                //Listar
                List<Cliente> clientes1 = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "clientes", clientes1);
                request.getRequestDispatcher(
                        "index.jsp").forward(request, response);

            } else {

                //Cria um novo Cliente
                Cliente salvaCliente = new Cliente();
                salvaCliente.setCpf(cpf);
                salvaCliente.setNome(nome);
                salvaCliente.setSobrenome(sobrenome);
                //Salvar
                dao.salvar(salvaCliente);
                //Listar
                List<Cliente> clientes1 = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "clientes", clientes1);
                request.getRequestDispatcher(
                        "listarCliente.jsp").forward(request, response);

            }
        }
        if (tipo.equals("deletar")) {

            if (id == null) {
                //Listar
                List<Cliente> clientes1 = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "clientes", clientes1);
                request.getRequestDispatcher(
                        "DeletarCliente.jsp").forward(request, response);
            } else {
                System.out.println(id + "<<<<<<<<<<<<");

                Cliente deletaCliente = dao.find(Long.parseLong(id));
                dao.deletar(deletaCliente);

                //Listar
                List<Cliente> clientes1 = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "clientes", clientes1);
                request.getRequestDispatcher(
                        "DeletarCliente.jsp").forward(request, response);
            }
        }
        if (tipo.equals("listar")) {
            //Listar
            List<Cliente> clientes1 = dao.listar();
            //Envia para JSP
            request.setAttribute(
                    "clientes", clientes1);
            request.getRequestDispatcher(
                    "listarCliente.jsp").forward(request, response);


        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
