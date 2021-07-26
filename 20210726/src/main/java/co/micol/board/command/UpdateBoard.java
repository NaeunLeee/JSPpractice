package co.micol.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.board.service.BoardService;
import co.micol.board.serviceImpl.BoardServiceImpl;
import co.micol.board.vo.BoardVO;

public class UpdateBoard implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setbContent(request.getParameter("bTitle"));
		vo.setbContent(request.getParameter("bContent"));
		vo.setbId(Integer.valueOf(request.getParameter("bId")));
		
		int n = dao.boardUpdate(vo);
		String page = "";
		
		if (n != 0) {
			page = "boardList.do";
		} else {
			page = "board/boardUpdateFail";
		}
		
		return page;
	}

}
