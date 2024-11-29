package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import dao.ProdutoDAO;

@WebServlet("/relatorioVendas")
public class RelatorioVendasServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Iniciando a execução do servlet Relatório de Vendas...");

        try {
            // Instanciando o DAO
            ProdutoDAO produtoDAO = new ProdutoDAO();
            System.out.println("DAO instanciado com sucesso!");

            // Chamando o método para listar vendas
            List<Object[]> vendas = produtoDAO.listarRelatorioVendas();
            System.out.println("Consulta de vendas realizada!");

            // Logando os resultados no console
            if (vendas != null && !vendas.isEmpty()) {
                System.out.println("Vendas encontradas:");
                for (Object[] venda : vendas) {
                    System.out.println("ID Venda: " + venda[0] + ", Data: " + venda[1] + ", Cliente: " + venda[2]);
                }
                request.setAttribute("vendas", vendas);

            } else {
                System.out.println("Nenhuma venda encontrada no banco de dados.");
                request.setAttribute("vendas", null);
            }

            // Encaminhar para a página JSP
            request.getRequestDispatcher("views/relatorioVendas.jsp").forward(request, response);
            System.out.println("Encaminhando para a página JSP.");

        } catch (Exception e) {
            System.out.println("Erro ao processar o servlet: " + e.getMessage());
            e.printStackTrace();

            // Encaminhar mensagem de erro para o JSP
            request.setAttribute("erro", "Erro ao carregar os dados de vendas.");
            request.getRequestDispatcher("views/relatorioVendas.jsp").forward(request, response);
        }
    }



}

