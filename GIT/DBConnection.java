package NOA;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;

public class DBConnection {

	private static Connection con;
	
	private DBConnection() {}
	
	
	public static Connection getConnection() {
		if(con == null)
		{
			try {
				con = DriverManager.getConnection("jdbc:sqlserver://localhost; databaseName=Jewellary_Stroe;encrypt=false", "chavi", "123");
			} 
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return con;
	}
	
	
	public static void selectBookById(int id) {
		
		try {
			PreparedStatement ps = getConnection().prepareStatement("select * from Books where AuthorID = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                System.out.println(
                    rs.getInt("BookID") + " | " +
                    rs.getString("BookName"));         
            } 
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}

