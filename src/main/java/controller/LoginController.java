package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utils.ConnectionFactory;


public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        String sql = "SELECT nome FROM clientes WHERE email = ? AND senha = ?";
        try (Connection conexao = ConnectionFactory.getConexao();
             PreparedStatement ps = conexao.prepareStatement(sql)) {
            ps.setString(1, email);
            ps.setString(2, senha);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String nome = rs.getString("nome");

                    // Salva o nome do usuário na sessão
                    request.getSession().setAttribute("usuarioNome", nome);

                    // Redireciona para a página inicial
                    response.sendRedirect("indexLogado.jsp");
                } else {
                    // Redireciona para o login com erro
                    request.setAttribute("erro", "Email ou senha inválidos");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("erro.jsp");
        }
    }
}