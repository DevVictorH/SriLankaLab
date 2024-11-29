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
            // Coleta dos parâmetros
            String nome = request.getParameter("nome");
            String preco = request.getParameter("preco");
            String strQuantidade = request.getParameter("quantidade");
            String desc = request.getParameter("descricao");

            // Criação do objeto Produto
            Produto produto = new Produto(nome, Double.parseDouble(preco),Integer.parseInt(strQuantidade), desc);
            dao.inserir(produto);
            
            
            // Validação do produto
            String mensagemErro = ProdutoValidador.validar(produto);

            if (mensagemErro != null) {
                // Exceção para erros de validação
                request.setAttribute("erro", mensagemErro);
                request.getRequestDispatcher("/views/cadastroProduto.jsp").forward(request, response);
                System.out.print("passou no if");
            } else {
                // Caso contrário, redirecionar para a página de sucesso ou exibir a mensagem
                request.setAttribute("sucesso", "Produto cadastrado com sucesso!");
                request.getRequestDispatcher("/views/cadastroProduto.jsp").forward(request, response);
                System.out.print("passou no else");
            }
        } catch (Exception e) {
            // Exceção para outros erros
            request.setAttribute("erro", "Erro ao cadastrar produto.");
            request.getRequestDispatcher("/views/cadastroProduto.jsp").forward(request, response);
            System.out.print("CATCH");
        }
    }
}