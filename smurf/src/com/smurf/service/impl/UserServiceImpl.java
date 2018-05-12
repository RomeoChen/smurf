package com.smurf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smurf.mapper.UserMapper;
import com.smurf.pojo.User;
import com.smurf.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserMapper userMapper;

	@Override
	public void add(User user) {
		userMapper.add(user);
	}

}
