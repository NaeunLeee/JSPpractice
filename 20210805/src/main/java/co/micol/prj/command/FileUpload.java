package co.micol.prj.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.micol.prj.comm.Command;
import co.micol.prj.image.service.FileInfoService;
import co.micol.prj.image.vo.FileInformationVO;

public class FileUpload implements Command {

	private static final String DIRECTORY = "image"; // 실제 파일이 저장될 공간

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 파일 업로드
		FileInfoService fileDao = new FileInfoService();
		FileInformationVO vo = new FileInformationVO();
		int maxFileSize = 1024 * 1024 * 100;		// 100mb
		
		System.out.println(request.getParameter("subject"));
		try {
			MultipartRequest part = new MultipartRequest(request, "d:/temp/", maxFileSize, "utf-8", new DefaultFileRenamePolicy());
			String upfileName = part.getFilesystemName("fileName");			// 서버에 업로드한 파일명
			String orgfileName = part.getOriginalFileName("fileName");	// 원본 파일명
			
			vo.setSubject(part.getParameter("subject"));
			vo.setFileName(orgfileName);
			vo.setDownFile(upfileName);
			
			int n = fileDao.fileInsert(vo);
			
			if (n != 0) {
				request.setAttribute("message", vo.getFileName() + " 파일 업로드 성공^^!");
			} else {
				request.setAttribute("message", orgfileName + " 파일 업로드 실패ㅜㅜ");
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "file/fileUploadResult";
	}

}
