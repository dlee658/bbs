package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12383642";
			String dbID = "sql12383642";
			String dbPassword = "vyhWePR5SY";	
			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID) {
		String SQL = "SELECT userID FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return 1;//id exist
			}
			return -1;//no id
		}catch (Exception e){
			e.printStackTrace();	
		}
		return -2;
	}
	
}
