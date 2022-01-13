package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBsReportFileJoinVO {

    long idx_demo_bs_report_file_join;//	number	32			◯		인덱스	auto increase
    long idx_demo_bs_report;//	number	32				◯	지원번호
    int file_type;//	number	4		0			파일 타입	0:발급요청서, 1:실증 성적서
    int file_verion;//	number	4		1			파일 버전	기본값 1, 1씩 증가
    int is_last;//	number	4		1				0:최종 아님, 1:최종
    long idx_file_info;//	number	32				◯	파일정보
    long idx_user;//	number	32				◯	요청자
    long idx_admin;//	number	32				◯	작성자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시

}
