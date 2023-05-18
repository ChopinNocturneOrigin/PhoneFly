package pf.dto;

import java.sql.Timestamp;

public class EventVO {
	
	private Integer eseq;
	private String id;
	private String subject;
	private String content;
	private Timestamp indate;
	
	
	public Integer getEseq() {
		return eseq;
	}
	public void setEseq(Integer eseq) {
		this.eseq = eseq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	
	

}
