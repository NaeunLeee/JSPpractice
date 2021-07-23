package co.micol.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.member.service.MemberService;
import co.micol.member.serviceImpl.MemberServiceImpl;
import co.micol.member.vo.MemberVO;

public class MemberListCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 회원 전체 목록 보기
		MemberService dao = new MemberServiceImpl();	// 모델 호출
		List<MemberVO> members = new ArrayList<MemberVO>();
		members = dao.memberSelectList();	// 데이터를 가져옴
		request.setAttribute("list", members);		// 페이지에 값을 전달
		return "member/memberList";		// 보여줄 페이지 선택
	}

}
