package com.entity.view;

import com.entity.XinxifabuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 信息发布
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-07 00:23:08
 */
@TableName("xinxifabu")
public class XinxifabuView  extends XinxifabuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XinxifabuView(){
	}
 
 	public XinxifabuView(XinxifabuEntity xinxifabuEntity){
 	try {
			BeanUtils.copyProperties(this, xinxifabuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
