package model;

public class ItemPedido {
	
	private int idItemPedido;
	private int qtdItens;
	private double valorItem;
	
	public ItemPedido(int qtdItens, double valorItem) {
		super();
		this.qtdItens = qtdItens;
		this.valorItem = valorItem;
	}

	public int getIdItemPedido() {
		return idItemPedido;
	}

	public void setIdItemPedido(int idItemPedido) {
		this.idItemPedido = idItemPedido;
	}

	public int getQtdItens() {
		return qtdItens;
	}

	public void setQtdItens(int qtdItens) {
		this.qtdItens = qtdItens;
	}

	public double getValorItem() {
		return valorItem;
	}

	public void setValorItem(double valorItem) {
		this.valorItem = valorItem;
	}
	
	

	

}
