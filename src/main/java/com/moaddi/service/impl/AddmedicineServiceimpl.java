package com.moaddi.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moaddi.dao.MedicineDAO;
import com.moaddi.dao.model.MedicineTL;
import com.moaddi.dao.model.VehicleRtoServiceTL;
import com.moaddi.dao.model.VehicleServiceTL;
import com.moaddi.service.MedicineService;
import com.moaddi.service.dto.MedicineDTO;
import com.moaddi.service.dto.VehicleServiceDTO;

@Service("medicineService")
public class AddmedicineServiceimpl implements MedicineService {

	 @Autowired 
	 private MedicineDAO medicineDAO; 
	
	
	@Override
	public Long saveMedicine(MedicineDTO medicineDTO) {
		
		if(medicineDTO!=null) { 
			MedicineTL medicineTL = new MedicineTL();
			medicineTL.setProdid(medicineDTO.getProdid());
			medicineTL.setProdname(medicineDTO.getProdname());
			medicineTL.setQuantity(medicineDTO.getQuantity());
			medicineTL.setCategory(medicineDTO.getCategory());
			medicineTL.setCompany(medicineDTO.getCompany());
			//medicineTL.setHsn(medicineDTO.getHsn());
			//medicineTL.setVgm(medicineDTO.getVgm());
			medicineTL.setSupplier(medicineDTO.getSupplier());
			medicineTL.setPdate(medicineDTO.getPdate());
			medicineTL.setExpd(medicineDTO.getExpd());
			medicineTL.setMfd(medicineDTO.getMfd());
			medicineTL.setMrp(medicineDTO.getMrp());
			medicineTL.setDiscount(medicineDTO.getDiscount());
			medicineTL.setSell(medicineDTO.getSell());
			medicineTL.setDescription(medicineDTO.getDescription());
			
			medicineDAO.insertMedicine(medicineTL);
			
		}
		return null;
		
	}

	@Override
	public MedicineDTO loadAd() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MedicineDTO> loadMedicine() {
		
		
		
		List<MedicineDTO> orders=null;
		List<MedicineTL> ord=medicineDAO.getMedicineDetails();
		if(ord!=null && ord.size()>0)
		{
			orders=new ArrayList<MedicineDTO>();
			ListIterator<MedicineTL> li=ord.listIterator();
			while(li.hasNext())
			{
				MedicineTL medTL=li.next();
				MedicineDTO medDTO=new MedicineDTO();
				
				
				medDTO.setProdid(medTL.getProdid());
				medDTO.setProdname(medTL.getProdname());
				medDTO.setCompany(medTL.getCompany());
				medDTO.setCategory(medTL.getCategory());
				medDTO.setQuantity(medTL.getQuantity());
				//medDTO.setHsn(medTL.getHsn());
				//medDTO.setVgm(medTL.getVgm());
				medDTO.setSupplier(medTL.getSupplier());
				medDTO.setSell(medTL.getSell());
				medDTO.setMrp(medTL.getMrp());
				medDTO.setDiscount(medTL.getDiscount());
				medDTO.setDescription(medTL.getDescription());
			
				
				orders.add(medDTO);
				
			}
		
		}
		return orders;
		
	}

	@Override
	public Map<String, Object> loadproduct(String prodid) {
		return medicineDAO.getproduct(prodid);
	}




}
