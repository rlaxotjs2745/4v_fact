package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.NoticeVO;
import kr.or.fact.core.model.NoticeMapper;
import kr.or.fact.core.service.NoticeService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import java.util.List;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

    private final NoticeMapper noticeMapper;

    @Autowired
    public NoticeServiceImpl(NoticeMapper noticeMapper){
        this.noticeMapper = noticeMapper;

    }
    @Autowired
    private SqlSession sqlsession;




    @Override
    public int getMainNoticeCount(){
        return noticeMapper.getMainNoticeCount();
    }
    @Override
    public int getWebpageNoticeCount(){
        return noticeMapper.getWebpageNoticeCount();
    }
    @Override
    public List<NoticeVO> getNoticeWebList(int page, int list_amount){
        return noticeMapper.getNoticeWebList(page,list_amount,"ANNOUNCE_NUM");
    }
    @Override
    public List<NoticeVO> getMainNoticeList(){
        return noticeMapper.getMainNoticeList();
    }

    @Override
    public int insertNotice(NoticeVO noticeVO) {


        int ret_idx = 0;

        try {
            ret_idx = noticeMapper.insertNotice(noticeVO);
        } catch (Exception e) {

        }
        return ret_idx;
    }

    @Override
    public int deleteNotice(int idx_notice) {
        return noticeMapper.deleteNotice(idx_notice);
    }

    @Override
    public NoticeVO getNoticeByIdx(int idx_notice) {
        Long newIdx = Long.parseLong("" + idx_notice);
        return noticeMapper.getNoticeByIdx(newIdx);
    }

    @Override
    public int insertNoticeFileJoin() {
        return noticeMapper.insertNoticeFileJoin();
    }

    @Override
    public NoticeVO getNoticeIsFile(int idx_notice) {
        long newIdx = Long.parseLong("" + idx_notice);
        return noticeMapper.getNoticeIsFile(newIdx);
    }

    @Override
    public int getNoticeViewCount(int idx_notice) {
        long newIdx = Long.parseLong("" + idx_notice);
        return noticeMapper.getNoticeViewCount(newIdx);
    }

    @Override
    @Transactional(propagation= Propagation.REQUIRED)
    public void updateNoticeViewCount(NoticeVO noticeVO) {
//
//        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
//        TransactionStatus status = dataSourceTransactionManager.getTransaction(def);
//
//        this.sqlsession.delete("kr.or.fact.core.model.NoticeMapper.updateNoticeViewCount",noticeVO);
//
//        dataSourceTransactionManager.commit(status);
         noticeMapper.updateNoticeViewCount(noticeVO);
    }

}
