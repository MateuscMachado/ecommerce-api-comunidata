package br.org.serratec.backend.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.org.serratec.backend.exception.EstoqueException;
import br.org.serratec.backend.model.ItemPedido;
import br.org.serratec.backend.model.Produto;
import br.org.serratec.backend.repository.ItemPedidoRepository;
import br.org.serratec.backend.repository.PedidoRepository;
import br.org.serratec.backend.repository.ProdutoRepository;

@Service
public class ItemPedidoService {

	@Autowired
	private ItemPedidoRepository itemPedidoRepository;
	
	@Autowired
	private ProdutoRepository produtoRepository;
	
	public Page<ItemPedido> listar(Pageable pageable) {
		return itemPedidoRepository.findAll(pageable);
	}
	
	public ItemPedido buscar(Long id) {
		Optional<ItemPedido> itemPedido = itemPedidoRepository.findById(id);
		if (itemPedido.isPresent()) {
			return itemPedido.get();
		}
		return null;
	}
	
	public ItemPedido inserir(ItemPedido itemPedido) throws EstoqueException {
		itemPedido.setPrecoVenda(calcularItemVenda(itemPedido));
		
		if (itemPedido.getQuantidade()> itemPedido.getProduto().getQtdEstoque()) {
			throw new EstoqueException("Não tem estoque suficiente");
		}
		itemPedido.getProduto().setQtdEstoque(itemPedido.getProduto().getQtdEstoque() - itemPedido.getQuantidade()); 
		return itemPedidoRepository.save(itemPedido);
	}
	
	public ItemPedido atualizar(Long id, ItemPedido itemPedido) {
		itemPedido.setPrecoVenda(calcularItemVenda(itemPedido));
		if (!itemPedidoRepository.existsById(id)) {
			return null;
		}
		itemPedido.setId(id);
		return itemPedidoRepository.save(itemPedido);
	}
	
	public boolean apagar(Long id) {
		if (!itemPedidoRepository.existsById(id)) {
			return false;
		}
		itemPedidoRepository.deleteById(id);
		return true;
	}
	
	public Double calcularItemVenda(ItemPedido itemPedido) {
		Produto produto = produtoRepository.findById( itemPedido.getProduto().getId() ).get();
		return produto.getValorUnitario() * itemPedido.getQuantidade();
		
	}
}
