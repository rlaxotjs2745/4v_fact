package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserDemoBsPlanFileJoinVO {

    long idx_user_demo_bs_plan_file_join;//	number	32			◯		인덱스	auto increase
    int  join_type;//	number	4		0			파일 연결 타입	0:이용신청서, 1:실증계획서, 2:이용료 산출서, 3:이용계획 승인서, 4:협약 안내서
    long idx_user_demo_bs_plan;//	number	32				◯	사용자 실증계획 연결
    int file_verion;//	number	4		1			파일 버전	기본값 1, 1씩 증가
    int is_last;//	number	4		1				0:최종 아님, 1:최종
    long idx_file_info;//	number	32				◯	파일 인덱스
    Date reg_date;//	date						최초 등록 일시

}
