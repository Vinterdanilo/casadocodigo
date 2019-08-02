package br.com.casadocodigo.loja.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.casadocodigo.loja.dao.ProdutoDAO;
import br.com.casadocodigo.loja.model.Produto;

@Controller
public class ProdutoController {

	//CDI
	@Autowired
	private ProdutoDAO produtoDAO;
	
	@RequestMapping("produto/form")
	public String form() {
		return "produto/form";
	}
	
	@RequestMapping("produto")
	public String adicionar(Produto produto) {
		System.out.println(produto);
		produtoDAO.adicionar(produto);
		return "produto/ok";
	}
	
}
