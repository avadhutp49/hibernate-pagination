package com.avadhutp49.service;

import java.util.List;

import com.avadhutp49.dto.InsurancePolicyDTO;

public interface InsurancePolicyService {
	public long fetchPagesCount(int pageSize);
	public List<InsurancePolicyDTO> fetchPageData(int pageSize, int pageNo);
}
