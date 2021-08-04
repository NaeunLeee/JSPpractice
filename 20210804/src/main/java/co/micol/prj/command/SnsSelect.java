package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.board.vo.SnsVO;
import co.micol.prj.common.Command;

public class SnsSelect implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDao = new BoardServiceImpl();
		SnsVO vo = new SnsVO();
		
		vo.setSNo(1);;;
		
		request.setAttribute("list", boardDao.snsSelect(vo));
		
		return "board/snsSelect";
	}

}
