package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class AssetVO {

    long idx_asset;//	number	32			◯		인덱스	auto increase
    String asset_code;//	varchar2	40					자산 코드
    int asset_main_category_code;//	number	4					자산 대분류	code 표 참조
    int asset_sub_category_code;//	number	4					자산 중분류	code 표 참조
    int asset_detail_category_code;//	number	4					자산 상세분류	code 표 참조
    String asset_name;//	varchar2	100
    int asset_status;//	number	4		0				0:신규 등록, 1:예약 가능, 2:사용중, 3:파손수리 중, 4:폐기, 99:분실
    int is_asset_photo_file;//	number	4					자산 사진 여부	0:파일 없음, 1:파일 있음
    String asset_manufacture;//	varchar2	100					제조사
    String asset_brand;//	varchar2	100					브랜드
    String asset_model_name;//	varchar2	100					모델명
    String asset_pid;//	varchar2	100					생산번호
    String asset_manager_name;//	varchar2	20					담장자 이름
    String asset_loc;//	varchar2	100					보관위치
    String asset_spec;//	varchar2	100					규격
    String representative_use;//	varchar2	100					대표 사용처
    String memo;//	varchar2	1000					메모
    long idx_admin;//	number	32				◯	작성자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
    int maxvalue;
    int page;
}
