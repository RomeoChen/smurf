package com.smurf.service;

import java.util.List;

import com.smurf.pojo.User;

public interface UserService {

	List<User> list();

	void add(User user);

	int delete(int id);

	User getById(int id);

	int update(User user);

	int count();
}
