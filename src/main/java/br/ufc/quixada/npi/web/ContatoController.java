package br.ufc.quixada.npi.web;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.ufc.quixada.npi.service.ContatoService;

@Named
@RequestMapping("/")
public class ContatoController {
	@Inject
	private ContatoService cs;
 
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String listarContatos(ModelMap model) {
		model.addAttribute("contatos", cs.findAll());
		return "listar_contatos";
	}
 
}
