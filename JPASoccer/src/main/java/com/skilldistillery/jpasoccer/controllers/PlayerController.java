package com.skilldistillery.jpasoccer.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpasoccer.data.PlayerDAO;

@Controller
public class PlayerController {
	
	@Autowired
	PlayerDAO playerdao;
	
	@RequestMapping(path="/")
	private String index(Model model) {
		model.addAttribute("players",playerdao.findPlayers());
		
		return "index";
		

	}
	
	@RequestMapping(path = "getPlayer.do", method = RequestMethod.GET)
	  public String getPlayer(Model model, @RequestParam("pid") int pid) {

	    model.addAttribute("player", playerdao.findPlayerById(pid));
	   
	    return "player/show";
	  }

}
