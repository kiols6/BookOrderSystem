package com.ishang.dao;

import java.util.List;

import com.ishang.pojo.Demand;

public interface DemandDao {
	
	/*管理员申请需求所使用的接口*/
	public void save(Demand demand);
	
	/*管理员查询脱销所使用的接口*/
	public List<Demand> queryAll(Demand demand);
}
