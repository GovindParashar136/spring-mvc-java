package org.gjp.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.gjp.spring.domain.City;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CityController {

	@GetMapping("/home")
	public String showHome() {

		return "home";
	}
	@GetMapping("/")
	public String showWelcome() {

		return "index";
	}

	@GetMapping("/list")
	public String listCustomers(Model theModel) {

		List<City> theCities = new ArrayList<City>();
		City city = new City();
		city.setCityName("United Kingdom");
		theCities.add(city);
		city = new City();
		city.setCityName("India");
		theCities.add(city);

		// add the customers to the model
		theModel.addAttribute("cities", theCities);

		return "list-cities";
	}
}