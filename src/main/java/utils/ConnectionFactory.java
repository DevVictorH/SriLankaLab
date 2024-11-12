package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	public static Connection getConexao() throws SQLException {
		
		try {
			// Registrar o driver manualmente
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/srilankalab?useSSL=false&serverTimezone=UTC";
			String usuario = "root";
			String senha = "123321";

			return DriverManager.getConnection(url, usuario, senha);
		} catch (ClassNotFoundException e) {
			throw new SQLException(
					"Driver JDBC do MySQL não encontrado. Certifique-se de que o driver está no classpath.", e);
		} catch (SQLException e) {
			throw new RuntimeException("Erro ao conectar ao banco de dados. Verifique a URL, usuário e senha.", e);
		}
	}
}
