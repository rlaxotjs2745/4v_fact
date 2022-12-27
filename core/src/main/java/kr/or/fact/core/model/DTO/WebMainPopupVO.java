package kr.or.fact.core.model.DTO;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

@Data
public class WebMainPopupVO {
    long idx_popup_img; // 인덱스 NUMBER(32)
    String subject; // 제목 VARCHAR2(100)
    int contents_type; // 타입 1:팝업 2:배너
    String popup_url; // url VARCHAR2(1000)
    String startDate; // 게시시작일
    String endDate; // 게시종료일
    int is_show; // (팝업 1:사용 9:미사용, 99:삭제) (배너 1:첫번째 2:두번째 3:세번째 9:미사용 99:삭제)
    Date reg_date; // 등록일
    long idx_admin; // 유저인덱스
    Date last_upd_date; // 마지막 수정일
    long idx_file_info;
    MultipartFile file1;

    String admin_name;
    String file_path;
    String file_name;
}
