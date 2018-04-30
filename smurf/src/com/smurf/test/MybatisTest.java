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
		user.setDistrict_1("湖南");
		user.setiDnumber("4210111111");
		user.setSex("男");
		userMapper.add(user);
	}

	@Test
	public void testList() {
		System.out.println(userMapper);
		List<User> users=userMapper.list();
		for (User user : users) {
			System.out.println(user.getName());
		}
	}
	
	@Test
	public void testDelete() {
		int id = 1;
		userMapper.delete(id);
	}
	
	@Test
	public void testCount() {
		System.out.println(userMapper.count());
	}
	
	@Test
	public void testUpdate() {
		User user=new User();
		user.setId(2);
		user.setDistrict_1("湖北");
		user.setiDnumber("12121231");
		user.setName("测试更改");
		user.setSex("女");
		if(userMapper.update(user)>0) {
			System.out.println("True");
		}else {
			System.out.println("False");
		}
	}
	
	@Test
	public void testGet() {
		int id=2;
		System.out.println(userMapper.getById(id));
	}

}
