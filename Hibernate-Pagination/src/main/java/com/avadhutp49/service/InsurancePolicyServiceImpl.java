package com.avadhutp49.service;

import java.util.ArrayList;
import java.util.List;

import com.avadhutp49.dao.InsurancePolicyDao;
import com.avadhutp49.dao.InsurancePolicyDaoImpl;
import com.avadhutp49.dto.InsurancePolicyDTO;
import com.avadhutp49.model.InsurancePolicy;

public class InsurancePolicyServiceImpl implements InsurancePolicyService {
	InsurancePolicyDao dao;
	public InsurancePolicyServiceImpl() {
		dao = new InsurancePolicyDaoImpl();
	}
	
	@Override
	public long fetchPagesCount(int pageSize) {
		// TODO Auto-generated method stub
		Long totalRecords = dao.getTotalRecordsCount();
		Long pageCount = totalRecords/pageSize;
		if(totalRecords%pageSize!=0)
			pageCount++;
		return pageCount;
	}

	@Override
	public List<InsurancePolicyDTO> fetchPageData(int pageSize, int pageNo) {
		// TODO Auto-generated method stub
		
		int startPos = 0;
		startPos = (pageNo * pageSize) - pageSize;
		
		List<InsurancePolicyDTO> arrayList = new ArrayList<InsurancePolicyDTO>();
		List<InsurancePolicy> pageData = dao.getPageData(pageSize, startPos);
		
		pageData.forEach(data->{
			InsurancePolicyDTO dto = new InsurancePolicyDTO();
			dto.setPolicyId(data.getPolicyId());
			dto.setPolicyName(data.getPolicyName());
			dto.setCompany(data.getCompany());
			dto.setPolicyType(data.getPolicyType());
			dto.setTenure(data.getTenure());
			arrayList.add(dto);
		});
		return arrayList;	
	}
}