package com.avadhutp49.dao;

import com.avadhutp49.model.InsurancePolicy;

import java.util.*;

public interface InsurancePolicyDao {
	public List<InsurancePolicy> getPageData(int pageSize,int startPos);
	public Long getTotalRecordsCount();
}
