package com.devsuperior.movieflix.services;

import javax.transaction.Transactional;

import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.devsuperior.movieflix.entities.User;
import com.devsuperior.movieflix.repositories.UserRepository;
import com.devsuperior.movieflix.services.exceptions.UnauthorizedException;

@Service
public class AuthService {

	private UserRepository userRepository;

	public AuthService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Transactional
	public User getAuthenticatedUser() {
		try {
			final SecurityContext context = SecurityContextHolder.getContext();
			User user = userRepository.findByEmail(context.getAuthentication().getName());

			return user;
		} catch (Exception e) {
			throw new UnauthorizedException();
		}
	}

}
