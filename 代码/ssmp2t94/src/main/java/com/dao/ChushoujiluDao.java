package com.dao;

import com.entity.ChushoujiluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChushoujiluVO;
import com.entity.view.ChushoujiluView;


/**
 * 出售记录
 * 
 * @author 
 * @email 
 * @date 2021-04-07 00:23:08
 */
public interface ChushoujiluDao extends BaseMapper<ChushoujiluEntity> {
	
	List<ChushoujiluVO> selectListVO(@Param("ew") Wrapper<ChushoujiluEntity> wrapper);
	
	ChushoujiluVO selectVO(@Param("ew") Wrapper<ChushoujiluEntity> wrapper);
	
	List<ChushoujiluView> selectListView(@Param("ew") Wrapper<ChushoujiluEntity> wrapper);

	List<ChushoujiluView> selectListView(Pagination page,@Param("ew") Wrapper<ChushoujiluEntity> wrapper);
	
	ChushoujiluView selectView(@Param("ew") Wrapper<ChushoujiluEntity> wrapper);
	
}
