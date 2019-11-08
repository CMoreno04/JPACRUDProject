package com.skilldistillery.jpasoccer.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpasoccer.data.PlayerDAO;

@Controller
public class PlayerController {
	
	@Autowired
	PlayerDAO playerdao;
	
	@RequestMapping(path="/")
	private String index() {
		
		return "index";
		

	}
	

}
