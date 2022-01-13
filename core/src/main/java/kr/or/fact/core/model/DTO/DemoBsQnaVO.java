package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBsQnaVO {

    long idx_demo_bs_qna;//	number	32			◯		인덱스	auto increase
    int bs_qna_num;//	NUMBER	20		1			상담번호	1시작 1증가
    long demo_bs_qna_parent_idx;//	number	32				◯	최초 문의
    long idx_corp_info;//	number	32				◯	지원회사
    long idx_user;//	number	32				◯	지원번호
    int qna_type;//	number	4					상담 종류	0:사전상담, 99:기타
    int qna_status;//	number	4					상담 상황	0:상담등록, 1:답변완료, 2:해결, 3:상담불가
    String qna_subject;//	varchar2	100					문의 제목
    String qna_contents;//	varchar2	3000					문의 내용
    String answer_contents;//	varchar2	3000					답변내용
    Date answer_date;//	date						답변일
    int is_q_file;//	number	4		0			상담파일 여부	0:파일 없음, 1:파일 있음
    int is_answer;//	number	4		0			답변여부	0:답변전, 1:답변완료
    int is_continue;//	number	4		0			연계상담 여부	0:연계 없음, 1:연계
    int is_parent;//	number	4		1			연계 숫자	0:연계 등록, 1: 최초 등록
    int qna_order;//	number	4		1			연계 순서
    int is_privacy_accept;//	NUMBER	4		1			개인정보 수집 이용동의	0:동의안함, 1:동의
    String memo;//	varchar2	1000					메모
    long idx_admin;//	number	32				◯	답변자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시

}
