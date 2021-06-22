package br.org.serratec.backend.service;

import java.io.IOException;
import java.net.URI;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import br.org.serratec.backend.model.Produto;
import br.org.serratec.backend.repository.ProdutoRepository;

@Service
public class ProdutoService {

	@Autowired
	private ProdutoRepository produtoRepository;

	@Autowired
	private FotoService fotoService;

	/*
	public Page<Produto> listar(Pageable pageable) {
		Page<Produto> produtos = produtoRepository.findAll(pageable);
		return produtos;
	}
	*/
	
	public List<Produto> listar() {
		List<Produto> produtos = produtoRepository.findAll();
		
		for (Produto produto : produtos) {
			produto.setUrl(adicionarFotoUrl(produto).getUrl());
		}
		return produtos;
	}

	public Produto buscarPorNome(String nome) {
		Produto produtos = produtoRepository.findByNome(nome);
		if (produtos != null) {
			return produtos;
		}
		return null;
	}

	public Produto atualizar(Long id, Produto produto) {
		Optional<Produto> c = produtoRepository.findById(id);
		if (c.isPresent()) {
			c.get().setId(id);
			c.get().setNome(produto.getNome());
			c.get().setDescricao(produto.getDescricao());
			return produtoRepository.save(c.get());
		}
		return null;
	}

	public boolean deletar(Long id) {
		if (!produtoRepository.existsById(id)) {
			return false;
		}
		produtoRepository.deleteById(id);
		return true;
	}

	public Produto adicionarFotoUrl(Produto produto) {
		URI uri = ServletUriComponentsBuilder.fromCurrentContextPath().path("/produtos/{id}/foto")
				.buildAndExpand(produto.getId()).toUri();
		produto.setUrl(uri.toString());
		return produto;
	}
	
	public Produto buscar(Long id) {
		Optional<Produto> produto = produtoRepository.findById(id);
		return adicionarFotoUrl(produto.get());
	}

	public Produto inserir(Produto produto, MultipartFile file) throws IOException {

		fotoService.inserir(produtoRepository.save(produto), file);
		return adicionarFotoUrl(produto);

	}
	
	

}