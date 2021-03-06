package com.hjh.mall.category.bizapi.bizserver.goodsbrand.vo;



import com.hjh.mall.common.core.vo.PageQueryVO;

import io.swagger.annotations.ApiModelProperty;

/**
 * @Project: mall-category-api
 * @Description TODO
 * @author 李慧峰
 * @date 2017年3月15日
 * @version V1.0 
 */
public class GoodsBrandQuery extends PageQueryVO {
	private static final long serialVersionUID = 1L;
	private String brand_id=null;
    //品牌名称
	@ApiModelProperty(notes="品牌名称")
    private String brand_name=null;
    // 备注 
	@ApiModelProperty(notes="备注")
    private String remark=null;
    // 状态（0：禁用；1：启用） 
	@ApiModelProperty(notes="状态（0：禁用；1：启用）")
    private String status=null;

    // 是否首页显示 
	@ApiModelProperty(notes="是否首页显示")
    private String is_top=null;
    //创建人
	@ApiModelProperty(notes="创建人")
    private String create_user=null;
    
    private String create_user_name=null;
    //更新人
    private String update_user=null;
    
    private String update_user_name=null;
    //查询起始时间
    private String date_start=null;

    // 查询结束时间
    private String date_end=null;
    
    private Integer sort;
  //品牌排序 （null 或者 1），修改时间排序（2）
    @ApiModelProperty(notes="品牌排序 （null 或者 1），修改时间排序（2）")
    private String sortType;

    
    
	public String getSortType() {
		return sortType;
	}

	public void setSortType(String sortType) {
		this.sortType = sortType;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public String getBrand_id() {
		return brand_id;
	}

	public void setBrand_id(String brand_id) {
		this.brand_id = brand_id;
	}

	public String getBrand_name() {
		return brand_name;
	}

	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getIs_top() {
		return is_top;
	}

	public void setIs_top(String is_top) {
		this.is_top = is_top;
	}

	public String getCreate_user() {
		return create_user;
	}

	public void setCreate_user(String create_user) {
		this.create_user = create_user;
	}

	public String getCreate_user_name() {
		return create_user_name;
	}

	public void setCreate_user_name(String create_user_name) {
		this.create_user_name = create_user_name;
	}

	public String getUpdate_user() {
		return update_user;
	}

	public void setUpdate_user(String update_user) {
		this.update_user = update_user;
	}

	public String getUpdate_user_name() {
		return update_user_name;
	}

	public void setUpdate_user_name(String update_user_name) {
		this.update_user_name = update_user_name;
	}

	public String getDate_start() {
		return date_start;
	}

	public void setDate_start(String date_start) {
		this.date_start = date_start;
	}

	public String getDate_end() {
		return date_end;
	}

	public void setDate_end(String date_end) {
		this.date_end = date_end;
	}
    
    
 

}
