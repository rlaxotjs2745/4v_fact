package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBSApplicationVO {

    long idx_demo_bs_applicaion;//	number	32			◯		인덱스	auto increase
    String demo_bs_applicaion_code;//	varchar2	40					지원번호
    long idx_demo_business;//	number	32				◯	지원사업
    long idx_user;//최초 등록자, 개인도 신청 가능함
    long idx_corp_info;//	number	32				◯	지원회사, 회사 정보는 어드민이 문서 확인 후 연결
    long idx_user_demo_bs;//	NUMBER	32
    int applicant_status;//	number	4		0			지원 상황	0:지원, 1:서류 검토 중, 2:서류 보완요청,  3:서류검토완료, 4:서류 부적격, 10:심사 중 11:심사통과, 12:심사보류, 13:심사 부적격, 20:이의신청, 21:이의 검토중, 22:이의 기각, 23:이의 인용, 30:협약중, 31:협약보완요청, 32:협약완료, 33:협약보류, 34:협약 실패,  40:사업 시작, 50:사업 종료, 60:결산중, 61:결산 완료, 99:최종 탈락
    int demo_plan_type;//	number	4		0			실증 주체	0:기본, 1:자율, 2:위탁, 1028:기타
    int is_file;//	number	4		0			파일 포함 여부	0:파일 없음, 1:파일 있음
    int is_improve;//	number	4		0			보완 여부	0:필요 없음, 1:보완필요
    int is_improve_file;//	number	4		0			보완 파일 상태	0:해당없음, 1:보완파일 요청 전송, 2:보완파일 수령
    Date applicaion_reg_date;//	date						등록 일시분초
    int improve_recomm_date;//	date						보완요청 일시분초
    String memo;//	varchar2	1000					메모
    long idx_admin;//	number	32				◯	작성자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시

}
