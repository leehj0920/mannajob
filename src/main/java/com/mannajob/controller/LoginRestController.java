package com.mannajob.controller;

import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mannajob.service.LoginService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/rest/*")
@AllArgsConstructor
public class LoginRestController {
	private LoginService service;
	
	@PostMapping(value = "/login/findid", produces ={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	public String idfind(Model model, String m_name, String m_email) {
		return service.findId(m_name, m_email);
	}
	
	@PostMapping(value = "/login/findpasswd", produces ={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	public String pwreset(Model model, String m_id, String m_name, String m_email, RedirectAttributes rttr) {
		if(service.myreset(m_id, m_name, m_email)) {
			return "1";
		} else {
			return "2";
		}
	}
	
	@PostMapping(value = "/login/resetpasswd", produces ={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	public String resetok(Model model, String m_id, String m_passwd, String m_passwd2) {
		if(m_passwd.equals(m_passwd2)) {
			service.pwreset(m_id, m_passwd);
			return "1";
		} else {
			return "2";
		}
		
	}

}
