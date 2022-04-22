package com.springstudy.visualization.domain;

import java.util.List;

public class CoffeeShop {
	private List<Integer> year;
	private List<Integer> open;
	private List<Integer> close;
	
	public List<Integer> getYear() {
		return year;
	}
	public void setYear(List<Integer> year) {
		this.year = year;
	}
	public List<Integer> getOpen() {
		return open;
	}
	public void setOpen(List<Integer> open) {
		this.open = open;
	}
	public List<Integer> getClose() {
		return close;
	}
	public void setClose(List<Integer> close) {
		this.close = close;
	}		
}

