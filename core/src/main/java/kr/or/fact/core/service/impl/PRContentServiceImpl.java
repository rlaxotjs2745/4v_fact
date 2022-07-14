package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.AdminResVO;
import kr.or.fact.core.model.DTO.PRContentVO;
import kr.or.fact.core.model.PRContentsMapper;
import kr.or.fact.core.service.PRContentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("prContentService")
public class PRContentServiceImpl implements PRContentsService {
    private final PRContentsMapper prContentsMapper;
    @Autowired
    public PRContentServiceImpl(PRContentsMapper prContentsMapper){this.prContentsMapper = prContentsMapper;}

    @Override
    public int getMainPRContentCount(){
        return prContentsMapper.getMainPRContentCount();
    }
    @Override
    public int getWebpagePRContentCount(){
        return prContentsMapper.getWebpagePRContentCount();
    }
    @Override
    public List<PRContentVO> getPRContentList(int page, int count){
        return prContentsMapper.getPRContentList(page,count,"ANNOUNCE_NUM");
    }



    @Override
    public List<PRContentVO> selectPRContentList(String tagValue) {
        int page = Integer.parseInt(tagValue);
        return prContentsMapper.selectPRContentList(page,10);
    }


    @Override
    public List<PRContentVO> getMainPRContentList(){
        return prContentsMapper.getMainPRContentList();
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

}
