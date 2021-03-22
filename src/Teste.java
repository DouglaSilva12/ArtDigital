import DAO.ConexaoBanco;

public class Teste {
	
	public static void main(String[] args) throws Exception {
		ConexaoBanco conexao = new ConexaoBanco();
		conexao.conectaBanco();
		conexao.desconectaBanco();
	}
}
