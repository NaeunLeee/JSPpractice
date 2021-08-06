package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.comm.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class Login implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		MemberService dao = new MemberServiceImpl();
		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();
		
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		
		vo = dao.login(vo);
				
		session.setAttribute("id", vo.getId());
		session.setAttribute("author", vo.getAuthor());
		
		request.setAttribute("member", vo);

		return "home/loginMessage";
	}

}
