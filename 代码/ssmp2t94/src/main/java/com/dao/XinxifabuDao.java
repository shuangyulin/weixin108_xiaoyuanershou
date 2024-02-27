package com.dao;

import com.entity.XinxifabuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XinxifabuVO;
import com.entity.view.XinxifabuView;


/**
 * 信息发布
 * 
 * @author 
 * @email 
 * @date 2021-04-07 00:23:08
 */
public interface XinxifabuDao extends BaseMapper<XinxifabuEntity> {
	
	List<XinxifabuVO> selectListVO(@Param("ew") Wrapper<XinxifabuEntity> wrapper);
	
	XinxifabuVO selectVO(@Param("ew") Wrapper<XinxifabuEntity> wrapper);
	
	List<XinxifabuView> selectListView(@Param("ew") Wrapper<XinxifabuEntity> wrapper);

	List<XinxifabuView> selectListView(Pagination page,@Param("ew") Wrapper<XinxifabuEntity> wrapper);
	
	XinxifabuView selectView(@Param("ew") Wrapper<XinxifabuEntity> wrapper);
	
}
