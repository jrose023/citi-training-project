package controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@RestController
public class ETradingDashboardController {

	@RequestMapping("/")
	public String index() {
		return "Hello world!";
	}


}
