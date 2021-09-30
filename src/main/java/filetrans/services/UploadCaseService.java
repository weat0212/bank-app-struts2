package filetrans.services;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import filetrans.models.UploadCase;

public class UploadCaseService {

	public static void add(UploadCase uploadCase) throws IOException {
		SqlSessionFactory ssf = new SqlSessionFactoryBuilder()
									.build(Resources.getResourceAsReader("mybatis-config.xml"));
		SqlSession sqlsession = ssf.openSession();
		UploadCase caseToStore = uploadCase;
		sqlsession.insert("com.webcomm.UploadCaseMapper.addUploadCase", caseToStore);

		sqlsession.commit();
	}
}
