package com.moaddi.ui.forms;

import java.sql.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

public class AddMedForm {
	
	private String prodid;
	private String prodname;
	private String category;
	private String company;
	private String hsn;
	private String vgm;
	private Long quantity;
	private String supplier;
	
	private String pdate;
	private String mfd;
	private String expd;
	private Double mrp;
	private Double sell;
	private Double discount;
	private String description;
	
	public String getProdid() {
		return prodid;
	}
	public void setProdid(String prodid) {
		this.prodid = prodid;
	}
	public String getProdname() {
		return prodname;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}

	/*
	 * public String getHsn() { return hsn; } public void setHsn(String hsn) {
	 * this.hsn = hsn; } public String getVgm() { return vgm; } public void
	 * setVgm(String vgm) { this.vgm = vgm; }
	 */
	public Long getQuantity() {
		return quantity;
	}
	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	
	
	  public String getPdate() { return pdate; }
	  
	  public void setPdate(String pdate) { this.pdate = pdate;
	  
	  }
	 
	
	  public String getMfd() 
	  { 
		  return mfd; 
	  } 
	  public void setMfd(String mfd) 
	  { 
		  this.mfd= mfd; 
		  } 
	  public String getExpd() 
	  { 
		  return expd; 
		  } 
	  public void setExpd(String expd) 
	  { 
		  this.expd = expd; 
		  }
	 
	public Double getMrp() {
		return mrp;
	}
	public void setMrp(Double mrp) {
		this.mrp = mrp;
	}
	public Double getSell() {
		return sell;
	}
	public void setSell(Double sell) {
		this.sell = sell;
	}
	public Double getDiscount() {
		return discount;
	}
	public void setDiscount(Double discount) {
		this.discount = discount;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

}
