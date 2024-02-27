package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ChushoujiluDao;
import com.entity.ChushoujiluEntity;
import com.service.ChushoujiluService;
import com.entity.vo.ChushoujiluVO;
import com.entity.view.ChushoujiluView;

@Service("chushoujiluService")
public class ChushoujiluServiceImpl extends ServiceImpl<ChushoujiluDao, ChushoujiluEntity> implements ChushoujiluService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChushoujiluEntity> page = this.selectPage(
                new Query<ChushoujiluEntity>(params).getPage(),
                new EntityWrapper<ChushoujiluEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChushoujiluEntity> wrapper) {
		  Page<ChushoujiluView> page =new Query<ChushoujiluView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChushoujiluVO> selectListVO(Wrapper<ChushoujiluEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChushoujiluVO selectVO(Wrapper<ChushoujiluEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChushoujiluView> selectListView(Wrapper<ChushoujiluEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChushoujiluView selectView(Wrapper<ChushoujiluEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
