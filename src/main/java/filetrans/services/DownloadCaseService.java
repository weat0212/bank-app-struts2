package filetrans.services;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import filetrans.models.Downloader;
import filetrans.models.UploadCase;

public class DownloadCaseService {

	public static List<UploadCase> loadCases(Downloader downloader) throws IOException {
		SqlSessionFactory ssf = new SqlSessionFactoryBuilder()
									.build(Resources.getResourceAsReader("mybatis-config.xml"));
		SqlSession sqlsession = ssf.openSession();

		List<UploadCase> uploadCases;
		
		uploadCases = sqlsession.selectList("com.webcomm.DownloadCaseMapper.serachUploadCases", downloader);
		
		sqlsession.commit();
		
		return uploadCases;
	}
}
