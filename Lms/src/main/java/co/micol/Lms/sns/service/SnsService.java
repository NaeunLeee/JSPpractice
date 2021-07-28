package co.micol.Lms.sns.service;

import java.util.List;

import co.micol.Lms.sns.vo.CommentsVO;
import co.micol.Lms.sns.vo.SnsVO;

public interface SnsService {
	List<SnsVO> snsSelectList();
	List<SnsVO> snsSelect(int no);
	int snsInsert(SnsVO vo);
	int commentsInsert(CommentsVO vo);
	int snsUpdate(SnsVO vo);
	int commentsUpdate(CommentsVO vo);
	int snsDelete(SnsVO vo);
	int commentsDelete(CommentsVO vo);
}
