package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.*;
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
    public int getOpenEventContentCount(String filter, String query) {
        return eventContentMapper.getOpenEventContentCount(filter, query);
    }

    @Override
    public List<EventContentVO> getOpenEventContentList(int page, int count, String filter, String query) {
        List<EventContentVO> eventContentVOList = eventContentMapper.getOpenEventContentList(page, count, filter, query);

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
    public List<EventContentVO> getEventContentList(ParamPageListFilteredVO paramVo){
        paramVo.setOrder_field("ANNOUNCE_NUM");
        List<EventContentVO> eventContentVOList = eventContentMapper.getEventContentList(paramVo);
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
        List<EventContentVO> result = null;
        try{
            result = eventContentMapper.getMainEventContentList();
        } catch (Exception e){
            System.out.println("eventContentMapper.getMainEventContentList: " + e.toString());
        }

        return result;
    }

    @Override
    public List<EventContentVO> getEventList() {
        return eventContentMapper.getEventList();
    }

    @Override
    public EventContentVO getEventContentByIdx(long idx_event_content) {
        return eventContentMapper.getEventContentByIdx(idx_event_content);
    }

    @Override
    public int insertEventContent(EventContentVO eventContentVO) throws Exception {
        int ret_idx = 0;
        try {
            ret_idx = eventContentMapper.insertEventContent(eventContentVO);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ret_idx;
    }

    @Override
    public int deleteEvent(long idx_event_content) {
        return eventContentMapper.deleteEvent(idx_event_content);
    }

    @Override
    public int insertEventContentFileJoin(FileInfoVO fileInfoVO) {
        return eventContentMapper.insertEventContentFileJoin(fileInfoVO);
    }

    @Override
    public EventFileJoinSelectVO getEventContentFileJoin(long idx_event_content) {
        return eventContentMapper.getEventContentFileJoin(idx_event_content);
    }

    @Override
    public int getEventViewCount(long idx_event_content) {
        return eventContentMapper.getEventViewCount(idx_event_content);
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
    public void updateEventContent(EventContentVO eventContentVO) throws Exception {
        try {
            eventContentMapper.updateEventContent(eventContentVO);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    @Override

    public EventFileJoinSelectVO getEventContentFile(EventContentVO eventContentVO) {
        return eventContentMapper.getEventContentFile(eventContentVO);
    }

    @Override
    public EventContentVO getThumbFile(EventContentVO eventContentVO) {
        return eventContentMapper.getThumbFile(eventContentVO);
    }

    @Override
    public EventContentVO getEventContentThumbFile(EventContentVO eventContentVO) {
        return eventContentMapper.getEventContentThumbFile(eventContentVO);
    }

    @Override
    public int getEventContentCount(ParamPageListFilteredVO paramVo){
        return eventContentMapper.getEventContentCount(paramVo);
    }
}
