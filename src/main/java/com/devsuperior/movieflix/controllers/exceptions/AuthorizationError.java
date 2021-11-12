package com.devsuperior.movieflix.controllers.exceptions;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

public class AuthorizationError extends StandardError {

	private static final long serialVersionUID = 1L;

	public AuthorizationError(HttpStatus status, Exception error, HttpServletRequest request) {
		super(status, error, request);
	}

	@Override
	public ResponseEntity<StandardError> toEntityResponse() {
		return ResponseEntity.status(HttpStatus.valueOf(super.getStatus())).body(this);
	}

}
