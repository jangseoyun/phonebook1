package com.javaex.dao;

import java.util.List;

import com.javaex.vo.PersonVo;

public class TestDao {

	public static void main(String[] args) {
		
		//dao 생성
		PhoneDao phoneDao = new PhoneDao();
		
		//검색 list불러와서 personList에 넣기
		List<PersonVo> personList = phoneDao.getPersonList();
		
		System.out.println(personList.toString());

	}

}
