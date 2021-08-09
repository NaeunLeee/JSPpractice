package co.micol.prj.board.service;

import java.util.List;

import co.micol.prj.board.vo.CommentsVO;
import co.micol.prj.board.vo.SnsVO;

public interface BoardMapper {
	
//	// 어노테이션 쓰고 세미콜론 나올때까지 한문장
//	@Select("select * from sns")
//	List<SnsVO> snsSelectList();
	
	List<SnsVO> snsSelectList();
	List<SnsVO> snsSelect(SnsVO vo);
	CommentsVO commentsSelect(CommentsVO vo);
	int snsInsert(SnsVO vo);
	int commentsInsert(CommentsVO vo);
	int snsUpdate(SnsVO vo);
	int commentsUpdate(CommentsVO vo);
	int snsDelete(SnsVO vo);
	int commentsDelete(CommentsVO vo);
	
}
