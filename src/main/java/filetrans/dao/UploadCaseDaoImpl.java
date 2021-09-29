package filetrans.dao;

import filetrans.models.UploadCase;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import filetrans.utils.HibernateUtil;

public class UploadCaseDaoImpl implements UploadCaseDao {

	public void save(UploadCase uploadCase) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		session.save(uploadCase);
		tx.commit();
	}

	public UploadCase findUploadCase(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from upload_case c where c.case_id=?");
        
        query.setLong(0, id);
        UploadCase uploadCase = (UploadCase) query.uniqueResult();
		return uploadCase;
	}

}
