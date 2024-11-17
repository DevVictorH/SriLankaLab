package model;

public class Pedido {

	private int idPedido;
	private double valorTotal;
	private int data;
	
	
	public Pedido(double valorTotal, int data) {
		super();
		this.valorTotal = valorTotal;
		this.data = data;
	}


	public int getIdPedido() {
		return idPedido;
	}


	public void setIdPedido(int idPedido) {
		this.idPedido = idPedido;
	}


	public double getValorTotal() {
		return valorTotal;
	}


	public void setValorTotal(double valorTotal) {
		this.valorTotal = valorTotal;
	}


	public int getData() {
		return data;
	}


	public void setData(int data) {
		this.data = data;
	}
	
	
	
	
}
