package pf.dto;

import java.sql.Timestamp;

public class ProductVO {
	private Integer pseq;
	private String name;
	private Integer price1;
	private Integer price2;
	private Integer price3;
	private String content;
	private String image;
	private String useyn;
	private String eventyn;
	private Timestamp indate;
	private String mfc;
	public Integer getPseq() {
		return pseq;
	}
	public void setPseq(Integer pseq) {
		this.pseq = pseq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPrice1() {
		return price1;
	}
	public void setPrice1(Integer price1) {
		this.price1 = price1;
	}
	public Integer getPrice2() {
		return price2;
	}
	public void setPrice2(Integer price2) {
		this.price2 = price2;
	}
	public Integer getPrice3() {
		return price3;
	}
	public void setPrice3(Integer price3) {
		this.price3 = price3;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public String getEventyn() {
		return eventyn;
	}
	public void setEventyn(String eventyn) {
		this.eventyn = eventyn;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public String getMfc() {
		return mfc;
	}
	public void setMfc(String mfc) {
		this.mfc = mfc;
	}
	
	
	
}
