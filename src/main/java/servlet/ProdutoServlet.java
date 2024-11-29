package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.ClienteDao;
import dao.ProdutoDAO;
import model.Produto;
import model.ProdutoValidador;


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
            ProdutoDAO dao = new ProdutoDAO();
            String nome = request.getParameter("nome");
            String preco = request.getParameter("preco");
            String strQuantidade = request.getParameter("quantidade");
            String desc = request.getParameter("descricao");

            Produto produto = new Produto(nome, Double.parseDouble(preco), Integer.parseInt(strQuantidade), desc);

            // Validação do produto
            String mensagemErro = ProdutoValidador.validar(produto);

            if (mensagemErro != null) {
                // Exibe mensagem de erro e redireciona para a mesma página
                request.getSession().setAttribute("erro", mensagemErro);
                response.sendRedirect(request.getContextPath() + "/views/cadastroProduto.jsp");
            } else {
                dao.inserir(produto); // Salva no banco de dados
                request.getSession().setAttribute("sucesso", "Produto cadastrado com sucesso!");
                response.sendRedirect(request.getContextPath() + "/views/cadastroProduto.jsp");
            }
        } catch (Exception e) {
            request.getSession().setAttribute("erro", "Erro ao cadastrar produto.");
            response.sendRedirect(request.getContextPath() + "/views/cadastroProduto.jsp");
        }
    }

}