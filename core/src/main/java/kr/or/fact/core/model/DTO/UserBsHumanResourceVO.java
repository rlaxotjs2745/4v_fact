package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserBsHumanResourceVO {
    long idx_user_bs_human_resource;//	number	32
    long idx_user_demo_bs;//	number	32
    int rnd_user_order;//	number	4          순서
    String rnd_user_name;//	varchar2	20      이름
    String rnd_user_role;//	varchar2	20       직위
    String rnd_user_code;//	varchar2	40      과학기술인등록번호
    String rnd_user_birth;//	varchar2	20  생년월일
    String rnd_user_grad;//	varchar2	40      학력,학위
    String rnd_user_col;//	varchar2	40      사용안함
    String rnd_user_school;//	varchar2	40  최종졸업학교
    String rnd_user_col_date;//	varchar2	20  취득연도
    String rnd_user_col_part;//	varchar2	20  연구담당분야
    String rnd_user_6t;//	varchar2	40      6T관련 기술분류
    String rnd_user_result;//	varchar2	100 주요 경력, 연구개발 실적
    Date reg_date;//	date,
    Date last_upd_date;//	date,
}
