package dbms;

import java.sql.*;

public class DBOpen {
	static String url = "jdbc:oracle:thin:@//180.68.32.70:1521/xe";
	static String uid = "system";
	static String pwd = "1234";
	public static Connection getConnection() throws Exception{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection(url,uid,pwd);
		return con;
	}
}
