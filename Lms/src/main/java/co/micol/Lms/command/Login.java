package co.micol.Lms.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.Lms.board.service.BoardService;
import co.micol.Lms.board.serviceImpl.BoardServiceImpl;
import co.micol.Lms.board.vo.BoardVO;
import co.micol.Lms.member.service.MemberService;
import co.micol.Lms.member.serviceImpl.MemberServiceImpl;
import co.micol.Lms.member.vo.MemberVO;

public class Login implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		MemberService dao = new MemberServiceImpl();		// 멤버 테이블
		BoardService boardDao = new BoardServiceImpl();		// 보드 테이블
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		vo = dao.memberLogin(vo);
		String page = "";
		
		if (vo.getName() != null) {
			session.setAttribute("name", vo.getName());
			session.setAttribute("author", vo.getAuthor());
			session.setAttribute("id", vo.getId());
			List<BoardVO> list = new ArrayList<BoardVO>();
			list = boardDao.boardSelectList();
			request.setAttribute("boards", list);
			page = "main.do";
		} else {
			page = "loginForm.do";
		}
		
		return page;
	}

}
