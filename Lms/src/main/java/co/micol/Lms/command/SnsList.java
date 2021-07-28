package co.micol.Lms.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.Lms.sns.service.SnsService;
import co.micol.Lms.sns.serviceImpl.SnsServiceImpl;
import co.micol.Lms.sns.vo.SnsVO;

public class SnsList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO SNS 리스트 가져오기
		SnsService snsDao = new SnsServiceImpl();
		List<SnsVO> list = new ArrayList<SnsVO>();
		list = snsDao.snsSelectList();
		request.setAttribute("list", list);
		return "main/snsList";
	}

}
