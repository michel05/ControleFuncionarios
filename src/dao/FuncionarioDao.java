package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Funcionario;

public class FuncionarioDao {

	private Connection connection;
	
	public FuncionarioDao(){
		this.connection = new ConnectionFactory().getConnection();
	}
	
	//adiciona Funcionario no banco
	public void adiciona(Funcionario funcionario){
		
		String sql = "insert into funcionario" +
					"(nome,email,ramal,lotacao,estagiario)" +
					"values (?,?,?,?,?)";
		try {
			
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, funcionario.getNome());
			stmt.setString(2, funcionario.getEmail());
			stmt.setInt(3, funcionario.getRamal());
			stmt.setString(4, funcionario.getLotacao());
			stmt.setBoolean(5, funcionario.getEstagiario());
			stmt.execute();
			stmt.close();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} 
		
		
	}
	
	//Lista todos funcionarios do banco
	public List<Funcionario> getLista(){
		
		try {
			List<Funcionario> funcionarios = new ArrayList<Funcionario>();
			PreparedStatement stmt = this.connection.prepareStatement("select * from funcionario ORDER BY nome");
			ResultSet rs = stmt.executeQuery();
			
			
			while(rs.next()){
				Funcionario funcionario = new Funcionario();
				funcionario.setId(rs.getLong("id"));
				funcionario.setNome(rs.getString("nome"));
				funcionario.setEmail(rs.getString("email"));
				funcionario.setRamal(rs.getInt("ramal"));
				funcionario.setLotacao(rs.getString("lotacao"));
				funcionario.setEstagiario(rs.getBoolean("estagiario"));
				
				funcionarios.add(funcionario);
			}
			rs.close();
			stmt.close();
			return funcionarios;
		} catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
public List<Funcionario> listagemLotacao(String lotacao){
		
		try {
			List<Funcionario> funcionarios = new ArrayList<Funcionario>();
			PreparedStatement stmt = null;
			
			switch(lotacao){
				case "GERIDE":
					stmt = this.connection.prepareStatement("select * from funcionario where lotacao='GERIDE' ORDER BY nome");
					break;
				case "GEREMI":
					stmt = this.connection.prepareStatement("select * from funcionario where lotacao='GEREMI' ORDER BY nome");
					break;
				case "GEHITE":
					stmt = this.connection.prepareStatement("select * from funcionario where lotacao='GEHITE' ORDER BY nome");
					break;
				case "GERAFI":
					stmt = this.connection.prepareStatement("select * from funcionario where lotacao='GERAFI' ORDER BY nome");
					break;
				case "ESTAGIARIO":
					stmt = this.connection.prepareStatement("select * from funcionario where lotacao='ESTAGIARIO' ORDER BY nome");
					break;
					
			}
			
			ResultSet rs = stmt.executeQuery();
			
			
			
			while(rs.next()){
				Funcionario funcionario = new Funcionario();
				funcionario.setId(rs.getLong("id"));
				funcionario.setNome(rs.getString("nome"));
				funcionario.setEmail(rs.getString("email"));
				funcionario.setRamal(rs.getInt("ramal"));
				funcionario.setLotacao(rs.getString("lotacao"));
				funcionario.setEstagiario(rs.getBoolean("estagiario"));
				
				funcionarios.add(funcionario);
			}
			rs.close();
			stmt.close();
			return funcionarios;
		} catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void altera(Funcionario funcionario){
		
		String sql = "update funcionario set nome=?, email=?, ramal=?, lotacao=? where id=?";
		
		try {
		
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, funcionario.getNome());
			stmt.setString(2, funcionario.getEmail());
			stmt.setInt(3, funcionario.getRamal());
			stmt.setString(4, funcionario.getLotacao());
			stmt.setLong(5, funcionario.getId());
			
			stmt.execute();
			stmt.close();
			
			
		} catch (SQLException e){
			throw new RuntimeException(e);
		}
		
	}
	
	public void remove(Funcionario funcionario){
		try{
			PreparedStatement stmt = connection.prepareStatement("delete from funcionario where id=?");
			stmt.setLong(1, funcionario.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
}
