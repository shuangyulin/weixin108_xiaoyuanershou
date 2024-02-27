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


import com.dao.XinxifabuDao;
import com.entity.XinxifabuEntity;
import com.service.XinxifabuService;
import com.entity.vo.XinxifabuVO;
import com.entity.view.XinxifabuView;

@Service("xinxifabuService")
public class XinxifabuServiceImpl extends ServiceImpl<XinxifabuDao, XinxifabuEntity> implements XinxifabuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XinxifabuEntity> page = this.selectPage(
                new Query<XinxifabuEntity>(params).getPage(),
                new EntityWrapper<XinxifabuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XinxifabuEntity> wrapper) {
		  Page<XinxifabuView> page =new Query<XinxifabuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XinxifabuVO> selectListVO(Wrapper<XinxifabuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XinxifabuVO selectVO(Wrapper<XinxifabuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XinxifabuView> selectListView(Wrapper<XinxifabuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XinxifabuView selectView(Wrapper<XinxifabuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
