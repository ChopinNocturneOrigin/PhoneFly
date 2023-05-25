package pf.dto;

import java.sql.Timestamp;

public class OrderDetailVO {
	
	private int odseq;
	private int pseq;
	private int rseq;
	private int quantity;
	private String result;
	private String id;
	private int discount;
	private int buyplan;
	private int dcmonth;
	private int dctotal;
	private int mmonth;
	private int mtotal;
	private String pname;
	private String cname;
	private String rname;
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public int getRseq() {
		return rseq;
	}
	public void setRseq(int rseq) {
		this.rseq = rseq;
	}
	public int getMtotal() {
		return mtotal;
	}
	public void setMtotal(int mtotal) {
		this.mtotal = mtotal;
	}
	private String cc;
	private Timestamp indate;
	

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getBuyplan() {
		return buyplan;
	}
	public void setBuyplan(int buyplan) {
		this.buyplan = buyplan;
	}
	public int getDcmonth() {
		return dcmonth;
	}
	public void setDcmonth(int dcmonth) {
		this.dcmonth = dcmonth;
	}
	public int getDctotal() {
		return dctotal;
	}
	public void setDctotal(int dctotal) {
		this.dctotal = dctotal;
	}
	public int getMmonth() {
		return mmonth;
	}
	public void setMmonth(int mmonth) {
		this.mmonth = mmonth;
	}
	public String getCc() {
		return cc;
	}
	public void setCc(String cc) {
		this.cc = cc;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public int getOdseq() {
		return odseq;
	}
	public void setOdseq(int odseq) {
		this.odseq = odseq;
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
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
}
