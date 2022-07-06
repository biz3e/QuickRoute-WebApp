package com.bizee.quickRouteWebApp;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bizee.routeFinder.FindRoute;

@Controller
public class FindRouteController {

	@RequestMapping("FindRoute")
	public ModelAndView findRoute(@RequestParam("Locations") String locations,
			@RequestParam("StartLocation") String startLocation) {
		ModelAndView mv = new ModelAndView();

		if (locations.isBlank()) {
			return new ModelAndView("redirect:/home");
		}

		try {
			FindRoute route = new FindRoute(locations, startLocation);
			String[] path = route.start();
			mv.addObject("path", path);
			mv.setViewName("result");
		} catch (IOException e) {
			Map<String, String> messages = new HashMap<String, String>();
			mv.addObject("messages", messages);
			if (e.getMessage().equals("Invalid Start Location")) {
				messages.put("startLocationError", "Starting location must be part of locations entered<BR>");
				mv.setViewName("home");
			} else if (e.getMessage().equals("Invalid Location")) {
				messages.put("locationsError", "Invalid location(s)<BR>");
				mv.setViewName("home");
			}
		} catch (Exception e) {
			mv.addObject("path", "There are no valid routes.");
			mv.setViewName("result");
		}

		return mv;
	}

}
