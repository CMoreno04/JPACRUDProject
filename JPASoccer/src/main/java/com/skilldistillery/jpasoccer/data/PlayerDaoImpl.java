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

}
