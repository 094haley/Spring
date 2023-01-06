package kr.co.ch05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.co.ch05.service.User4Service;

@Controller
public class User4Controller {
	
	@Autowired
	private User4Service service;

}
