package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class AssetReservationItemVO {

    long idx_asset_reservation_item;//	number	32			◯		인덱스	auto increase
    String asset_code;//	varchar2	40					예약 코드
    long idx_asset_reservation;//	number	32				◯	협약번호
    String asset_manage_code;//	VARCHAR2	40				◯	요청회사
    long idx_asset_manage;//	number	32				◯	요청자
    int amount;//	number	10		1			수량
    int reservation_item_status;//	number	4		0			예약 아이템 현황	0:예약 요청, 1:전량 승인, 2:부분 승인, 3:불가
    int not_allowed_code;//	number	4						코드표 참조
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시

}
