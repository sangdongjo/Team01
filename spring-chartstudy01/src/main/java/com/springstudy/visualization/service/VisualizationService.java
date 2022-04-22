package com.springstudy.visualization.service;

import java.util.List;

import com.springstudy.visualization.domain.CoffeeShop;
import com.springstudy.visualization.domain.PopTimeSeries;

public interface VisualizationService {
	
	// 대장암 환자 현황을 List<Integer>로 반환하는 메서드
	public List<Integer> cancerData();
	
	// 커피숍 운영 현황을 CoffeeShop 객체로 반환하는 메서드
	public CoffeeShop coffeeShopData();
	
	// 연령대별 인구현황을 PopTimeSeries 객체로 반환하는 메서드
	public PopTimeSeries popTimeSeries();
}
