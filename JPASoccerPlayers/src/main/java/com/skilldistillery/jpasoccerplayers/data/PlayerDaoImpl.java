package com.skilldistillery.jpasoccerplayers.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import com.skilldistillery.jpasoccerplayers.entities.Player;


@Transactional
public class PlayerDaoImpl implements PlayerDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Player findPlayerById(int id) {
		return em.find(Player.class, id);
	}

	@Override
	public List<Player> findPlayers() {
	
		return em.createQuery("SELECT p FROM Player p",Player.class).getResultList();
	}

	@Override
	public Boolean deletePlayer(int id) {
		try {
			em.remove(em.find(Player.class,id));
			return true;
		} 
		
		
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		
	}

	@Override
	public Boolean updatePlayer(int id, Player player) {
		
		Player playerGettingUpdated = em.find(Player.class, id);
		
		playerGettingUpdated.setFirstName(player.getFirstName());
		playerGettingUpdated.setLastName(player.getLastName());
		
		em.flush();
		
		
		return null;
	}

	@Override
	public Player createPlayer(Player player) {
		em.persist(player);
		return player;
	}

	

}
