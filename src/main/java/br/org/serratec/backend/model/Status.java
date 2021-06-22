package br.org.serratec.backend.model;

import com.fasterxml.jackson.annotation.JsonCreator;

import br.org.serratec.backend.exception.EnumValidationException;

public enum Status {
	PROCESSANDO, FINALIZADO;
	
	@JsonCreator
	public static Status verificar(String valor) throws EnumValidationException{
		for (Status status : values()) {
			if (valor.equals(status.name())) {
				return status;
			}
		}
		throw new EnumValidationException("Status Inválido !!");
	}
}
