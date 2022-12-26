package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.AdminResVO;
import kr.or.fact.core.model.DTO.NoticeVO;
import kr.or.fact.core.model.DTO.PRContentVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.PRContentsMapper;
import kr.or.fact.core.service.PRContentsService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import java.util.List;

@Service("prContentService")
public class PRContentServiceImpl implements PRContentsService {
    private final PRContentsMapper prContentsMapper;

    @Autowired
    public PRContentServiceImpl(PRContentsMapper prContentsMapper){

        this.prContentsMapper = prContentsMapper;
    }
    @Autowired
    private SqlSession sqlsession;




    @Override
    public int getMainPRContentCount(){
        return prContentsMapper.getMainPRContentCount();
    }
    @Override
    public int getWebpagePRContentCount(){
        return prContentsMapper.getWebpagePRContentCount();
    }

    @Override
    public int getOpenPRContentCount(String filter, String query) {
        return prContentsMapper.getOpenPRContentCount(filter, query);
    }

    @Override
    public List<PRContentVO> getOpenPRContentList(Integer page, int count, String filter, String query) {
        List<PRContentVO> prContentList= prContentsMapper.getOpenPRContentList(page,count,filter, query);

        List<PRContentVO> thumbList =prContentsMapper.getThumb();

        for (int i = 0; i < prContentList.size(); i++){
            for(int l = 0; l < thumbList.size(); l++){
                if(prContentList.get(i).getIdx_pr_content() == thumbList.get(l).getIdx_pr_content()){
                    prContentList.get(i).setThumb_img_file_path(thumbList.get(l).getFile_path());
                }
            }
        }

        return prContentList;
    }

    @Override
    public int getPRContentCount(){
        return prContentsMapper.getPRContentCount();
    }

    @Override
    public List<PRContentVO> getPRContentList(int page, int list_amount){
        List<PRContentVO> prContentList= prContentsMapper.getPRContentList(page,list_amount,"ANNOUNCE_NUM");

        List<PRContentVO> thumbList =prContentsMapper.getThumb();

        for (int i = 0; i < prContentList.size(); i++){
            for(int l = 0; l < thumbList.size(); l++){
                if(prContentList.get(i).getIdx_pr_content() == thumbList.get(l).getIdx_pr_content()){
                    prContentList.get(i).setThumb_img_file_path(thumbList.get(l).getFile_path());
                }
            }
        }

        return prContentList;
    }



    @Override
    public List<PRContentVO> selectPRContentList(String tagValue) {
        int page = Integer.parseInt(tagValue);
        return prContentsMapper.selectPRContentList(page,10);
    }

    @Override
    public int getPrViewCount(int idx_pr_content) {





        long newIdx = Long.parseLong("" + idx_pr_content);
        return prContentsMapper.getPrViewCount(newIdx);
    }

    @Override
    public void updatePrViewCount(PRContentVO prContentVO) {
//        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
//        TransactionStatus status = dataSourceTransactionManager.getTransaction(def);
//
//        this.sqlsession.delete("kr.or.fact.core.model.PRContentsMapper.updatePrViewCount",prContentVO);
//
//        dataSourceTransactionManager.commit(status);
        prContentsMapper.updatePrViewCount(prContentVO);
    }

    @Override
    public void updatePrContent(PRContentVO prContentVO) {
prContentsMapper.updatePrContent(prContentVO);
    }

    @Override
    public PRContentVO getMainPRContent(ParamPageListFilteredVO paramVo){
        PRContentVO result = null;
        try{
            result = prContentsMapper.getMainPRContent(paramVo);
        } catch (Exception e){
            System.out.println("prContentsMapper.getMainPRContentListt: " + e.toString());
        }
        return result;
    }

    @Override
    public List<PRContentVO> getMainPRContentList(){
        List<PRContentVO> result = null;
        try{
            result = prContentsMapper.getMainPRContentList();
        } catch (Exception e){
            System.out.println("prContentsMapper.getMainPRContentListt: " + e.toString());
        }
        return result;
    }

    @Override
    public int insertPRContent(PRContentVO prContentVO) {
        int ret_idx = 0;
        try {
            ret_idx = prContentsMapper.insertPRContent(prContentVO);


        } catch (Exception e) {
            System.out.println(e);
        }

        return ret_idx;
    }

    @Override
    public int deletePR(int idx_pr_content) {
        return prContentsMapper.deletePR(idx_pr_content);
    }

    @Override
    public PRContentVO getPRContent(int idx){
        Long newIdx = Long.parseLong("" + idx);
        return prContentsMapper.getPRContent(newIdx);
    }

    @Override
    public int insertPRContentFileJoin() {
        return prContentsMapper.insertPRContentFileJoin();
    }

    @Override
    public PRContentVO getPRContentFileJoin(int idx_pr_content) {
        long newIdx = Long.parseLong("" + idx_pr_content);
        return prContentsMapper.getPRContentFileJoin(newIdx);
    }

}
