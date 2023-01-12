package com.geekbrains.geek.market;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.util.Assert;

@ExtendWith(MockitoExtension.class)
class GeekMarketApplicationTests {

	@Test
	void contextLoads() {
		Assert.hasText("TEST", "TEST");
	}
	
	@Test
	void fail() {
		Assert.hasText("TEST", "TEXT");
	}

}
