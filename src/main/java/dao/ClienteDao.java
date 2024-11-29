package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import utils.ConnectionFactory;
import model.Cliente;

public class ClienteDao {

	Connection conexao;
	
	public ClienteDao() {}

	public boolean inserir(Cliente cliente) {
		boolean retorno = false;

		try {
			conexao = ConnectionFactory.getConexao();
			String sql = "INSERT INTO clientes (nome, cpf, email, senha) values(?,?,?,?)";
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, cliente.getNome());
			ps.setString(2, cliente.getCpf());
			ps.setString(3, cliente.getEmail());
			ps.setString(4, cliente.getSenha());
			int linhasAfetadas = ps.executeUpdate();
			if (linhasAfetadas > 0) {
				retorno = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Aqui deu erro em!!!!!!!!!");

		} finally {
			if (conexao != null) {
				try {
					conexao.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return retorno;
	}

	public ArrayList<Cliente> listar() {
		String sql = "SELECT * FROM Clientes";
		ArrayList<Cliente> clientes = new ArrayList<>();

		try (Connection conexao = ConnectionFactory.getConexao();
				PreparedStatement preparedStatement = conexao.prepareStatement(sql)) {
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String nome = rs.getString("nome");
				String cpf = rs.getString("cpf");
				Cliente cliente = new Cliente();
				cliente.setId(id);
				cliente.setCpf(cpf);
				cliente.setNome(nome);
				clientes.add(cliente);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return clientes;
	}

	public boolean atualizar(Cliente clienteAtualizar) {
		boolean retorno = false;

		try {
			conexao = ConnectionFactory.getConexao();
			String sql = "UPDATE clientes SET nome=? WHERE id_cliente = ?";
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, clienteAtualizar.getNome());
			ps.setInt(2, clienteAtualizar.getId());
			int linhasAfetadas = ps.executeUpdate();
			if (linhasAfetadas > 0) {
				retorno = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conexao != null) {
				try {
					conexao.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return retorno;
	}

	public boolean excluir(int id) {
		boolean retorno = false;
		try {

			conexao = ConnectionFactory.getConexao();
			String sql = "DELETE FROM clientes WHERE id_cliente = ?";

			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setInt(1, id);
			int linhasAfetadas = ps.executeUpdate();

			if (linhasAfetadas > 0) {
				retorno = true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conexao != null) {
				try {
					conexao.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return retorno;
	}

	public Cliente buscarPorId(int id) {
	    Cliente cliente = null;
	    String sql = "SELECT * FROM Clientes WHERE id = ?";

	    try (Connection conexao = ConnectionFactory.getConexao();
	         PreparedStatement preparedStatement = conexao.prepareStatement(sql)) {
	        preparedStatement.setInt(1, id);
	        ResultSet rs = preparedStatement.executeQuery();

	        if (rs.next()) {
	            cliente = new Cliente();
	            cliente.setId(rs.getInt("id"));
	            cliente.setCpf(rs.getString("cpf"));
	            cliente.setNome(rs.getString("nome"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return cliente;
	}
	
	public int obterOuCriarCliente(String nome, String email, String cpf) throws Exception {
        Connection conn = ConnectionFactory.getConexao();

        String queryVerificar = "SELECT idCliente FROM clientes WHERE cpf = ?";
        PreparedStatement stmt = conn.prepareStatement(queryVerificar);
        stmt.setString(1, cpf);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            return rs.getInt("idCliente");
        }

        // Inserir novo cliente
        String queryInserir = "INSERT INTO clientes (nome, cpf, email, senha) VALUES (?, ?, ?, ?)";
        stmt = conn.prepareStatement(queryInserir, PreparedStatement.RETURN_GENERATED_KEYS);
        stmt.setString(1, nome);
        stmt.setString(2, cpf);
        stmt.setString(3, email);
        stmt.setString(4, "123");
        stmt.executeUpdate();

        rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            return rs.getInt(1);
        }

        throw new Exception("Erro ao inserir cliente.");
    }
}