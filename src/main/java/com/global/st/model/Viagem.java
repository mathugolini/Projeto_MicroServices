package com.global.st.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Viagem {

	@Id
	@GeneratedValue
	private Long id;

	// 1° Comandante
	private String nomePrimeiroComandante;
	private String idPrimeiroComandante; // xxx-9999-x9x

	// 2° Comandante
	private String nomeSegundoComandante;
	private String idSegundoComandante; // xxx-9999-x9x

	// Decolagem
	private String date; // dd/mm/yyyy
	private Long tempoEstadia;

	// Nave
	private Long qtAssentos; // multiplos de 3
	private String modeloNave; // aaaa-9999

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNomePrimeiroComandante() {
		return nomePrimeiroComandante;
	}

	public void setNomePrimeiroComandante(String nomePrimeiroComandante) {
		this.nomePrimeiroComandante = nomePrimeiroComandante;
	}

	public String getIdPrimeiroComandante() {
		return idPrimeiroComandante;
	}

	public void setIdPrimeiroComandante(String idPrimeiroComandante) {
		this.idPrimeiroComandante = idPrimeiroComandante;
	}

	public String getNomeSegundoComandante() {
		return nomeSegundoComandante;
	}

	public void setNomeSegundoComandante(String nomeSegundoComandante) {
		this.nomeSegundoComandante = nomeSegundoComandante;
	}

	public String getIdSegundoComandante() {
		return idSegundoComandante;
	}

	public void setIdSegundoComandante(String idSegundoComandante) {
		this.idSegundoComandante = idSegundoComandante;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Long getTempoEstadia() {
		return tempoEstadia;
	}

	public void setTempoEstadia(Long tempoEstadia) {
		this.tempoEstadia = tempoEstadia;
	}

	public Long getQtAssentos() {
		return qtAssentos;
	}

	public void setQtAssentos(Long qtAssentos) {
		this.qtAssentos = qtAssentos;
	}

	public String getModeloNave() {
		return modeloNave;
	}

	public void setModeloNave(String modeloNave) {
		this.modeloNave = modeloNave;
	}

}
