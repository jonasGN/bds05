package com.devsuperior.movieflix.controllers.exceptions;

import java.io.Serializable;
import java.time.Instant;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

public class StandardError implements Serializable {

	private static final long serialVersionUID = 1L;

	private Instant timestamp;
	private int status;
	private String error;
	private String message;
	private String path;

	public StandardError(HttpStatus status, Exception error, HttpServletRequest request) {
		timestamp = Instant.now();
		this.status = status.value();
		this.error = status.getReasonPhrase();
		message = error.getMessage();
		path = request.getRequestURI();
	}

	public Instant getTimestamp() {
		return timestamp;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(HttpStatus status) {
		this.status = status.value();
	}

	public String getErrorMessage() {
		return error;
	}

	public void setErrorMessage(String error) {
		this.error = error;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPath() {
		return path;
	}

	public ResponseEntity<StandardError> toEntityResponse() {
		return ResponseEntity.status(HttpStatus.valueOf(status)).body(this);
	}
}
