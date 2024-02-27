package com.dao;

import com.entity.GoumaijiluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.GoumaijiluVO;
import com.entity.view.GoumaijiluView;


/**
 * 购买记录
 * 
 * @author 
 * @email 
 * @date 2021-04-07 00:23:08
 */
public interface GoumaijiluDao extends BaseMapper<GoumaijiluEntity> {
	
	List<GoumaijiluVO> selectListVO(@Param("ew") Wrapper<GoumaijiluEntity> wrapper);
	
	GoumaijiluVO selectVO(@Param("ew") Wrapper<GoumaijiluEntity> wrapper);
	
	List<GoumaijiluView> selectListView(@Param("ew") Wrapper<GoumaijiluEntity> wrapper);

	List<GoumaijiluView> selectListView(Pagination page,@Param("ew") Wrapper<GoumaijiluEntity> wrapper);
	
	GoumaijiluView selectView(@Param("ew") Wrapper<GoumaijiluEntity> wrapper);
	
}
