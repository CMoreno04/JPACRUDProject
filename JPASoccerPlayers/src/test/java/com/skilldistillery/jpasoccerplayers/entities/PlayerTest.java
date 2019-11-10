package com.skilldistillery.jpasoccerplayers.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpasoccerplayers.data.PlayerDAO;

class PlayerTest {
	private static EntityManagerFactory emf;
	private static EntityManager em;
	private Player player;
	private Player playercr;
	
	private PlayerDAO playerdao;
	
	
	

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("SoccerPlayer");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		player = em.find(Player.class, 1);
		playercr=new Player("Cesar", "Moreno", 25, "Puerto Rico", 99, "FC Barcelona", 111000000);
		playerdao.createPlayer(playercr);

	}

	@AfterEach
	void tearDown() throws Exception {
		player = null;
		playercr = null;
		em.close();
	}

	@Test
	void test() {
		assertEquals("lionel", player.getFirstName().toLowerCase());
	}
	

		@Test
		@DisplayName("Create Player")
		void create_player() {
			
			
			assertEquals("cesar",em.find(Player.class, playercr.getId()).getFirstName().toLowerCase());
	}

}
