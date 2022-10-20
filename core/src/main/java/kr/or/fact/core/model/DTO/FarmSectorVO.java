package kr.or.fact.core.model.DTO;

import java.util.Date;

public class FarmSectorVO {
    long idx_farm_sector;//	number	32			◯		인덱스	auto increase
    long idx_user_demobs;//	varchar2	100					구역 이용 정보	푸터 담당자 이름( 부서)
    int sector_status;//	number	4		0			홈페이지 정보 담당자 연락처	연락처(내선번호)
    int is_current;//	number	4		0			현재 이용 유무	0:이용중이 아님, 1:이용 중
    String corp_name;//	varchar2	100					회사이름
    String corp_num;//	varchar2	20					사업자등록번호
    String ceo_name;//	varchar2	100					대표자 이름
    int user_demo_type;//	number	4					실증 주체	1:자율, 2:위탁
    int user_demo_facility;//	number	4		1			실증 시설	1:단동, 2:연동, 4:육묘장, 8:노지, 16:단동유리, 32:연동유리, 64:식물공장
    int user_demo_way;//	number	4		0			실증 방법	1: 단순, 2:비교
    int user_demo_repeat;//	number	4		0			실증횟수	1:반복 없음, 2:반복실증
    int user_demo_repeat_count;//	number	4		0			실증횟수
    int user_demo_goal;//	number	4		0			실증 목표	1::성능확인, 2:자체평가
    int user_demo_option;//	number	4		0			실증 조건	1: 일반환경, 2:특수환경
    String user_demo_crops;//	varchar2	100					실증작물
    int culture_soil;//	number	4		0			생육토양	1: 토경재배, 2:수경재배, 4:고형배지재배
    int demo_type;//	number	4		0			실증 대상	0:해당없음, 1:시설자재, 2:ict기자재, 4:작물보호제/비료, 8:스마트팜sw, 16:생육모델, 32:로봇, 512:기타
    int user_demo_is_crops;//	number	4		1			실증작물 여부	0:해당없음 1:비작물실증, 2: 작물대상실증
    Date demo_start_date;//	date						입주 시작 날짜
    Date demo_end_date;//	date						입주 종료 날짜
    Date farming_start_date;//	date						경작시작
    Date farming_end_date;//	date						경작종료
    int farming_repeat;//	number	4					경작주기
    int guyok;//            number(10,4)        구역정보
    Date reg_date;//	date						등록일
    Date last_upd_date;//	date						마지막 업데이트
}
