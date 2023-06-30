package com.ezen.phonefly2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ezen.phonefly2.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	OrderService os;
	
	
	
}
