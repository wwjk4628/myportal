package himedia.myportal.services;
//1
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import himedia.myportal.repositories.dao.GuestbookDao;
import himedia.myportal.repositories.vo.GuestbookVo;
@Service("guestbookService")
public class GuestbookServiceImple implements GuestbookService{
	@Autowired
	GuestbookDao guestbookDao;
	
	@Override
	public List<GuestbookVo> getMessageList() {
		List<GuestbookVo> list = guestbookDao.SelectAll();
		return list;
	}

	@Override
	public boolean writeMessage(GuestbookVo vo) {
		int insertedCount = guestbookDao.insert(vo);
		return insertedCount == 1;
	}

	@Override
	public boolean deleteMessage(GuestbookVo vo) {
		int deletedCount = guestbookDao.delete(vo);
		return deletedCount == 1;
	}
	

}
