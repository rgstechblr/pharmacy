package com.moaddi.dao.model;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Medicine_TL")
@org.hibernate.annotations.Entity(
		dynamicUpdate = true
)
public class MedicineTL {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private Long id;
	private String prodid;
	private String prodname;
	private String category;
	private String company;
	private String hsn;
	private String vgm;
	private Long quantity;
	private String supplier;
	

	private LocalDate pdate;
	private LocalDate mfd;
	private LocalDate expd;
	private Double mrp;
	private Double sell;
	private Double discount;
	private String description;
	
	
	
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
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
	public String getHsn() {
		return hsn;
	}
	public void setHsn(String hsn) {
		this.hsn = hsn;
	}
	public String getVgm() {
		return vgm;
	}
	public void setVgm(String vgm) {
		this.vgm = vgm;
	}
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

	
	  public LocalDate getPdate() { 
		  return pdate;
	  
	  }
	  
	  public void setPdate(LocalDate localDate) {
	  
	  this.pdate = localDate;
	  
	  }
	 
	 
	
	  public LocalDate getMfd() 
	  { 
		  return mfd; 
		  } 
	  
	  public void setMfd(LocalDate localDate)
	  { 
		  this.mfd= localDate; 
		  } 
	  
	  public LocalDate getExpd() 
	  { 
		  return expd; 
		  } 
	  public void setExpd(LocalDate localDate) 
	  { 
		  this.expd = localDate; 
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
