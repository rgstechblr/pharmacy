package com.moaddi.service;

import java.util.List;
import java.util.Map;

import com.moaddi.service.dto.MedicineDTO;
import com.moaddi.service.dto.VehicleServiceDTO;

public interface MedicineService {
	public Long saveMedicine(MedicineDTO medicineDTO);
	public MedicineDTO loadAd();
	public List<MedicineDTO> loadMedicine();
	public Map<String, Object> loadproduct(String prodid);

}
