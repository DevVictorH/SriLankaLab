package servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.util.*;


public class CarrinhoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        // Obter o carrinho da sessão ou criar um novo se não existir
        List<Map<String, Object>> carrinho = (List<Map<String, Object>>) session.getAttribute("carrinho");
        if (carrinho == null) {
            carrinho = new ArrayList<>();
        }

        // Obter informações do produto
        String produto = request.getParameter("produto");
        double preco = Double.parseDouble(request.getParameter("preco"));

        // Adicionar produto ao carrinho
        Map<String, Object> item = new HashMap<>();
        item.put("produto", produto);
        item.put("preco", preco);
        carrinho.add(item);

        // Salvar o carrinho atualizado na sessão
        session.setAttribute("carrinho", carrinho);

        // Redirecionar para a página de exibição do carrinho
        response.sendRedirect("carrinho.jsp");
    }
}
