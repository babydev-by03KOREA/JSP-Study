package dbms;

import java.sql.*;

import javax.servlet.ServletContext;

public class OCConnect {
	static Connection con = null;
	static PreparedStatement pstmt = null;
	static ResultSet rs = null;
	static String sql = null;
	public OCConnect(ServletContext application) {
		try {
			String Driver = application.getInitParameter("OracleCloud");
			String Url = application.getInitParameter("OCURL");
			String OCID = application.getInitParameter("OCID");
			String OCPWD = application.getInitParameter("OCPWD");
			Class.forName(Driver);
			con = DriverManager.getConnection(Url, OCID, OCPWD);
			sql = "SELECT SYSDATE FROM DUAL";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			String sysdate = rs.getString("SYSDATE");
			System.out.println("오라클 서버타임 : " + sysdate);
			System.out.println("클라우드 접속에 성공했습니다.");
		}catch(Exception e) {
			System.out.println("You're OracleCloud Connection was denied for " + e);
		}
	}

	public void closed() {
		try {
			if (con != null) {con.close();}
			if (pstmt != null) {pstmt.close();}
			if (rs != null) {rs.close();}
		}catch(Exception e) {
			e.printStackTrace();
		}	
		System.out.println("자원해제");
	}
	
}
