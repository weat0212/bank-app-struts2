package filetrans.action;

import java.sql.Timestamp;

import com.opensymphony.xwork2.Action;

import filetrans.dao.UploadCaseDao;
import filetrans.dao.UploadCaseDaoImpl;
import filetrans.models.UploadCase;

public class FileTransUploadAction implements Action {
	
	public UploadCase uploadCase= new UploadCase();
	
	public String execute() {
		setCurrentTime();
//		UploadCaseDao dao = new  UploadCaseDaoImpl();
//		dao.save(uploadCase);
		return SUCCESS;
	}
	
	public void setCurrentTime() {
		this.uploadCase.setUploadTime(new Timestamp(System.currentTimeMillis()));
	}
}
