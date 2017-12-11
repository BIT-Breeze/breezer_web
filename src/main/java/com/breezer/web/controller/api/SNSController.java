package com.breezer.web.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.breezer.web.dto.JSONResult;
import com.breezer.web.service.SNSService;
import com.breezer.web.vo.SNSVo;

@Controller("SNSApiController")
@RequestMapping("/api/sns")
public class SNSController {

	@Autowired
	private SNSService snsService;
	
	@ResponseBody
	@RequestMapping("/list")
	public JSONResult list(
			@RequestParam( value="idx", required=true, defaultValue="0") long idx) {
		
		List<SNSVo> list = snsService.getListMessage(idx);
		return JSONResult.success(list);
	}
}
