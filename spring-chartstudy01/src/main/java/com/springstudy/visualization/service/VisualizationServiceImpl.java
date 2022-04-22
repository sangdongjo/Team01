package com.springstudy.visualization.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springstudy.visualization.dao.VisualizationDao;
import com.springstudy.visualization.domain.Cancer;
import com.springstudy.visualization.domain.CoffeeShop;
import com.springstudy.visualization.domain.PopTimeSeries;
import com.springstudy.visualization.domain.Population;

/* @Component를 확장한 annotation으로 
 * 이 클래스가 서비스(비즈니스 로직) 계층의 컴포넌트임을 선언한다.
 **/ 
@Service
public class VisualizationServiceImpl implements VisualizationService {

	private VisualizationDao dao;
	
	@Autowired
	public void setDao(VisualizationDao dao) {
		this.dao = dao;
	}
	
	// 대장암 환자 현황을 List<Integer>로 반환하는 메서드
	@Override	
	public List<Integer> cancerData() {		
		// Cancer 객체로 받아서 숫자만 저장된 리스트 객체로 변환해 반환
		
		Cancer cancer = dao.cancerObject();
		List<Integer> cancerData = new ArrayList<Integer>();
		cancerData.add(cancer.getTeens());
		cancerData.add(cancer.getTwenty());
		cancerData.add(cancer.getThirty());
		cancerData.add(cancer.getForty());
		cancerData.add(cancer.getFifty());
		cancerData.add(cancer.getSixty());
		cancerData.add(cancer.getSeventy());
		cancerData.add(cancer.getEighty());
		cancerData.add(cancer.getNinety());
		cancerData.add(cancer.getHundred());
		
		return cancerData;		
	}
	
	// 커피숍 운영 현황을 CoffeeShop 객체로 반환하는 메서드
	@Override
	public CoffeeShop coffeeShopData() {
		
		CoffeeShop coffeeShop = new CoffeeShop();
		coffeeShop.setYear(dao.coffeeShopData("year"));
		coffeeShop.setOpen(dao.coffeeShopData("open"));
		coffeeShop.setClose(dao.coffeeShopData("close"));
		
		return coffeeShop;
	}
	
	// 연령대별 인구현황을 PopTimeSeries 객체로 반환하는 메서드
	@Override
	public PopTimeSeries popTimeSeries() { 
		
		List<Population> populationList = dao.populationList();
		
		PopTimeSeries popTimeSeries = new PopTimeSeries();
		popTimeSeries.setAge0Group(new ArrayList<Integer>());
		popTimeSeries.setAge10Group(new ArrayList<Integer>());
		popTimeSeries.setAge20Group(new ArrayList<Integer>());
		popTimeSeries.setAge30Group(new ArrayList<Integer>());
		popTimeSeries.setAge40Group(new ArrayList<Integer>());
		popTimeSeries.setAge50Group(new ArrayList<Integer>());
		popTimeSeries.setAge60Group(new ArrayList<Integer>());
		popTimeSeries.setAge70Group(new ArrayList<Integer>());
		popTimeSeries.setAge80Group(new ArrayList<Integer>());
		popTimeSeries.setAge90Group(new ArrayList<Integer>());		
		
		for(Population p : populationList) {
			popTimeSeries.getAge0Group().add(p.getAge0());
			popTimeSeries.getAge10Group().add(p.getAge10());
			popTimeSeries.getAge20Group().add(p.getAge20());
			popTimeSeries.getAge30Group().add(p.getAge30());
			popTimeSeries.getAge40Group().add(p.getAge40());
			popTimeSeries.getAge50Group().add(p.getAge50());
			popTimeSeries.getAge60Group().add(p.getAge60());
			popTimeSeries.getAge70Group().add(p.getAge70());
			popTimeSeries.getAge80Group().add(p.getAge80());
			popTimeSeries.getAge90Group().add(p.getAge90());	
		}
		
		return popTimeSeries;
	}
}
