package co.micol.board.service;

import java.util.List;

import co.micol.board.vo.BoardVO;

public interface BoardService {

	List<BoardVO> boardSelectList();
	BoardVO boardSelect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardDelete(BoardVO vo);
	int boardUpdate(BoardVO vo);
	
	
}
