package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class CorpManagerVO {

    long idx_corp_manager;//	number	32			◯		인덱스
    String manager_name_kor;//	varchar2	40					법인 관리자 이름
    int corp_manager_type;//	NUMBER	4		0			담당자 타입	0:법인 메인 담당자, 1: 서브 담당자, 99:일반 담당
    String department;//	varchar2	40					부서
    String job_title;//	varchar2	40					직위
    String tel_num;//	varchar2	20					본사 전화번호
    String mphone_num;//	varchar2	20					이동전화 번호
    String email;//	varchar2	320					이메일
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
    long idx_corp_info;//	number	32				◯	법인 연결
    long idx_user;//	number	32				◯	등록된 유저

}
