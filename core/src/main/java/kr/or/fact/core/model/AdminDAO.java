package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AdminHistoryVO;
import kr.or.fact.core.model.DTO.AdminVO;
import kr.or.fact.core.model.DTO.PagedAdminListVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AdminDAO {
    public AdminVO getAdminInfoById(@Param("admin_id") String admin_id);
    public AdminVO getAdminInfoByIdx(@Param("idx_admin") long idx_admin);
    public AdminVO getAuthAdmin(@Param("admin_id") String admin_id,@Param("admin_pw") String admin_pw);
    //public AdminVO getAuthAdmin(ParamVO admin);
    public AdminVO getAdminInfoByNameAndMPhoneNum(@Param("admin_name") String admin_name,@Param("mphone_num") String mphone_num);

    public List<AdminVO> getAllAdminList();
    public List<AdminVO> getAdminPagingList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);
    public List<PagedAdminListVO> getAdminSpecialInfoPagingList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);

    public int getAdminCount(@Param("admin_type") int admin_type);//99 모든 유저


    public long insertAdminInfo(AdminVO adminVO);

    public int updateAdminInfo(AdminVO adminVO);
    public int updateAdminInfoForLogout(@Param("admin_id") String admin_id);

    public int deleteAdminInfoByID(@Param("admin_id") String admin_id);
    public int deleteAdminInfoByIdx(@Param("idx_admin") long idx_admin);

    public Integer saveAdminWorkHistory(AdminHistoryVO adminHistoryVo);

    public int updateAdminPassword(AdminVO adminVo);

}
