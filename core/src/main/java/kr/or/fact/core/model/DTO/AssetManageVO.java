package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;


@Data
public class AssetManageVO {

    long idx_asset_manage;//	number	32			◯		인덱스	auto increase
    String asset_manage_code;//	varchar2	40					관리 코드
    long idx_asset_reservation;//	number	32				◯	사용 예약 번호
    long idx_corp_info;//	number	32				◯	지원회사
    long idx_user;//	number	32				◯	신청 평가
    int manage_status;//	number	4		0				0:사용 등록, 1:사용 대기, 2:사용 중, 3:사용 종료이지만 회수 안됨, 4:회수 완료, 5:망실 등록 및 회수 완료, 6:파손 등록 및 회수 완료, 99:도난 및 분실
    int amount;//	number	10		1			수량
    String memo;//	varchar2	1000					메모
    long idx_admin;//	number	32				◯	승인검토자
    long idx_update_admin;//	number	32				◯	회수 완료자
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시

}
