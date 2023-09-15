package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	public static Connection getConnection() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/ENDLESSPARK"; // mySQL 서버의 DB 접근 경로
			String dbID = "root"; // 계정
			String dbPassword = "keepers0111!"; // 비밀번호



//			String dbURL = "jdbc:mysql://localhost/officekeepers13";
//			String dbID = "officekeepers13"; //계정
//			String dbPassword = "keepers0113"; 

//			Class.forName("com.mysql.jdbc.Driver"); //mysql에 접속을 도와주는 라이브러리
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
