package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class AssetReservationVO {

    long idx_asset_reservation;//	number	32			◯		인덱스	auto increase
    String asset_reservaion_code;//	varchar2	40					예약 코드
    long idx_user_demo_bs;//	number	32				◯	협약번호
    long idx_corp_info;//	number	32				◯	요청회사
    long idx_user;//	number	32				◯	요청자
    long idx_admin;//	number	32				◯	승인자
    int reservaion_status;//	number	4		0				0:예약 등록, 1:사용 승인, 2:사용 보류, 3:부분 승인, 4:사용 거절, 99:사용권한 없음
    String asset_usage;//	varchar2	1000					이용 용도
    int is_end;//	number	4		0				0:사용 완료 아님, 1: 사용 완료
    int is_return;//	number	4		0				0:회수 안함, 1: 회수 완료, 99: 문제 있음
    Date use_start_date;//	date						사용 시작 일시
    Date use_end_date;//	date						사용 종료 일시
    Date permission_date;//	date						사용 승인일
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
    int maxvalue;
    int page;
    List<String> assetList;
}
