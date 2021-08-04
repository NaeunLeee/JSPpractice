package co.micol.prj.board.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;


@Setter
@Getter
public class SnsVO extends CommentsVO {
	
	private int sNo;
	private String sWriter;
	private Date sDate;
	private String sTitle;
	private String sContents;
	private int sAno;
	
}
