package filetrans.dao;

import filetrans.models.UploadCase;

public interface UploadCaseDao {

	void save(UploadCase uploadCase);
	UploadCase findUploadCase(Long id);
}
