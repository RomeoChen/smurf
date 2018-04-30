package com.smurf.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.druid.stat.TableStat.Mode;
import com.smurf.mapper.UserMapper;
import com.smurf.pojo.User;
import com.smurf.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;

	//所有用户列表
	@RequestMapping("/listUser")
	//http://localhost/smurf/user/listUser/
	public ModelAndView listUser() {
		ModelAndView mav = new ModelAndView();
		List<User> list = userService.list();

		mav.addObject("list", list);
		mav.setViewName("listUser");
		return mav;
	}

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
	
	//跳转至更新用户界面
	@RequestMapping("toUpdateUser")
	public String toUpdateUser() {
		return "/updateUser";
	}
	
	//更改用户信息
	@RequestMapping("/updateUser")
	//http://localhost/smurf/user/updateUser/
	public String updateUser(User user, HttpServletRequest request,Model model) {
		if(userService.update(user)>0) {
			//user = userService.getById(user.getId());
			request.setAttribute("user", user);
			model.addAttribute("user",user);
			return "/listUser";
		}else {
			return "/updateError";
		}
	}
	
	@RequestMapping(value="/getUser") 
	//http://localhost/smurf/user/gerUser?id=2
    public ModelAndView getUser(int id){  
         ModelAndView modelAndView = new ModelAndView();
         User user = userService.getById(id);
         modelAndView.addObject("user", user);
         modelAndView.setViewName("updateUser");
         return modelAndView;
    }  
	
	@RequestMapping("/delUser")  
    public void delUser(int id,HttpServletRequest request,HttpServletResponse response){  
        String result = "{\"result\":\"error\"}";  
        if(userService.delete(id)>0){  
            result = "{\"result\":\"success\"}";  
        }  
        response.setContentType("application/json");  
        try {  
            PrintWriter out = response.getWriter();  
            out.write(result);  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }
	
	@RequestMapping("/qrcode")
	public ModelAndView qrcode() {
		ModelAndView modelAndView = new ModelAndView("qrcode");
		return modelAndView;
	}
}
