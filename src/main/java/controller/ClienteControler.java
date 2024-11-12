package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.ClienteDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cliente;

@WebServlet(name = "clientes", urlPatterns = { "/clientes", "/clientes/novo", "/clientes/editar", "/clientes/update",
		"/clientes/excluir", "/clientes/listar" })
public class ClienteControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClienteDao clienteDao;

	public ClienteControler() {
		super();
		clienteDao = new ClienteDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/clientes/novo":
				novo(request, response);
				break;
			case "/clientes/listar":
				listar(request, response);
				break;
			case "/clientes/excluir":
				excluir(request, response);
				break;
			case "/clientes/editar":
				editarForm(request, response);
				break;
			case "/clientes/update":
				update(request, response);
				break;
			default:
				listar(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listar(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		ArrayList<Cliente> listaClientes = clienteDao.listar();
		request.setAttribute("listaClientes", listaClientes);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/clientes/cliente-listar.jsp");
		dispatcher.forward(request, response);
	}

	private void novo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/clientes/cliente-cadastro.jsp");
		dispatcher.forward(request, response);
	}

	private void editarForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Cliente clienteAlterar = clienteDao.buscarPorId(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/clientes/clientecadastro.jsp");
		request.setAttribute("cliente", clienteAlterar);
		dispatcher.forward(request, response);
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String nome = request.getParameter("nome");
		Cliente clienteAtualizar = new Cliente();
		clienteAtualizar.setId(id);
		clienteAtualizar.setNome(nome);
		clienteDao.atualizar(clienteAtualizar);
		response.sendRedirect("listar");
	}

	private void excluir(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		clienteDao.excluir(id);
		response.sendRedirect("listar");
	}

}