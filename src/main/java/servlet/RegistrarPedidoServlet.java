package servlet;

import dao.ClienteDao;
import dao.PedidoDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/registrarPedido")
public class RegistrarPedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recebendo os dados do formulário
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String produto = request.getParameter("produto");
        double preco = Double.parseDouble(request.getParameter("preco"));

        try {
            // Inserir cliente ou verificar se já existe
            ClienteDao clienteDAO = new ClienteDao();
            int clienteId = clienteDAO.obterOuCriarCliente(nome, email, cpf);

            // Criar pedido no banco de dados
            PedidoDAO pedidoDAO = new PedidoDAO();
            int pedidoId = pedidoDAO.criarPedido(preco, clienteId);

            // Redirecionar para página de sucesso
            request.setAttribute("mensagem", "Pedido registrado com sucesso! ID do Pedido: " + pedidoId);
            request.getRequestDispatcher("views/sucesso.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("erro", "Erro ao registrar o pedido: " + e.getMessage());
            request.getRequestDispatcher("views/erro.jsp").forward(request, response);
        }
    }
}

