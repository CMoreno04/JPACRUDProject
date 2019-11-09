package com.skilldistillery.jpasoccer.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpasoccer.data.PlayerDAO;
import com.skilldistillery.jpasoccerplayers.entities.Player;

@Controller
public class PlayerController {

	@Autowired
	PlayerDAO playerdao;

	@RequestMapping(path = "/")
	public String index() {

		return "index";
	}

	@RequestMapping(path = "createPlayerForm.do", method = RequestMethod.GET)
	public String createPlayerForm(Player player) {

		return "player/newPlayer";
	}

	@RequestMapping(path = "deletePlayer.do", method = RequestMethod.GET)
	public String deletePlayer(@RequestParam("pid") int pid, Model model) {
		if (playerdao.deletePlayer(pid)) {
			model.addAttribute("result", "Player Deleted!");
		}

		else {
			model.addAttribute("result", "Unable to Delete Player!");
		}
		return "player/result";
	}

	@RequestMapping(path = "createPlayer.do", method = RequestMethod.POST)
	public String createPLayer(Player player, Model model) {
		model.addAttribute("player", playerdao.createPlayer(player));
		return "player/showNewPlayer";
	}

	@RequestMapping(path = "getPlayer.do", method = RequestMethod.GET)
	public String getPlayer(Model model, @RequestParam("pid") int pid) {

		model.addAttribute("player", playerdao.findPlayerById(pid));

		return "player/show";
	}

	@RequestMapping(path = "updatePlayer.do", method=RequestMethod.POST)
	private String updatePlayer(Player player, Model model) {
		model.addAttribute("player",playerdao.findPlayerById(player.getId()));
		return "player/showNewPlayer";
	}

}
