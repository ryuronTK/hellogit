package blog;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {

	final static String DRIVER = "com.mysql.jdbc.Driver";

	final static String URL = "jdbc:mysql://localhost/mydb";

	final static String USER = "root";

	final static String PASS = "hoge";

	public static Connection getConnection()
	        throws SQLException {

		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new IllegalStateException(
				   "fail to class load : "
					      + e.getMessage());
		}

	Connection con = DriverManager.getConnection(URL, USER, PASS);

	return con;

	}

}