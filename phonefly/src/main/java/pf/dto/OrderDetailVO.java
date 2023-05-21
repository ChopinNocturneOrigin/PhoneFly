package pf.dto;

public class OrderDetailVO {
	private int odseq;
	private int oseq;
	private int pseq;
	private int quantity;
	private int result;

	public int getOdseq() {
		return odseq;
	}
	public void setOdseq(int odseq) {
		this.odseq = odseq;
	}
	public int getOseq() {
		return oseq;
	}
	public void setOseq(int oseq) {
		this.oseq = oseq;
	}
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
}
