package simples.service.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import simples.dao.notice.BoardNoticeDao;
import simples.entity.BoardNotice;

import java.util.List;

/**
 * Created by jinli on 2017/2/13.
 */
@Service
public class BoardNoticeServiceImpl implements BoardNoticeService {

    @Autowired
    private BoardNoticeDao noticeDao;

    @Override
    public List<BoardNotice> getBoardNoticeList() {
        return noticeDao.selectNotice();
    }
}
