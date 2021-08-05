package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.comm.Command;
import co.micol.prj.comm.DownLoadFile;

public class FileDownLoad implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String path = "d://temp";
		String orgFileName = request.getParameter("orgFile");
		String downFileName = request.getParameter("downFile");
		DownLoadFile downLoadFile = new DownLoadFile(path, orgFileName, downFileName);
		boolean b = downLoadFile.isFileDown();
		
		if (!b) {
			request.setAttribute("message", downFileName + " 파일을 성공적으로 다운로드했습니다!!");
		} else {
			request.setAttribute("message", orgFileName + " 파일 다운로드에 실패했습니다.");
		}
		
		return "fileList.do";
	}

}
