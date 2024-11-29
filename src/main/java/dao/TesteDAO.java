package dao;

import java.util.List;

public class TesteDAO {
    public static void main(String[] args) {
        ProdutoDAO dao = new ProdutoDAO();
        List<Object[]> vendas = dao.listarRelatorioVendas();

        System.out.println("Tamanho da lista de vendas no teste: " + vendas.size());
        for (Object[] venda : vendas) {
            System.out.println("Venda: ID=" + venda[0] + ", Cliente=" + venda[2] + ", Data=" + venda[1]);
        }
    }
}
