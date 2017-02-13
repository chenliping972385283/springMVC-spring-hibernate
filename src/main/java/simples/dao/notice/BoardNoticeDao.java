package simples.dao.notice;

import simples.entity.BoardNotice;

import java.util.List;

/**
 * Created by jinli on 2017/2/13.
 */
public interface BoardNoticeDao {

    List<BoardNotice> selectNotice();
}
