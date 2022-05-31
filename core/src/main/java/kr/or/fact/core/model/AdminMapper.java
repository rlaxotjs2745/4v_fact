package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AdminHistoryVO;
import kr.or.fact.core.model.DTO.AdminVO;
import kr.or.fact.core.model.DTO.PagedAdminListVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AdminMapper {
    AdminVO getAdminInfoById(@Param("admin_id") String admin_id);
    AdminVO getAdminInfoByIdx(@Param("idx_admin") long idx_admin);
    AdminVO getAuthAdmin(@Param("admin_id") String admin_id,@Param("admin_pw") String admin_pw);
    //public AdminVO getAuthAdmin(ParamVO admin);
    AdminVO getAdminInfoByNameAndMPhoneNum(@Param("admin_name") String admin_name,@Param("mphone_num") String mphone_num);

    List<AdminVO> getAllAdminList();
    List<AdminVO> getAdminPagingList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);
    List<PagedAdminListVO> getAdminSpecialInfoPagingList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);

    int getAdminCount(@Param("admin_type") int admin_type);//99 모든 유저


    long insertAdminInfo(@Param("adminVo") AdminVO adminVO);

    int updateAdminInfo(AdminVO adminVO);
    int updateAdminInfoForLogout(@Param("admin_id") String admin_id);

    int deleteAdminInfoByID(@Param("admin_id") String admin_id);
    int deleteAdminInfoByIdx(@Param("idx_admin") long idx_admin);

    Integer saveAdminWorkHistory(AdminHistoryVO adminHistoryVo);

    int updateAdminPassword(AdminVO adminVo);

    List<AdminVO> getAdminByAdminId(@Param("admin_id") String admin_id);
}
