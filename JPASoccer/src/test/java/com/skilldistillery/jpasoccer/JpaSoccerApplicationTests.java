package com.skilldistillery.jpasoccer;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.jpasoccer.data.PlayerDAO;

@SpringBootTest
class JpaSoccerApplicationTests {
PlayerDAO playerdao;


	@Test
	void contextLoads() {
		assertEquals("lionel", playerdao.findPlayerById(1).getFirstName().toLowerCase());
	}

}
