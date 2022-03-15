package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.NoticeVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface NoticeMapper {
    int getMainNoticeCount();
    int getWebpageNoticeCount();
    List<NoticeVO> getNoticeList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);
    List<NoticeVO> getMainNoticeList();
}
