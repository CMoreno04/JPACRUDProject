package com.skilldistillery.jpasoccer.data;

import java.util.List;

import com.skilldistillery.jpasoccerplayers.entities.Player;


public interface PlayerDAO {
public Player findPlayerById(int id);
public List<Player> findPlayers();

}
