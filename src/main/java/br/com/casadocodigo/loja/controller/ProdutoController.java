package br.com.casadocodigo.loja.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.loja.dao.ProdutoDAO;
import br.com.casadocodigo.loja.model.Produto;
import br.com.casadocodigo.loja.model.TipoPreco;

@Controller
public class ProdutoController {

	//CDI
	@Autowired private ProdutoDAO produtoDAO;
	
	@RequestMapping("produto/form")
	public ModelAndView form() {
		ModelAndView modelAndView = new ModelAndView("produto/form");
		//retornando a lista de tipos de precos do objeto Preco;
		modelAndView.addObject("tipos", TipoPreco.values());
		return modelAndView;
	}
	
	@RequestMapping("produto")
	public String adicionar(Produto produto) {
		System.out.println(produto);
		produtoDAO.adicionar(produto);
		return "produto/ok";
	}
	
}
