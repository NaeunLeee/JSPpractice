package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.common.Command;

public class SnsList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// sns 목록 가져오기
		BoardService boardDao = new BoardServiceImpl();
		request.setAttribute("list", boardDao.snsSelectList());
		return "board/snsList";
	}

}
