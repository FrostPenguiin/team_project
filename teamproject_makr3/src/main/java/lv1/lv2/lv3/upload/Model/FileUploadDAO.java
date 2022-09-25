package lv1.lv2.lv3.upload.Model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FileUploadDAO {

	@Autowired
	private SqlSession session;

	public boolean insertData(FileUploadDTO data) {
		int res = session.insert("fileUploadMapper.insertData", data);
		return res == 1 ? true : false;
	}
	
	public List<FileUploadDTO> selectDatas(int bId) {
		List<FileUploadDTO> res = session.selectList("fileUploadMapper.selectDatas", bId);
		return res;
	}
	
}
