package model;

public class Funcionario {
	
	private Long id;
	private String nome;
	private String email;
	private Integer ramal;
	private String lotacao;
	private Boolean estagiario = false;
	
	public Boolean getEstagiario() {
		return estagiario;
	}
	public void setEstagiario(Boolean estagiario) {
		this.estagiario = estagiario;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getRamal() {
		return ramal;
	}
	public void setRamal(Integer ramal) {
		this.ramal = ramal;
	}
	public String getLotacao() {
		return lotacao;
	}
	public void setLotacao(String lotacao) {
		this.lotacao = lotacao;
	}
}
