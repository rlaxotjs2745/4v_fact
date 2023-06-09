package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.FileInfoVO;
import kr.or.fact.core.model.DTO.PRContentFileJoinVO;
import kr.or.fact.core.model.DTO.PRContentVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.PRContentsMapper;
import kr.or.fact.core.service.PRContentsService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("prContentsService")
public class PRContentsServiceImpl implements PRContentsService {
    private final PRContentsMapper prContentsMapper;

    @Autowired
    public PRContentsServiceImpl(PRContentsMapper prContentsMapper){

        this.prContentsMapper = prContentsMapper;
    }

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
    public List<PRContentVO> getOpenPRContentList(ParamPageListFilteredVO param) {
        List<PRContentVO> prContentList= prContentsMapper.getOpenPRContentList(param);
        List<PRContentVO> thumbList = prContentsMapper.getThumb();

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
    public int getPRContentCount(ParamPageListFilteredVO paramVo){
        return prContentsMapper.getPRContentCount(paramVo);
    }

    @Override
    public List<PRContentVO> getPRContentList(ParamPageListFilteredVO paramVo){
        paramVo.setOrder_field("ANNOUNCE_NUM");
        List<PRContentVO> prContentList = prContentsMapper.getPRContentList(paramVo);
        List<PRContentVO> thumbList = prContentsMapper.getThumb();

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
    public int getPrViewCount(long idx_pr_content) {
        return prContentsMapper.getPrViewCount(idx_pr_content);
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
    public void updatePrContent(PRContentVO prContentVO) throws Exception {
        try {
            prContentsMapper.updatePrContent(prContentVO);
        }catch (Exception e){
            e.printStackTrace();
        }
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
    public int deletePR(long idx_pr_content) {
        return prContentsMapper.deletePR(idx_pr_content);
    }

    @Override
    public PRContentVO getPRContent(long idx){
        return prContentsMapper.getPRContent(idx);
    }

    @Override
    public int insertPRContentFileJoin(FileInfoVO fileInfoVO) {
        return prContentsMapper.insertPRContentFileJoin(fileInfoVO);
    }

    public int updatePRContentFileJoin(PRContentFileJoinVO prcontensVO) {
        int rs = 0;
        try {
            rs = prContentsMapper.updatePRContentFileJoin(prcontensVO);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    @Override
    public PRContentFileJoinVO getPRContentFile(PRContentVO prcontensVO) throws Exception {
        return prContentsMapper.getPRContentFile(prcontensVO);
    }

    @Override
    public PRContentVO getPRContentThumbFile(PRContentVO prcontensVO) throws Exception {
        return prContentsMapper.getPRContentThumbFile(prcontensVO);
    }

    @Override
    public List<PRContentVO> getThumb() {
        return prContentsMapper.getThumb();
    }

    @Override
    public PRContentVO getThumbFile(PRContentVO prcontensVO) throws Exception {
        return prContentsMapper.getThumbFile(prcontensVO);
    }

    @Override
    public PRContentVO getPRContentFileJoin(long idx_pr_content) {
        return prContentsMapper.getPRContentFileJoin(idx_pr_content);
    }

}
