package dao;

import java.util.List;

import model.Produto;

public class TesteProdutoDAO {
    public static void main(String[] args) {
        ProdutoDAO dao = new ProdutoDAO();
        List<Produto> produtos = dao.listarProdutos();

        for (Produto produto : produtos) {
            System.out.println("Nome: " + produto.getNome() + " | Preço: R$ " + produto.getPreco());
        }
    }
}

