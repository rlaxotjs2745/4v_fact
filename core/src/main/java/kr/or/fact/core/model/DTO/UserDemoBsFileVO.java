package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserDemoBsFileVO {
    long idx_user_demo_bs_file_join;//	number	32			◯		인덱스	auto increase
    long idx_user_demo_bs;//	number	32	n			◯	신청 번호
    int file_type;//	number	4		0			파일 타입	0:이용신청서, 1:실증계획서, 2:개인정보 수집 동의서, app5 3:사업자 등록증 사본, app5 4:등기부등본 사본,app5 5:법인 인감증명서,app5 6:사대보험 완납증명,app5 7:2년간 재무제표 혹은 회계감사보고서,app5 8:기타1, 9:기타2, 10기타 3
    int file_verion;//	number	4		1			파일 버전	기본값 1, 1씩 증가
    int is_last;//	number	4		1				0:최종 아님, 1:최종
    long idx_file_info;//	number	32		0		◯	파일정보
    Date reg_date;//	date						최초 등록 일시
}
