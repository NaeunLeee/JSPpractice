package co.micol.board.serviceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.micol.board.dao.DAO;
import co.micol.board.service.BoardService;
import co.micol.board.vo.BoardVO;

public class BoardServiceImpl implements BoardService {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	@Override
	public List<BoardVO> boardSelectList() {
		// TODO 게시판 목록 가져오기
		List<BoardVO> list = new ArrayList<BoardVO>();
		String sql = "select * from board order by bid desc";
		BoardVO vo;
		
		try {
			conn = DAO.getConnection();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				vo = new BoardVO();
				vo.setbId(rs.getInt("bid"));
				vo.setbTitle(rs.getString("btitle"));
//				vo.setbContent(rs.getString("bcontent"));
				vo.setbWriter(rs.getString("bwriter"));
				vo.setbDate(rs.getDate("bdate"));
				vo.setbHit(rs.getInt("bhit"));
				list.add(vo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	private void close() {
		// TODO 연결 종료
		try {
			if (rs != null) rs.close();
			if (psmt != null) psmt.close();
			if (conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public BoardVO boardSelect(BoardVO vo) {
		// TODO 한행 가져오기
		String sql = "select * from board where bid = ?";
		
		try {
			conn = DAO.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getbId());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				vo.setbId(rs.getInt("bid"));
				vo.setbTitle(rs.getString("btitle"));
				vo.setbContent(rs.getString("bcontent"));
				vo.setbWriter(rs.getString("bwriter"));
				vo.setbDate(rs.getDate("bdate"));
				vo.setbHit(rs.getInt("bhit"));
				
				hitUpdate(vo.getbId());
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return vo;
	}

	private void hitUpdate(int id) {
		// TODO 조회수 증가
		String sql = "update board set bhit = bhit + 1 where bid = ?";
		
		// connection은 boardSelect할 때 이미 열려 있으니 필요 x, close도 마찬가지
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, id);
			psmt.executeUpdate();			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public int boardInsert(BoardVO vo) {
		// TODO 글 추가
		String sql = "insert into board (bid, btitle, bcontent, bwriter, bdate) values (b_seq.nextval, ?, ?, ?, ?)";
		int n = 0;
		
		try {
			conn = DAO.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getbTitle());
			psmt.setString(2, vo.getbContent());
			psmt.setString(3, vo.getbWriter());
			psmt.setDate(4, vo.getbDate());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	@Override
	public int boardDelete(BoardVO vo) {
		// TODO 한행 삭제
		String sql = "delete from board where bid = ?";
		int n = 0;
		
		try {
			conn = DAO.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getbId());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	@Override
	public int boardUpdate(BoardVO vo) {
		// TODO 글 제목, 글 내용만 변경
		String sql = "update board set btitle = ?, bcontent = ? where bid = ?";
		int n = 0;
		
		try {
			conn = DAO.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getbTitle());
			psmt.setString(2, vo.getbContent());
			psmt.setInt(3, vo.getbId());
			n = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return n;
	}

}
