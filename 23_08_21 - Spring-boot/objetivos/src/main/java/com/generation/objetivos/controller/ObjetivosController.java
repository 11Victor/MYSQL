package com.generation.objetivos.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/objetivos")
public class ObjetivosController {
		
	@GetMapping
	public String objetivos() {
		return "Os meus objetivos de aprendizagem são: <br>"
				+ "- Me tornar um programador melhor a cada dia; <br>"
				+ "- Melhorar minha fala; <br>"
				+ "- Tirar todas as dúvidas que houverem.";
		
	}
}
