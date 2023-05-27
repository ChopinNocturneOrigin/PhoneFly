package pf.dto;

import java.sql.Timestamp;

public class OrderDetailVO {
	
	private int odseq;
	private int pseq;
	private int rseq;
	private String id;
	private String result;
	private int discount;
	private int buyplan;
	private int dcmonth;
	private int dctotal;
	private int mmonth;
	private int mtotal;
	private String cc;
	private Timestamp indate;

	private String pname;
	private String cname;
	private String ccname;
	private String rname;

	private int cseq;
	private int price;
	private String mfc;
	private int charge;
	private String dataplan;
	private String timeplan;
	private String textplan;
	
	public String getCcname() {
		return ccname;
	}
	public void setCcname(String ccname) {
		this.ccname = ccname;
	}
	public String getMfc() {
		return mfc;
	}
	public void setMfc(String mfc) {
		this.mfc = mfc;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	public String getDataplan() {
		return dataplan;
	}
	public void setDataplan(String dataplan) {
		this.dataplan = dataplan;
	}
	public String getTimeplan() {
		return timeplan;
	}
	public void setTimeplan(String timeplan) {
		this.timeplan = timeplan;
	}
	public String getTextplan() {
		return textplan;
	}
	public void setTextplan(String textplan) {
		this.textplan = textplan;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCseq() {
		return cseq;
	}
	public void setCseq(int cseq) {
		this.cseq = cseq;
	}
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
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
}
