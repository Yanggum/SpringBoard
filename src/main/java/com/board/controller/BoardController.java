package com.board.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.service.BoardService;

@Controller
public class BoardController {
	
	@Resource(name="com.board.service.BoardService")
	BoardService boardService;
	
	@RequestMapping("/list")
	private String testBoard(Model model)
	{
//		boardService.
//		model.addAttribute(attributeValue)
		return "test";
	}
	

}
