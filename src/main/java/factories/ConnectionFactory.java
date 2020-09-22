package factories;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	private static Connection conn;
	
	public static Connection getConnection() {
		if (conn == null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/gym?useTimezone=true&serverTimezone=UTC",
					"root",
					"12345"
				);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return conn;
	}

}
