package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoBanco {
	
	Connection con;
	String url = "jdbc:mysql://localhost:3306/?user=root?useTimezone=true&serverTimezone=UTC";
	String user = "root";
	String senha = "1234";
	
	public Connection conectaBanco() throws Exception {
		if(con == null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, senha);
			System.out.println("Conexão realizada com sucesso!");
		}
		return con;
	}
	
	public void desconectaBanco() throws Exception{
		if(con != null) {
			con.close();
			con = null;
			System.out.println("Conexão fechada com sucesso!");
		}
	}
}
