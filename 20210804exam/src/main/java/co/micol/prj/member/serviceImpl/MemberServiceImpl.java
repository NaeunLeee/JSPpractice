package co.micol.prj.member.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.comm.DataSource;
import co.micol.prj.member.service.MemberMapper;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {

	private SqlSession sqlSession = DataSource.getInstance().openSession();
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);

	@Override
	public MemberVO login(MemberVO vo) {
		return map.login(vo);
	}

}
