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

	public List<User> list() {
		return userMapper.list();
	};

	public void add(User user) {
		userMapper.add(user);
	}

	public int delete(int id) {
		return userMapper.delete(id);
	}

	public User getById(int id) {
		return userMapper.getById(id);
	}

	public int update(User user) {
		return userMapper.update(user);
	}

	public int count() {
		return userMapper.count();
	}
}
