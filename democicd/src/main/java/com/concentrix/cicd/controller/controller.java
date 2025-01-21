package com.concentrix.cicd.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class controller {
	
	@RequestMapping
	public String displayMsg() {
		return "This is demo for CI/CD";
	}

}
