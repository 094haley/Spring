package kr.co.ch05.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ch05.dao.User4DAO;

@Service
public class User4Service {

	@Autowired
	private User4DAO dao;
	
}
