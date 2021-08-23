package com.generation.mentalidades.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/mentalidades")
public class MentalidadesController {
	
	@GetMapping
	public String mentalidades() {
		return "As mentalidades e habilidades trabalhadas foram: <br>"
				+ "Persistência <br>"
				+ "Foco <br>"
				+ "Trabalho em Equipe <br>";
	}
}
