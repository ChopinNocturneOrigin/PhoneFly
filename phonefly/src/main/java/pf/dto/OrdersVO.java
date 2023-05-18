package pf.dto;

import java.sql.Timestamp;

public class OrdersVO {
	
	private Integer oseq;
	private String id;
	private Timestamp indate;
	
	public Integer getOseq() {
		return oseq;
	}
	public void setOseq(Integer oseq) {
		this.oseq = oseq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	
}
