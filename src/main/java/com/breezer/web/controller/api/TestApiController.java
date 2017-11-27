package com.breezer.web.controller.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.breezer.web.dto.JSONResult;

@Controller("TestAPIController")
@RequestMapping("/api/test")
public class TestApiController {

	@ResponseBody
	@RequestMapping("/request")
	public JSONResult test() {
		System.out.println("recieve request - api/test/request");
		return JSONResult.success("r u hyungeun?");
	}
}
