package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChushoujiluEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChushoujiluVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChushoujiluView;


/**
 * 出售记录
 *
 * @author 
 * @email 
 * @date 2021-04-07 00:23:08
 */
public interface ChushoujiluService extends IService<ChushoujiluEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChushoujiluVO> selectListVO(Wrapper<ChushoujiluEntity> wrapper);
   	
   	ChushoujiluVO selectVO(@Param("ew") Wrapper<ChushoujiluEntity> wrapper);
   	
   	List<ChushoujiluView> selectListView(Wrapper<ChushoujiluEntity> wrapper);
   	
   	ChushoujiluView selectView(@Param("ew") Wrapper<ChushoujiluEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChushoujiluEntity> wrapper);
   	
}

