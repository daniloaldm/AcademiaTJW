package factories;

import java.sql.Connection;
import java.sql.DriverManager;


// CLASSE QUE CONECTA O PROJETO AO BANCO DE DADOS UTILIZADO PARA APLICACAO
public class ConnectionFactory {
	private static Connection conn;
	
	public static Connection getConnection() {
		if (conn == null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/gym?useTimezone=true&serverTimezone=UTC",
					"LOGIN DO LOCALHOST DO MYSQL",
					"COLOCAR SENHA DO MYSQL"
				);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return conn;
	}

}
