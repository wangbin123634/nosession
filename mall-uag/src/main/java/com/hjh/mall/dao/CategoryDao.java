package com.hjh.mall.dao;

import java.util.List;
import java.util.Map;

import com.hjh.mall.common.core.dao.base.DAOBase;
import com.hjh.mall.entity.Category;

/**
 * @Project: hjy-middle
 * @Description 类目业务层
 * @author 陈士俊
 * @date 2017年02月21日
 * @version V1.0
 */
public interface CategoryDao extends DAOBase<Category, String> {
	List<Map<String, String>> queryLabelsBylike(Map<String, Object> map);

	List<Map<String, String>> queryCategoryIdNames();

	int countByLike(Map<String, Object> map);
}