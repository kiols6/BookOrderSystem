package com.ishang.dao;

import java.util.List;

public interface FinanceDao {
	
	/*财务报表导出页面*/
	public List<FinanceDao> queryAll(FinanceDao finance);
	
}
