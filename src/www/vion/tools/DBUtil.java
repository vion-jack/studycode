package www.vion.tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
	//定义数据库连接参数
		private static final String DRIVER = "com.mysql.jdbc.Driver";
		private static final String URL = "jdbc:mysql://127.0.0.1:3306/userdb";
		private static final String USER = "root";
		private static final String PASS = "123";
		
		//静态代码块, 优先执行, 且只执行一次.  加载数据库驱动
		static{
			try {
				Class.forName(DRIVER);
			} catch (ClassNotFoundException e) {
				System.out.println("数据库驱动程序加载失败!");
				e.printStackTrace();
			}
		}
		
		//返回数据库连接对象的 方法
		public static Connection getConnection(){
			Connection conn = null;
			try {
				conn = DriverManager.getConnection(URL,USER,PASS);
			} catch (SQLException e) {
				System.out.println("获取数据库连接对象异常.");
				e.printStackTrace();
			}
			return conn;
		}
		
		//关闭数据库连接对象
		public static void closeConnection(Connection conn){
			if(conn != null){
				try {
					conn.close();
				} catch (SQLException e) {
					System.out.println("数据库连接对象关闭异常!");
					e.printStackTrace();
				}
			}
		}
		
		//关闭数据库结果集对象
		public static void closeResultSet(ResultSet rs){
			if(rs != null){
				try {
					rs.close();
				} catch (SQLException e) {
					System.out.println("数据库结果集对象关闭异常!");
					e.printStackTrace();
				}
			}
		}
		
		//关闭数据库操作对象
		public static void closePreparedStatement(PreparedStatement pstmt){
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					System.out.println("数据库操作对象关闭异常!");
					e.printStackTrace();
				}
			}
		}
		
}
