package com.skilldistillery.jpasoccerplayers.data;

import java.util.List;

import com.skilldistillery.jpasoccerplayers.entities.Player;



public interface PlayerDAO {
	
public Player findPlayerById(int id);

public List<Player> findPlayers();

public Boolean deletePlayer(int id);

public Boolean updatePlayer(int id, Player player);

public Player createPlayer(Player player);

}
