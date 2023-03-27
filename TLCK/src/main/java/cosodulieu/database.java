package cosodulieu;

import java.sql.Connection;
import java.sql.DriverManager;

public class database {
	static final String url="jdbc:mysql://localhost:3306/ql_dienthoai?useUnicode=true&characterEncoding=UTF-8";
	static final String username="root";
	static final String password="";
	
	public static Connection conn()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,username,password);
				return con;
			}
			catch (Exception e) {
				// TODO: handle exception
				return null;
			}
		}
}
