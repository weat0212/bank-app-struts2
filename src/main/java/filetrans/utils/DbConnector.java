package filetrans.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbConnector {

	private Connection conn;

	public Connection connect() throws ClassNotFoundException, SQLException {
		String URL = "jdbc:mysql://localhost:3306/training2";
		Class.forName("com.mysql.jdbc.Driver");
		try {
			conn = DriverManager.getConnection(URL, "root", "password");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (this.conn != null) {
				close();
			}
		}

		return this.conn;
	}

	public void query(String sql) throws SQLException {
		try {

			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

		} catch (Exception e) {

		} finally {
			close();
		}
	}

	public void close() throws SQLException {
		conn.close();
	}
}
