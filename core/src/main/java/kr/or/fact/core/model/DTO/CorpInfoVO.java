package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class CorpInfoVO {

    long idx_corp_info;//	number	32			◯		인덱스	auto increase
    String corp_name_kor;//	varchar2	40					법인 이름
    String company_num;//	varchar2	20					사업자등록번호
    String  corp_reg_num;//	varchar2	20					법인등록번호
    String tel_num;//	varchar2	20					본사 전화번호
    String fax_num;//	varchar2	20					fax 번호
    String email;//	varchar2	320					대표 이메일
    String homepage;//	varchar2	255					회사 홈페이지
    String corp_addr;//	varchar2	200					본사 소재지
    String corp_addr2;//	VARCHAR2	200					본사 소재지 상세
    int is_other_addr;//	number	4		0			공장 혹은 농장 소유 여부	0:없음, 1:공장, 2:농장, 99:기타
    String other_addr;//	varchar2	200					공장 혹은 농장 주소
    long sales_in_prev;//	number	38					전년도 매출액
    int ca_ratio;//	number	4					자기자본비율(capital adequacy ratio)
    int emploee_num;//	number						직원수
    String bs_sector;//	varchar2	100					업태, 종목(businness sectors)
    String product;//	varchar2	100					주생산품목
    int corp_type;//	number	4		1			법인 종류	0:미등록기업(설립전), 1:일반기업, 2: 농업진흥기관, 3:선도기업, 4:외국연구기관, 5:특정연구기관, 6:정부출연연구기관, 7:스마트팜 관련 기업부설연구소 보유기업, 8: 대학교, 99:기타 단체
    int is_benture;//	NUMBER	4		0			벤처 여부	0:해당없음, 1:창업한지 7년 이하의 창업벤처기업
    String bs_plan;//	varchar2	100					개발예정품목(기술)
    int is_applicant;//	number	4					콘솔 사용 여부	0:콘솔사용 안함, 1:콘솔사용
    int demo_facility_type;//	number	4		0			이용신청 시설	0:해당없음, 1:온실, 2:r&d연구실, 4:스타트업 사무실, 512: 기타
    String demo_facility_etc;//	varchar2	20					이용신청 시설 기타 내용
    Date founding_date;//	date						설립일
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
    int is_saved;//

    String ceo_name_kor;
    String ceo_addr;
    String ceo_tel_num;
    String ceo_mphone_num;
    String ceo_email;

}
