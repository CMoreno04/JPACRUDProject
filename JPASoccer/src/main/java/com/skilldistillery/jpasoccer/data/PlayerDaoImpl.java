package com.skilldistillery.jpasoccer.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpasoccerplayers.entities.Player;


@Transactional
@Service
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
			
			Player player =em.find(Player.class,id);
			
			em.remove(player);
			
			return true;
		} 
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		
	}

	@Override
	public Player updatePlayer(int id, Player player) {
		
		Player playerGettingUpdated = em.find(Player.class, id);
		
		playerGettingUpdated.setFirstName(player.getFirstName());
		playerGettingUpdated.setLastName(player.getLastName());
		playerGettingUpdated.setAge(player.getAge());
		playerGettingUpdated.setClub(player.getClub());
		playerGettingUpdated.setMarketValue(player.getMarketValue());
		playerGettingUpdated.setOverall(player.getOverall());
		playerGettingUpdated.setNationality(player.getNationality());
		
		
		return player;
	}

	@Override
	public Player createPlayer(Player player) {
		em.persist(player);
	
		return player;
	}

	

}
