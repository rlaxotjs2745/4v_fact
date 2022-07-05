package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.VisitDataVO;
import kr.or.fact.core.model.DTO.VisitDateVO;
import kr.or.fact.core.model.DTO.VisitReqVO;
import kr.or.fact.core.model.VisitMapper;
import kr.or.fact.core.service.VisitService;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import java.util.Date;
import java.util.List;

@Service("visitService")
public class VisitServiceImpl implements VisitService {

    private final VisitMapper visitMapper;
    @Autowired
    public VisitServiceImpl(VisitMapper visitMapper){this.visitMapper = visitMapper;}

    @Autowired
    private SqlSession sqlsession;

    @Autowired
    private DataSourceTransactionManager dataSourceTransactionManager;


    @Override
    public int getUserVisitReqCount(long idx_user){
        return visitMapper.getUserVisitReqCount(idx_user);
    }

    @Override
    public VisitDataVO getVisitData(Date cur_date){
        return visitMapper.getVisitData(cur_date);
    }

    @Override
    public List<VisitDataVO> getMonthlyVisitData(Date cur_date){
        return visitMapper.getMonthlyVisitData(cur_date);
    }

    @Override
    public List<VisitDataVO> getDurationVisitData(VisitDateVO visitDateVO){
        return visitMapper.getDurationVisitData(visitDateVO);
    }

    @Override
    public List<VisitReqVO> getVisitList(ParamPageListFilteredVO param) {
        return visitMapper.getVisitList(param);
    }

    @Override
    public List<VisitReqVO> getMonthlyVisitReq(){
        return visitMapper.getMonthlyVisitReq();
    }
    @Override
    public List<VisitReqVO> getUserVisitReq(long idx_user,int page,int list_amount){
        return visitMapper.getUserVisitReq(idx_user,page,list_amount,"VISIT_REQ_NUM");
    }

    @Override
    public int getVisitReqCount() {
        return visitMapper.getVisitReqCount();
    }

    @Override
    public long saveVisitData(VisitDataVO visitDataVO){
        return visitMapper.saveVisitData(visitDataVO);
    }
    @Override
    public void updateVisitData(VisitDataVO visitDataVO){
        visitMapper.updateVisitData(visitDataVO);
    }
    @Override
    public void deleteVisitData(long idx_visit_data){
        visitMapper.deleteVisitData(idx_visit_data);
    }

    @Override
    public void saveOrUpdateHugeVisitData(List<VisitDataVO> visitDataVOs){


        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
        TransactionStatus status = dataSourceTransactionManager.getTransaction(def);


        for(VisitDataVO visitDataVO:visitDataVOs){

            Date cur_date = visitDataVO.getCur_date();

            VisitDataVO findVisitData = visitMapper.getVisitData(cur_date);

            if(findVisitData !=null){
                findVisitData.setCur_date(visitDataVO.getCur_date());
                findVisitData.setPossible_count(visitDataVO.getPossible_count());
                findVisitData.setVisit_data_type(visitDataVO.getVisit_data_type());
                findVisitData.setMemo(visitDataVO.getMemo()==null?"":visitDataVO.getMemo());
                findVisitData.setIdx_admin(visitDataVO.getIdx_admin());

                this.sqlsession.update("kr.or.fact.core.model.VisitMapper.updateVisitData",findVisitData);
            }
            else {
                findVisitData = new VisitDataVO();
                findVisitData.setCur_date(visitDataVO.getCur_date());
                findVisitData.setPossible_count(visitDataVO.getPossible_count());
                findVisitData.setResulvation_count(0);
                findVisitData.setIs_admin_cancel(0);
                findVisitData.setImpossible_reason("");
                findVisitData.setVisit_data_type(visitDataVO.getVisit_data_type());
                findVisitData.setMemo(visitDataVO.getMemo()==null?"":visitDataVO.getMemo());
                findVisitData.setIdx_admin(0);//idx_admin 추후 권한 관리에서 추가하는것으로
                this.sqlsession.insert("kr.or.fact.core.model.VisitMapper.saveVisitData",findVisitData);
            }
        }

        dataSourceTransactionManager.commit(status);
    }


    @Override
    public void updateStatusInVisitData(VisitDataVO visitDataVO){

        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
        TransactionStatus status = dataSourceTransactionManager.getTransaction(def);

        this.sqlsession.update("kr.or.fact.core.model.VisitMapper.updateStatusInVisitData",visitDataVO);

        dataSourceTransactionManager.commit(status);
    }

    @Override
    public void deleteHugeVisitData(List<VisitDataVO> visitDataVOs){
        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
        TransactionStatus status = dataSourceTransactionManager.getTransaction(def);

        for(VisitDataVO visitDataVO:visitDataVOs){
            long idx_visit_data = visitDataVO.getIdx_visit_data();
            this.sqlsession.delete("kr.or.fact.core.model.VisitMapper.deleteVisitData",idx_visit_data);
        }
        dataSourceTransactionManager.commit(status);
    }

    @Override
    public void saveVisitReq(VisitReqVO visitReqVO){
        visitMapper.saveVisitReq(visitReqVO);
    }

    @Override
    public VisitReqVO getVisitReqByIdx(long idx_visit_req){
        return visitMapper.getVisitReqByIdx(idx_visit_req);
    }

    @Override
    public void deleteVisitReq(long idx_visit_req){
        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
        TransactionStatus status = dataSourceTransactionManager.getTransaction(def);

        this.sqlsession.delete("kr.or.fact.core.model.VisitMapper.deleteVisitReq",idx_visit_req);

        dataSourceTransactionManager.commit(status);
    }

    @Override
    public int updateVisitReq(VisitReqVO visitReqVO) {
        return visitMapper.updateVisitReq(visitReqVO);
    }
}


