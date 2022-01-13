package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class CorpCeoVO {

    long idx_corp_ceo;//	number	32			◯		인덱스
    String ceo_name_kor;//	varchar2	20					법인 대표 이름
    String addr;//	varchar2	200					주소지
    String tel_num;//	varchar2	20					회사 전화번호
    String mphone_num;//	varchar2	20					이동전화 번호
    String email;//	varchar2	320					이메일
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
    long idx_corp_info;//	number	32				◯	법인 연결
}
