package com.springstudy.visualization.dao;

import java.util.List;

import com.springstudy.visualization.domain.Cancer;
import com.springstudy.visualization.domain.Population;

public interface VisualizationDao {	
	
	// 대장암 환자 현황을 Cancer 객체로 반환하는 메서드
	public Cancer cancerObject();
	
	// 커피숍 영업 현황을 CoffeeShop 객체로 반환하는 메서드
	public List<Integer> coffeeShopData(String columnName);
	
	// 연령대별 인구현황을 PopTimeSeries 객체로 반환하는 메서드
	public List<Population> populationList();
}
