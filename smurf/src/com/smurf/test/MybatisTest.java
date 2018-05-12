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
		user.setName("�����û�");
		user.setMarriage("δ��");
		user.setNation("����");
		user.setOriginPlace("�����人");
		user.setPoliticalStatus("Ⱥ��");
		user.setProvince("����");
		user.setCity("�人");
		user.setStreet("��ɽ������·388��");
		user.setResidence("�����人");
		user.setTelephone("14214232457");
		user.setIdNumber("222222222");
		user.setSex("��");
		user.setBirth("1994-08");
		userMapper.add(user);
	}

	

}
