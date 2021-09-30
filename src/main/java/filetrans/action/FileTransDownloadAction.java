package filetrans.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.Action;

import filetrans.models.Downloader;
import filetrans.models.UploadCase;
import filetrans.services.DownloadCaseService;

public class FileTransDownloadAction implements Action {

	public List<UploadCase>  uploadCases = new ArrayList<UploadCase>();
	public Downloader downloader = new Downloader();
	
	public String execute() throws IOException {
		
		uploadCases = DownloadCaseService.loadCases(downloader);
		return SUCCESS;
	}

	public List<UploadCase> getUploadCases() {
		return uploadCases;
	}

	public void setUploadCases(List<UploadCase> uploadCases) {
		this.uploadCases = uploadCases;
	}
	
	public Downloader getDownloader() {
		return downloader;
	}

	public void setDownloader(Downloader downloader) {
		this.downloader = downloader;
	}

}
