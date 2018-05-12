package com.smurf.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.smurf.mapper.UserMapper;
import com.smurf.pojo.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class MybatisTest {

	@Autowired
	private UserMapper userMapper;

	@Test
	public void testAdd() {
		User user = new User();
		user.setName("测试用户");
		user.setMarriage("未婚");
		user.setNation("汉族");
		user.setOriginPlace("湖北武汉");
		user.setPoliticalStatus("群众");
		user.setProvince("湖北");
		user.setCity("武汉");
		user.setStreet("洪山区珞喻路388号");
		user.setResidence("湖北武汉");
		user.setTelephone("14214232457");
		user.setidNumber("4210111111");
		user.setSex("男");
		user.setBirth("1994-08");
		userMapper.add(user);
	}

	

}
