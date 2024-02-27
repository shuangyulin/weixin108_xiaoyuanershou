package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XinxifabuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XinxifabuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XinxifabuView;


/**
 * 信息发布
 *
 * @author 
 * @email 
 * @date 2021-04-07 00:23:08
 */
public interface XinxifabuService extends IService<XinxifabuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XinxifabuVO> selectListVO(Wrapper<XinxifabuEntity> wrapper);
   	
   	XinxifabuVO selectVO(@Param("ew") Wrapper<XinxifabuEntity> wrapper);
   	
   	List<XinxifabuView> selectListView(Wrapper<XinxifabuEntity> wrapper);
   	
   	XinxifabuView selectView(@Param("ew") Wrapper<XinxifabuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XinxifabuEntity> wrapper);
   	
}

