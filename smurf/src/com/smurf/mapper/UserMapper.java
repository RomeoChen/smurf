package com.smurf.mapper;
 
import java.util.List;

import com.smurf.pojo.User;
 
public interface UserMapper {
    public void add(User user);  
    public int delete(int id);  
    public User getById(int id);  
    public int update(User user);         
    public List<User> list();
    public int count();  
}