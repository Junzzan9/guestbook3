package com.javaex.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.dao.GuestBookDao;
import com.javaex.vo.GuestBookVo;

@Controller
public class GuestbookController {

	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(Model model) {
		System.out.println("GB-List");

		GuestBookDao gDao = new GuestBookDao();

		List<GuestBookVo> gList = gDao.getPostList();

		model.addAttribute("gList", gList);

		return "WEB-INF/views/list.jsp";
	}

	@RequestMapping(value = "/add", method = { RequestMethod.GET, RequestMethod.POST })
	public String add(@ModelAttribute GuestBookVo gVo) {
		System.out.println("GB-ADD");
		GuestBookDao gDao = new GuestBookDao();

		gDao.postAdd(gVo);

		return "redirect:/list";
	}

	@RequestMapping(value = "deleteForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String deleteForm(Model model,@RequestParam("no") int no) {
		System.out.println("GB-deleteForm");
		
		model.addAttribute("no",no);
		
		return "/WEB-INF/views/deleteForm.jsp";
	}
	
	@RequestMapping(value = "/delete", method = { RequestMethod.GET, RequestMethod.POST })
	public String delete(@RequestParam("no") String no ,@RequestParam("pw") String pw) {
		System.out.println("GB-delete");
		
		GuestBookDao gDao = new GuestBookDao();
		gDao.postDelete(no, pw);
		
		return "redirect:/list";
	}

}
