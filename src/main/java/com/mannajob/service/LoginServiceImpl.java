package com.mannajob.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mannajob.mapper.LoginMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class LoginServiceImpl implements LoginService {
	@Setter(onMethod_ = @Autowired)
	private LoginMapper mapper;

	public int MemCheck(String m_id) {
		int check = mapper.MemCheck(m_id);
		return check;
	}
	
	public String findId(String m_name, String m_email) {
			String findId = mapper.findId(m_name, m_email);
		if(findId != null) {
			int idLength = findId.length();
			idLength = idLength - 3;
			String tmpId = findId.substring(0, idLength);
			findId = "고객님의 아이디는" + tmpId + "*** 입니다.";
		} else {
			findId = "아이디를 찾을 수 없습니다.";
		}
		return findId;
	}

}
