package com.springstudy.visualization.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springstudy.visualization.domain.Cancer;
import com.springstudy.visualization.domain.Population;

/* @Component를 확장한 annotation으로 
 * 이 클래스가 데이터 액세스(데이터 저장소) 계층의 컴포넌트임을 선언한다.
 **/ 
@Repository
public class VisualizationDaoImpl implements VisualizationDao {

	/* src/main/resources/repository/mappers/VisualizationMapper.xml에
	 * 정의한 Mapper namespace를 상수로 정의
	 **/
	private final String NAME_SPACE = "com.springstudy.mapper.VisualizationMapper";
	
	/* MyBatis가 제공하는 SqlSessionTemplate 객체를 DI 받아
	 * 사용할 수 있도록 생성자나 setter를 준비해야 한다.
	 **/		
	private SqlSessionTemplate sqlSession;
		
	
	 // MyBatis가 제공하는 SqlSessionTemplate 타입의 객체를 setter 주입 받음
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	// 대장암 환자 현황을 List<Integer> 객체로 반환하는 메서드
	@Override
	public Cancer cancerObject() {		
		return sqlSession.selectOne(NAME_SPACE + ".cancerObject");
	}
		
	// 컬럼 명에 해당하는 커피숍 현황 데이터를 읽어와 List<Integer>로 반환하는 메서드
	@Override
	public List<Integer> coffeeShopData(String columnName) {
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("col", columnName);
		return sqlSession.selectList(NAME_SPACE + ".coffeeShopData", params);
	}
	
	// 연령대별 인구현황을 PopTimeSeries 객체로 반환하는 메서드
	@Override
	public List<Population> populationList() {
		return sqlSession.selectList(NAME_SPACE + ".populationList");
	}
}
