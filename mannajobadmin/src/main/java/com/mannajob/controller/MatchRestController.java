package com.mannajob.controller;

import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.CalendarVO;
import com.mannajob.domain.MatchVO;
import com.mannajob.domain.MemberVO;
import com.mannajob.service.BMatchService;
import com.mannajob.service.MatchService;
import com.mannajob.service.ProfileService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/rest/*")
@AllArgsConstructor
public class MatchRestController {
	private MatchService matchservice;
	private BMatchService bmatchService;
	private ProfileService profileservice;
	private JavaMailSender mailSender;
	
	
	@GetMapping (value = "/matchlist",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<MatchVO> getlist(HttpSession session){
		if(session.getAttribute("userId")==null) {
			return null;
		}
		String m_id = session.getAttribute("userId").toString();
		return matchservice.getRestMatchList(m_id);
	}
	
	@GetMapping(value = "/bmatchlist",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<BMatchVO> getbmatchlist(HttpSession session){
		if(session.getAttribute("userId")==null) {
			return null;
		}
		String m_id = session.getAttribute("userId").toString();
		return bmatchService.getRestBmatchList(m_id);
	}
	
	@PostMapping(value = "/scheduleMatch",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<CalendarVO> getscheduleM(HttpSession session ,String yearmonth){
		if(session.getAttribute("userId")==null) {
			return null;
		}
		String m_id = session.getAttribute("userId").toString();
		return matchservice.getMonthMatch(m_id, yearmonth);
		
	}
	@PostMapping(value = "/scheduleBmatch",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<CalendarVO> getscheduleB(HttpSession session,String yearmonth){
		if(session.getAttribute("userId")==null) {
			return null;
		}
		String m_id = session.getAttribute("userId").toString();
		return matchservice.getMonthBmatch(m_id, yearmonth);
	}
	
	@Transactional
	@PostMapping(value = "match/insert",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String insert(MatchVO matchVO, HttpSession session ,Model model) {
		matchVO.setM_id(session.getAttribute("userId").toString());
		log.info(matchVO.toString());
		if(matchservice.insert(matchVO)) {
			model.addAttribute("result", 1);
			BMatchVO bmatch = bmatchService.read(matchVO.getB_num());
			MemberVO member = profileservice.getMemProfile(bmatch.getM_id());		
			String content = member.getM_name() + "님 \n";
        	content += matchVO.getM_id() + "님께서\n";
			content += matchVO.getMat_stdate() + "\n";
			content += matchVO.getMat_hour() + "에 매칭을 요청을 하였습니다.\n";
			content += "마이페이지를 확인해주세요 \n";
			content += "http://175.205.193.91:13580/main\n";
			String setfrom = "Mannajob";
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,
						true, "UTF-8");

				messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(member.getM_email()); // 받는사람 이메일
				messageHelper.setSubject("[만나잡] 매칭 요청이 도착했습니다."); // 메일제목은 생략이 가능하다
				messageHelper.setText(content); // 메일 내용

				mailSender.send(message);
			} catch (Exception e) {
				System.out.println(e);
			}
			
			return "1";
		}else {
			return "2";
		}
	}
	
	@PostMapping(value = "/match/cancel",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String cancelok(MatchVO matchVO) {
		matchservice.cancel(matchVO);
		return "1";
	}
	
	@PostMapping(value = "/match/list",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<MatchVO> bmatlist(Model model, @ModelAttribute("b_num")int b_num) {
		return matchservice.searchBmatMat(b_num);
	}
	
	
	@Transactional
	@PostMapping(value = "/match/matchok",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String matchok(MatchVO matchVO) {
		matchservice.finish(matchVO);
		bmatchService.StateChange(matchVO.getB_num(), 1);
		return "redirect:/match/matlist";
		
	}
	
}
