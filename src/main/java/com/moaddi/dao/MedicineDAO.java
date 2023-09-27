package com.moaddi.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.moaddi.dao.model.MedicineTL;

@Component
public interface MedicineDAO {
	public Long insertMedicine(MedicineTL medicineTL);
	
	public  List<MedicineTL> getMedicineDetails();
	
	public Map<String, Object> getproduct(String prodid);



}
