package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;

import utils.ConnectionFactory;

public class PedidoDAO {
    public int criarPedido(double valorTotal, int clienteId) throws Exception {
        Connection conn = ConnectionFactory.getConexao();

        // Inserir novo pedido
        String query = "INSERT INTO pedidos (valorTotal, dataPedido, Cliente_id) VALUES (?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
        stmt.setDouble(1, valorTotal);
        stmt.setObject(2, LocalDateTime.now());
        stmt.setInt(3, clienteId);
        stmt.executeUpdate();

        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            return rs.getInt(1);
        }

        throw new Exception("Erro ao inserir pedido.");
    }
}
