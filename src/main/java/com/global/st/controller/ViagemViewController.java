package com.global.st.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.global.st.model.Viagem;
import com.global.st.repository.ViagemRepository;


@Controller
@RequestMapping("viagens")
public class ViagemViewController {
	
	private ViagemRepository viagemRepository;
	
	public ViagemViewController(ViagemRepository viagemRepository) {
		this.viagemRepository = viagemRepository;
	}

	@GetMapping
	public String listViagens(Model model) {
		model.addAttribute("viagens", viagemRepository.findAll());
		return "viagem/list";
	}

	@GetMapping("/form")
	public String showForm(Model model) {
		model.addAttribute("viagem", new Viagem());
		return "viagem/form";
	}
	
	@GetMapping("/{id}")
	public String FindById(@PathVariable Long id, Model model) {
	model.addAttribute("viagem", viagemRepository.findById(id).get());
	return "viagem/form";
	}


	@GetMapping("/{id}/delete")
	public RedirectView delete(@PathVariable Long id) {
		viagemRepository.deleteById(id);
		RedirectView redirectView = new RedirectView("/viagens");
		return redirectView;
	}

	@PostMapping("/save")
	public RedirectView save(@ModelAttribute("viagem") Viagem viagem, RedirectAttributes attrs) {
		Viagem savedViagem = viagemRepository.save(viagem);
		RedirectView redirectView = new RedirectView("/viagens");
		attrs.addFlashAttribute("addViagemSucess", true);
		attrs.addFlashAttribute("savedPost", savedViagem);
		
		return redirectView;
	}
	
}
