package com.skilldistillery.jpasoccerplayers.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PlayerTest {
	private static EntityManagerFactory emf;
	private static EntityManager em;
	private Player player;

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

	}

	@AfterEach
	void tearDown() throws Exception {
		player = null;
		em.close();
	}

	@Test
	void test() {
		assertEquals("lionel", player.getFirstName().toLowerCase());
	}

}
