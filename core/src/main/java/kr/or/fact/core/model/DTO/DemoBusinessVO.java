package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBusinessVO {

    long idx_demo_business;//	number	32			◯		인덱스	auto increase
    String demo_bs_code;//	varchar2	40					사업번호
    String demo_subject;//	varchar2	100					사업 제목
    String demo_bs_contents;//	varchar2	3000					사업 내용
    String demo_bs_main_type;//	varchar2	40					사업 대분류
    String demo_bs_sub_type;//	varchar2	40					사업 중분류
    String demo_bs_detail_type;//	varchar2	40					사업 소분류
    int demo_bs_status;//	number	4		0			사업 상황	0:임시, 1:설계완료, 2:승인완료, 3:모집중, 4:모집 종료, 5:심사중, 6:심사완료, 7:협약중, 8:협약완료, 9:사업 시작, 10:사업 종료, 11:결산중, 12:결산 완료
    int applicant_count;//	number	10		0			응모자 수
    int applicant_count_limit;//	number	4		1			모집 수
    Date start_date;//	date						사업 시작 일시분초
    Date end_date;//	date						사업 종료 일시분초
    Date recruit_start_date;//	date						모집 시작 일시분초
    Date recruit_end_date;//	date						모집 종료 일시분초
    int recruit_count_limit;//	number	10		99999999			모집 수
    String memo;//	varchar2	1000					메모
    long idx_admin;//	number	32				◯	작성자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시

}
