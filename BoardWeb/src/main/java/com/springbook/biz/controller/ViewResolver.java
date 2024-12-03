package com.springbook.biz.controller;

public class ViewResolver {

	private String prefix;
	private String suffix;
	
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}
	
	public void setSuffix(String surfix) {
		this.suffix = surfix;
	}
	
	public String getPath(String path) {
		return prefix + path + suffix;
	}
}
