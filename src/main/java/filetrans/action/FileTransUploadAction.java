package filetrans.action;

import java.sql.Timestamp;

import com.opensymphony.xwork2.Action;

import filetrans.models.UploadCase;

public class FileTransUploadAction implements Action {
	
	public UploadCase uploadCase= new UploadCase();
	
	public String execute() {
		setCurrentTime();
		return SUCCESS;
	}
	
	public void setCurrentTime() {
		this.uploadCase.setUploadTime(new Timestamp(System.currentTimeMillis()));
	}
}
