package com.moaddi.dao.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.moaddi.dao.MedicineDAO;
import com.moaddi.dao.model.MedicineTL;
import com.moaddi.dao.model.VehicleServiceTL;
import com.moaddi.dao.utility.CustomHibernateDaoSupport;
import com.moaddi.service.MedicineService;

@Repository("MedicineDAO")
@Transactional

public class MedicineDAOImpl extends CustomHibernateDaoSupport implements MedicineDAO{
	
	
	
	public Long insertMedicine(MedicineTL medicineTL)
	{
		Long prodid = 0L;
		prodid = (Long) getHibernateTemplate().save(medicineTL);
		return prodid;
	}
	
	
	@Override
	public List<MedicineTL> getMedicineDetails() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().find("from MedicineTL order by prodid desc"
				 );
	}


	@Override
	public Map<String, Object> getproduct(String prodid) {
		
		Map<String, Object> product=null;
		
		List users=getHibernateTemplate().find("select prodid, prodname, quantity, sell from MedicineTL where prodid=?",prodid);
		if(users!=null && users.size()>0)
		{
			Object[] user=(Object[])users.get(0);
			product = new LinkedHashMap<String, Object>();
			product.put("prodid", user[0]);
			product.put("prodname", user[1]);
			product.put("quantity", user[2]);
			product.put("sell", user[3]);
			

		}
		return product;
	}
	


	
	
}
