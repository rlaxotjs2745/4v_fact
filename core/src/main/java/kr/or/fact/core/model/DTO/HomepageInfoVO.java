package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class HomepageInfoVO {
    long idx_homepage_info;//	number	32			◯		인덱스	auto increase
    String homepage_admin;//	varchar2	100					홈페이지 정보 담당자	푸터 담당자 이름( 부서)
    String homepage_admin_pnum;//	varchar2	40					홈페이지 정보 담당자 연락처	연락처(내선번호)
    String email;//varchar2 이메일
    Date reg_date;//	date
}
