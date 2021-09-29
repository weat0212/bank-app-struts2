package filetrans.action;

import java.sql.Timestamp;

import com.opensymphony.xwork2.Action;

public class FileTransUploadAction implements Action {
	
	private String caseNum;
	private String emiNum;
	private String creditCardNum;
	private String customerName;
	private Timestamp uploadTime;
	
	public String execute() {
		setUploadTime();
		return SUCCESS;
	}
	
	public String getCaseNum() {
		return caseNum;
	}
	
	public void setCaseNum(String caseNum) {
		this.caseNum = caseNum;
	}
	
	public String getEmiNum() {
		return emiNum;
	}
	
	public void setEmiNum(String emiNum) {
		this.emiNum = emiNum;
	}
	
	public String getCreditCardNum() {
		return creditCardNum;
	}
	
	public void setCreditCardNum(String creditCardNum) {
		this.creditCardNum = creditCardNum;
	}
	
	public String getCustomerName() {
		return customerName;
	}
	
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
	public Timestamp getUploadTime() {
		return uploadTime;
	}
	
	public void setUploadTime() {
		this.uploadTime = new Timestamp(System.currentTimeMillis());
	}
}
