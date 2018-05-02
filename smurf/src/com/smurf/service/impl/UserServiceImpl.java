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
	public List<User> list() {
		return userMapper.list();
	};

	@Override
	public void add(User user) {
		userMapper.add(user);
	}

	@Override
	public int delete(int id) {
		return userMapper.delete(id);
	}

	@Override
	public User getById(int id) {
		return userMapper.getById(id);
	}

	@Override
	public int update(User user) {
		return userMapper.update(user);
	}

	@Override
	public int count() {
		return userMapper.count();
	}
}
