package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBsReportVO {

    long idx_demo_bs_report;//	number	32			◯		인덱스	auto increase
    long idx_user_demo_bs;//	number	32				◯	사업실증
    long idx_corp_info;//	number	32				◯	지원회사
    long idx_user;//	number	32				◯	요청자
    String demo_bs_report_code;//	varchar2	40					시험성적서 코드
    int demo_bs_report_status;//	number	4		0			시험성정서 상황	0:발급요청, 1:발급 완료, 99:반려
    int is_report_req_file;//	number	4		0			발급신청서파일 여부	0:파일 없음, 1:파일 있음
    int is_report_file;//	number	4		0			시험성적서 파일	0:파일 없음, 1:파일 있음
    String memo;//	varchar2	1000					메모
    long idx_admin;//	number	32				◯	발행자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시

}
