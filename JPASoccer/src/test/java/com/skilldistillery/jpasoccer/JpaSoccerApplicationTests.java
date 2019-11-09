package com.skilldistillery.jpasoccer;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.jpasoccer.data.PlayerDAO;

@SpringBootTest
class JpaSoccerApplicationTests {
private PlayerDAO playerdao;

@BeforeEach
private void setUp() {
	

}

@AfterEach
private void tearDown() {
	// TODO Auto-generated method stub

}

	@Test
	void contextLoads() {
		assertEquals("lionel", playerdao.findPlayerById(1).getFirstName().toLowerCase());
	}

}
