package dbms;

import java.sql.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ConPull {
	public Connection con = null;
	public PreparedStatement pstmt = null;
	public ResultSet rs = null;
	
	public ConPull() {
		try {
			Context initCtx = new InitialContext();
			Context ctx = (Context)initCtx.lookup("java:comp/env");
			DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");
			con = source.getConnection();
			System.out.println("Connection Pull Succesful");
		}catch(Exception e) {
			System.out.println("You're ConnectionPull Commands was denied for "+e);
		}
	}
	
	public void closed() {
		try {
			if(con != null) {con.close();}
			if(pstmt != null) {pstmt.close();}
			if(rs != null) {rs.close();}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
