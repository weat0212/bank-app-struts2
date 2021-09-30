package filetrans.action;

import java.io.IOException;
import java.sql.Timestamp;

import com.opensymphony.xwork2.Action;

import filetrans.models.UploadCase;
import filetrans.services.UploadCaseService;

public class FileTransUploadAction implements Action {
	
	public UploadCase uploadCase= new UploadCase();
	
	public String execute() throws IOException {
		setCurrentTime();
		UploadCaseService.add(uploadCase);
		return SUCCESS;
	}
	
	public void setCurrentTime() {
		this.uploadCase.setUploadTime(new Timestamp(System.currentTimeMillis()));
	}
}
