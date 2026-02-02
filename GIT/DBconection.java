package Lesson16;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.xml.transform.Result;

public class DBconection {
	
	private static Connection instance;

    private DBconection() {}
    public static Connection getConnection() throws SQLException {
    	
    	if(instance==null)
    		instance=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","chavi", "123456");                
               return instance;       	
    }
    public class Main {
        public static void main(String[] args) throws Exception {

            Connection con=DBconection.getConnection();
            Statement stm=con.createStatement();
            ResultSet r=stm.executeQuery("select * from טבלה");
            if(r!=null) {
            	
            	while(r.next()) {
            		int id=r.getInt(1);
            		String s=r.getString("שם של עומדה בטבלה");
            		String s2=r.getString("שם של עומדה בטבלה");
            		System.out.println(id+""+s+""+s2);
            	}
            }
            r.close();
            stm.close();
            con.close();
            
        }
    }   
    
}
