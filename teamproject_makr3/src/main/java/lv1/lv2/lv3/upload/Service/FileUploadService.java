package lv1.lv2.lv3.upload.Service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lv1.lv2.lv3.upload.Model.FileUploadDAO;
import lv1.lv2.lv3.upload.Model.FileUploadDTO;


@Service
public class FileUploadService {
	
	@Autowired
	private FileUploadDAO dao;
	
	public List<FileUploadDTO> getDatas(int bId) {
		List<FileUploadDTO> datas = dao.selectDatas(bId);
		return datas;
	}
	
	private boolean _upload(MultipartFile file, FileUploadDTO data) throws Exception {
		File directory = new File(data.getLocation());
		if(!directory.exists()) {
			directory.mkdirs();
		}
		
		if(file.getSize() / (1024 * 1024 * 5) > 1) {
			return false;
		}
		
		UUID uuid = UUID.nameUUIDFromBytes(file.getBytes());
		
		data.setFileName(file.getOriginalFilename());
		data.setUuidName(uuid.toString());
		data.setFileSize(file.getSize());
		
		boolean res = dao.insertData(data);
		if(res) {
			file.transferTo(new File(data.getLocation() + File.separatorChar + data.getUuidName()));
		}
		return res;
	}
	
	public int upload(MultipartFile file, FileUploadDTO data) throws Exception {
		boolean res = this._upload(file, data);
		return res ? 1 : 0;
	}
	
	public int upload(MultipartFile[] files, FileUploadDTO data) throws Exception {
		int count = 0;
		for(MultipartFile file: files) {
			boolean res = this._upload(file, data);
			count = res ? count + 1 : count;
		}
		return count;
	}
}
