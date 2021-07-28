package co.micol.Lms.member.service;

import java.util.List;

import co.micol.Lms.member.vo.MemberVO;

public interface MemberService {
	
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO vo);
	MemberVO memberLogin(MemberVO vo);
	int memberInsert(MemberVO vo);
	int memberDelete(MemberVO vo);
	int memberUpdate(MemberVO vo);
	
	
}
