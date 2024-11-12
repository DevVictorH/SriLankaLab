package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import model.Produto;
import model.ProdutoValidador;

@WebServlet("/ProdutoServlet")
public class ProdutoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ProdutoServlet() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Coleta dos parâmetros
            String nome = request.getParameter("nome");
            String strQuantidade = request.getParameter("quantidade");

            // Criação do objeto Produto
            Produto produto = new Produto(nome, 0.0, 0, Integer.parseInt(strQuantidade));

            // Validação do produto
            String mensagemErro = ProdutoValidador.validar(produto);

            if (mensagemErro != null) {
                // Exceção para erros de validação
                request.setAttribute("erro", mensagemErro);
                request.getRequestDispatcher("/views/cadastroProduto.jsp").forward(request, response);
            } else {
                // Caso contrário, redirecionar para a página de sucesso ou exibir a mensagem
                request.setAttribute("sucesso", "Produto cadastrado com sucesso!");
                request.getRequestDispatcher("/views/cadastroProduto.jsp").forward(request, response);
            }
        } catch (Exception e) {
            // Exceção para outros erros
            request.setAttribute("erro", "Erro ao cadastrar produto.");
            request.getRequestDispatcher("/views/cadastroProduto.jsp").forward(request, response);
        }
    }
}