package controller;


import java.io.IOException;

import dao.ProdutoDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/removerProduto")
public class RemoverProdutoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idProdutoStr = request.getParameter("idProduto");

        if (idProdutoStr != null && !idProdutoStr.isEmpty()) {
            int idProduto = Integer.parseInt(idProdutoStr);

            ProdutoDAO dao = new ProdutoDAO();
            boolean sucesso = dao.excluir(idProduto);

            if (sucesso) {
                response.sendRedirect("views/manutencaoProduto.jsp"); // Redireciona para a página de produtos
            } else {
                response.getWriter().println("Erro ao remover produto.");
            }
        } else {
            response.getWriter().println("ID do produto não fornecido.");
        }
    }
}
