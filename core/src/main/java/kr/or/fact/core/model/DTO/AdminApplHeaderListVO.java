package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class AdminApplHeaderListVO {
    long idx_demo_bs_applicaion;
    long idx_user_demo_bs;
    long idx_demo_business;
    long idx_corp_info;
    long idx_user;
    String man_name;//	VARCHAR2	100					담당자 이름
    String corp_name;//회사이름
    String ceo_name;//	VARCHAR2	100					대표자 이름
    String ceo_mnumber;//	VARCHAR2	20					대표자 모바일번호
    int applicant_status; //0:지원, 1:서류 검토 중, 2:서류 보완요청,  3:서류검토완료, 4:서류 부적격,
    int is_file;
    int is_improve;//보완요청 상태 0:해당없음, 1:보완파일 요청 전송, 2:보완파일 수령
    int is_improve_file;
    Date applicaion_reg_date;
    String admin_name;//	VARCHAR2	100					상담자 이름
    long idx_admin;
    int user_demobs_status;
}
