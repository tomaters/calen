package com.calen.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.calen.domain.Account;

@Controller
public class HomeController {

	@GetMapping("/")
	public String home(Locale locale, Model model, Account account) throws Exception {
		return "calen";
	}
}