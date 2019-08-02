package br.com.casadocodigo.loja.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.model.Produto;

//@Repository = Acesso à dados "mapeando o DAO"
@Repository
@Transactional
public class ProdutoDAO {

	//CDI
	@PersistenceContext
	private EntityManager manager;
	
	public void adicionar(Produto produto) {
		manager.persist(produto);
	}
	
}
