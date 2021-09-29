package filetrans.models;

import java.io.Serializable;
import java.sql.Timestamp;

public class UploadCase implements Serializable {

	private static final long serialVersionUID = 1L;
	private Long caseId;
	private String caseNum;
	private String emiNum;
	private String creditCardNum;
	private String customerName;
	private Timestamp uploadTime;
	
	public Long getCaseId() {
		return caseId;
	}

	public void setCaseId(Long caseId) {
		this.caseId = caseId;
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
	
	public void setUploadTime(Timestamp uploadTime) {
		this.uploadTime = uploadTime;
	}

}
