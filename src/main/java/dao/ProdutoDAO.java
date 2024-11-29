package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Cliente;
import model.Produto;
import utils.ConnectionFactory;

public class ProdutoDAO {
	public List<Produto> listarProdutos() {
	    List<Produto> produtos = new ArrayList<>();
	    String sql = "SELECT idProduto, nome, valor FROM produtos";

	    try (Connection conexao = ConnectionFactory.getConexao();
	         PreparedStatement stmt = conexao.prepareStatement(sql);
	         ResultSet rs = stmt.executeQuery()) {

	        while (rs.next()) {
	            Produto produto = new Produto();
	            produto.setId(rs.getInt("idProduto"));
	            produto.setNome(rs.getString("nome"));
	            produto.setPreco(rs.getDouble("valor"));
	            produtos.add(produto);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return produtos;
	}
	
	
	public boolean excluir(int id) {
	    boolean retorno = false;
	    String sql = "DELETE FROM produtos WHERE idProduto = ?";

	    try (Connection conexao = ConnectionFactory.getConexao();
	         PreparedStatement ps = conexao.prepareStatement(sql)) {

	        ps.setInt(1, id);
	        int linhasAfetadas = ps.executeUpdate();       
	        if (linhasAfetadas > 0) {
	            retorno = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return retorno;

	}
	
	public boolean inserir(Produto produto) throws SQLException {
		boolean retorno = false;
		Connection conexao = ConnectionFactory.getConexao();
		
		try {
			String sql = "INSERT INTO produtos (nome, valor, quantidade, descProduto) values (?, ?, ?, ?)";
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, produto.getNome());
			ps.setDouble(2, produto.getPreco());
			ps.setInt(3, produto.getQuantidade());
			ps.setString(4, produto.getDescricao());
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
	
	public List<Object[]> listarRelatorioVendas() {
	    List<Object[]> vendas = new ArrayList<>();
	    String sql = "SELECT p.idPedido, p.dataPedido, c.nome FROM pedidos p INNER JOIN clientes c ON p.cliente_id = c.idCliente";

	    try (Connection conexao = ConnectionFactory.getConexao();
	         PreparedStatement stmt = conexao.prepareStatement(sql);
	         ResultSet rs = stmt.executeQuery()) {

	        System.out.println("Executando a query no DAO");

	        while (rs.next()) {
	            Object[] venda = new Object[3];
	            venda[0] = rs.getInt("idPedido"); 
	            venda[1] = rs.getDate("dataPedido"); 
	            venda[2] = rs.getString("nome"); 
	            vendas.add(venda);

	            System.out.println("Venda carregada no DAO: ID=" + venda[0] + ", Cliente=" + venda[2] + ", Data=" + venda[1]);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return vendas;
	}

	
}

