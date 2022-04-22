package com.springstudy.visualization.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springstudy.visualization.domain.CoffeeShop;
import com.springstudy.visualization.domain.PopTimeSeries;
import com.springstudy.visualization.service.VisualizationService;

// 이 클래스가 스프링 컨트롤러임을 선언한다.
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);	
	
	private VisualizationService service;
	
	@Autowired
	public void setService(VisualizationService service) {
		this.service = service;
	}
	
	@RequestMapping(value = "/cancer")
	public String cancer(Locale locale, Model model) throws Exception {
		logger.info("cancer(locale, model)  -  ", locale);
		
		List<Integer> datas = service.cancerData();
		
		/* 자바스크립트에 모델 데이터(배열)를 직접 맵핑 시키기 위해 Jackson2 라이브러리를
		 * 사용해 수동으로 직렬화 한다. 기본적으로 이 요청을 처리하는 메서드 선언부에
		 * @ResponseBody를 선언하면 MappingJackson2HttpMessageConverter에
		 * 의해서 자동으로 직렬화 되어 응답 본문에 포함되지만 이 경우에는 뷰 정보, jsp에서 
		 * 사용할 모델, 그리고 자바스크립트 코드에 직접 매핑할 데이터를 같이 보내야 하기 
		 * 때문에 논리적인 뷰의 이름을 반환하고 나머지는 모델 정보에 추가해 뷰로 보낸다. 	
		 **/
		ObjectMapper mapper = new ObjectMapper();
		String strCancer = mapper.writeValueAsString(datas);
		System.out.println("strCancer : " + strCancer);
		
		// 자바스트립트에 필요한 모델
		model.addAttribute("strCancer", strCancer);		
		return "cancer";
	}
	
	@RequestMapping("/coffeeShop")
	public String coffeeShop(Model model) throws Exception {
		logger.info("coffeeShop(model)  -  호출");
		
		CoffeeShop coffeeShop = service.coffeeShopData();
		
		// 자바스크립트 코드에 바로 적용하기 위해 수동으로 직렬화 한다.
		ObjectMapper mapper = new ObjectMapper();		
		String shopData = mapper.writeValueAsString(coffeeShop);
		System.out.println("shopData : " + shopData);
		
		// 요청을 처리한 결과를 모델에 담는다.
		model.addAttribute("shopData", shopData);
		//model.addAttribute("coffeeShop", coffeeShop);
		
		return "coffeeShop";
	}
	
	@RequestMapping("/popTimeSeries")
	public String popTimeSeries(Model model) throws Exception {
		logger.info("popTimeSeries(model)  -  호출");
		
		PopTimeSeries popTimeSeries = service.popTimeSeries();
		
		// 자바스크립트 코드에 바로 적용하기 위해 수동으로 직렬화 한다.
		ObjectMapper mapper = new ObjectMapper();		
		String popData = mapper.writeValueAsString(popTimeSeries);
		System.out.println(popData + popData);
		
		// 요청을 처리한 결과를 모델에 담는다.		
		model.addAttribute("popData", popData);
		// model.addAttribute("popTimeSeries", popTimeSeries);
		
		return "popTimeSeries";
	}
	
	@RequestMapping("getGit")
	public String getGit() {
		return "getGit";
	}
}

