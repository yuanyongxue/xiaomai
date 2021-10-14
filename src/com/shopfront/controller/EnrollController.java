package com.shopfront.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shopfront.dao.mainpage.LoginMapper;
import com.shopfront.entity.Member;

@Controller
public class EnrollController {

	@Resource()
	LoginMapper loginMapper;
	
	@RequestMapping(value="getEnroll",method=RequestMethod.POST)
	public String getEnroll(Model model,Member member,HttpSession session){
		int i = loginMapper.register(member);
		if(i>0){
			model.addAttribute("num",i);
			session.setAttribute("username",member.getUsername());
			session.setAttribute("memberID",member.getMemberID());
			return "redirect:/mainList/list?id="+member.getMemberID();
		}
		return "login";
	}
}
