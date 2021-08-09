package co.micol.prj.member.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemberVO {
	
	private String id;
	private String password;
	private String name;
	private int age;
	private String hobby;
	private String author;
	private char state;
	private int clId;
	
	private String check; // 로그인 or 검색 상태를 체크함
	



	
}
