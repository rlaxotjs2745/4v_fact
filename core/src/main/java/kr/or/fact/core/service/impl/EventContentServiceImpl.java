package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.EventContentVO;
import kr.or.fact.core.model.DTO.EventFileJoinSelectVO;
import kr.or.fact.core.model.EventContentMapper;
import kr.or.fact.core.service.EventContentService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import java.util.List;

@Service("eventContentService")
public class EventContentServiceImpl implements EventContentService {

    private final EventContentMapper eventContentMapper;
    @Autowired
    public EventContentServiceImpl(EventContentMapper eventContentMapper ){
        this.eventContentMapper = eventContentMapper;
    }
    @Autowired
    private SqlSession sqlsession;



    @Override
    public int getMainEventContentCount(){
        return eventContentMapper.getMainEventContentCount();
    }
    @Override
    public int getWebpageEventContentCount(){
        return eventContentMapper.getWebpageEventContentCount();
    }
    @Override
    public List<EventContentVO> getEventContentList(int page_num, int list_amount){
        List<EventContentVO> eventContentVOList = eventContentMapper.getEventContentList(page_num,list_amount,"ANNOUNCE_NUM");

        List<EventContentVO> thumbList = eventContentMapper.getThum();

        for (int i = 0; i < eventContentVOList.size(); i++){
            for(int l = 0; l < thumbList.size(); l++){
                if(eventContentVOList.get(i).getIdx_event_content() == thumbList.get(l).getIdx_event_content()){
                    eventContentVOList.get(i).setThumb_img_file_path(thumbList.get(l).getFile_path());
                }
            }
        }

        return eventContentVOList;
    }
    @Override
    public List<EventContentVO> getMainEventContentList(){
        return eventContentMapper.getMainEventContentList();
    }

    @Override
    public List<EventContentVO> getEventList() {
        return eventContentMapper.getEventList();
    }

    @Override
    public EventContentVO getEventContentByIdx(int idx_event_content) {
        long newIdx = Long.parseLong("" + idx_event_content);
        return eventContentMapper.getEventContentByIdx(newIdx);
    }

    @Override
    public int insertEventContent(EventContentVO eventContentVO) {
        int ret_idx = 0;
        try {
            ret_idx = eventContentMapper.insertEventContent(eventContentVO);

        } catch (Exception e) {
        }
        return ret_idx;
    }

    @Override
    public int deleteEvent(int idx_event_content) {
        return eventContentMapper.deleteEvent(idx_event_content);
    }

    @Override
    public int insertEventContentFileJoin() {
        return eventContentMapper.insertEventContentFileJoin();
    }

    @Override
    public EventFileJoinSelectVO getEventContentFileJoin(int idx_event_content) {
        long newIdx = Long.parseLong("" + idx_event_content);
        return eventContentMapper.getEventContentFileJoin(newIdx);
    }

    @Override
    public int getEventViewCount(int idx_event_content) {
        long newIdx = Long.parseLong("" + idx_event_content);
        return eventContentMapper.getEventViewCount(newIdx);
    }

    @Override
    @Transactional(propagation= Propagation.REQUIRED)
    public void updateEventViewCount(EventContentVO eventContentVO) {
//        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
//        TransactionStatus status = dataSourceTransactionManager.getTransaction(def);
//
//        this.sqlsession.delete("kr.or.fact.core.model.EventContentMapper.updateEventViewCount",eventContentVO);
//
//        dataSourceTransactionManager.commit(status);
        eventContentMapper.updateEventViewCount(eventContentVO);
    }

    @Override
    public void updateEventContent(EventContentVO eventContentVO) {
        eventContentMapper.updateEventContent(eventContentVO);
    }



}
