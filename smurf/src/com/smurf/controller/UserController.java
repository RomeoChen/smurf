package com.smurf.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.smurf.pojo.User;
import com.smurf.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;


	//执行添加操作，并跳转至用户列表
	@RequestMapping("/addUser")
	//http://localhost/smurf/user/addUser/
	public String addUser(User user, Model model) {
		//userService.add(user);
		return "redirect:qrcode";
	}
	
	//跳转至添加用户页面
	@RequestMapping("/toAddUser")
	//http://localhost/smurf/user/toAddUser/
	public String toAddUser() {
		return "/addUser";
	}

	//首页
	@RequestMapping("/index")
	//http://localhost/smurf/user/index/
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("index");
		return modelAndView;
	}
	
	@RequestMapping("/qrcode")
	public ModelAndView qrcode() {
		ModelAndView modelAndView = new ModelAndView("qrcode");
		return modelAndView;
	}
}
