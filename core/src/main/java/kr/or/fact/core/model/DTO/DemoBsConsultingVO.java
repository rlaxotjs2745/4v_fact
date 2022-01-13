package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBsConsultingVO {

    long idx_demo_bs_consulting;//	number	32			◯		인덱스	auto increase
    int consulting_num;//	NUMBER	20					상담번호	1시작 1증가
    long idx_demo_bs_applicaion;//	number	32				◯	지원번호
    long idx_demo_business;//	number	32				◯	지원사업
    long idx_corp_info;//	number	32				◯	지원회사
    long idx_user;//	NUMBER	32				◯	상담 등록자
    int consulting_type;//	number	4		0			상담 종류	0:지원 상담, 1:평가 상담, 2:사업계획 상담, 3:협약 상담, 4:실증수행상담, 5:정산 상담, 99:기타
    String consult_type_etc_str;//	varchar2	100					기타 상담타입 내역
    int consulting_status;//	number	4		0			상담 상황	0:상담요청등록, 1:상담자 지정, 2:상담 계획 보냄, 3: 상담계획 변경, 4:상담완료, 99:상담불가
    String consulting_goal;//	varchar2	100					상담 목표
    Date req_date;//	date						요청 등록일
    Date resulvation_date;//	date						상담 예정일
    Date consulting_date;//	date						상담일
    long consultant_idx;//	number	32				◯	상담자
    int is_consulting_file;//	number	4		0			상담파일 여부	0:파일 없음, 1:파일 있음
    int is_result_file;//	number	4		0			종합의견서 파일 여부	0:파일 없음, 1:파일 있음
    int is_consultant;//	number	4		0			책임자 지정 여부	0:지정 없음, 1:지정
    int consult_answer_type;//	NUMBER	4		0			대면 상담 형식	0:전화, 1:이메일, 2;직접만남, 99:기타
    int is_share;//	number	4		0			고객과 공유 여부	0:공유안함, 1:공유
    int is_privacy_accept;//	NUMBER	4		1			개인정보 수집 이용동의	0:동의안함, 1:동의
    String memo;//	varchar2	1000					메모
    long idx_admin;//	number	32				◯	작성자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시

}
