package co.micol.prj.board.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CommentsVO {
	
	private int sNo;
	private int cNo;
	private String cName;
	private String cSubject;
	private Date cDate;
	
}
