package co.micol.prj.board.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.board.service.BoardMapper;
import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.vo.CommentsVO;
import co.micol.prj.board.vo.SnsVO;
import co.micol.prj.common.DataSource;

public class BoardServiceImpl implements BoardService {
	
	// Mybatis를 통해 데이터베이스에 연결하기 위해
	private SqlSession sqlSession = DataSource.getInstance().openSession();
	// Mapper interface를 사용하기 위해
	private BoardMapper map = sqlSession.getMapper(BoardMapper.class);
	
	
	@Override
	public List<SnsVO> snsSelectList() {
		return map.snsSelectList();
	}

	@Override
	public List<SnsVO> snsSelect(SnsVO vo) {
		return map.snsSelect(vo);
	}

	@Override
	public CommentsVO commentsSelect(CommentsVO vo) {
		return map.commentsSelect(vo);
	}

	@Override
	public int snsInsert(SnsVO vo) {
		return map.snsInsert(vo);
	}

	@Override
	public int commentsInsert(CommentsVO vo) {
		return map.commentsInsert(vo);
	}

	@Override
	public int snsUpdate(SnsVO vo) {
		return map.snsUpdate(vo);
	}

	@Override
	public int commentsUpdate(CommentsVO vo) {
		return map.commentsUpdate(vo);
	}

	@Override
	public int snsDelete(SnsVO vo) {
		return map.snsDelete(vo);
	}

	@Override
	public int commentsDelete(CommentsVO vo) {
		return map.commentsDelete(vo);
	}

}
