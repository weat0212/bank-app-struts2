package filetrans.action;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Timestamp;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import com.opensymphony.xwork2.Action;

import filetrans.models.UploadCase;
import filetrans.services.UploadCaseService;
import filetrans.utils.FtpClient;

public class FileTransUploadAction implements Action {

	public UploadCase uploadCase = new UploadCase();

	public String execute() throws IOException {
		setCurrentTime();
		try{
			UploadCaseService.add(uploadCase);
		} catch(IOException e){
			e.printStackTrace();
		}
		fileTransfer(uploadCase);
		return SUCCESS;
	}

	public void setCurrentTime() {
		this.uploadCase.setUploadTime(new Timestamp(System.currentTimeMillis()));
	}

	private void fileTransfer(UploadCase uploadCase) throws IOException {
		String outXml = createXmlFormat(uploadCase);
		FtpClient ftpClient = connectFtp();
		
		// Create file based on the caseNumber .xml
		try {
			ftpClient.putFileToPath(writeString2File(outXml, uploadCase.getCaseNum()),
					String.format("/%s.xml", uploadCase.getCaseNum()));
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			System.out.println("Case Number:" + uploadCase.getCaseNum() + " Upload Success!");
			ftpClient.close();
		}
	}
	
	private File writeString2File(String text, String caseNum) throws IOException {

		// Temporal file is stored inside the project
		File returnFile = new File(caseNum + ".xml");

		FileWriter fileWriter = new FileWriter(returnFile);
		fileWriter.write(text);
		fileWriter.flush();
		fileWriter.close();

		return returnFile;
	}

	
	private FtpClient connectFtp() throws IOException {

		FtpClient ftpClient = new FtpClient("localhost", 21, "admin", "password");

		try {
			ftpClient.open();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return ftpClient;
	}
	
	private String createXmlFormat(UploadCase uploadCase) {

		Document document = DocumentHelper.createDocument();

		document.addElement("EMI");

		Element root = document.getRootElement();

		root.addElement("EMI-NO").addText(uploadCase.getEmiNum());

		Element creditCard = root.addElement("CREDIT-CARD");

		creditCard.addElement("NUMBER").addText(uploadCase.getCreditCardNum());
		creditCard.addElement("NAME").addText(uploadCase.getCustomerName());

		String outXml = document.asXML();
		return outXml;
	}
}
