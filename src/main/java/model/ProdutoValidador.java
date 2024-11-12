package model;

public class ProdutoValidador {
    public static String validar(Produto produto) {
        if (produto.getNome() == null || produto.getNome().trim().isEmpty()) {
            return "O nome do produto é obrigatório";
        }
        if (produto.getQuantidade() <= 0) {
            return "A quantidade de produto é obrigatória";
        }
        return null;
    }
}