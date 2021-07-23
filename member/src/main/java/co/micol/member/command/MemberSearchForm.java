package co.micol.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberSearchForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 단순하게 조회하는 폼 호출
		return "member/memberSearchForm";
	}

}
