package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class UserDemoBsDetailVO {
    long idx_user_demo_bs_detail;//number	32	n		◯		인덱스	auto increase
    long idx_user_demo_bs;//number	32	n			◯	지원사업 상세
    String ceo_rnd_result1;//varchar2	100					대표자의 연구개발 과제, 논문명
    String ceo_rnd_result1_org;//varchar2	40					연구개발 기관
    String ceo_rnd_result1_dur;//varchar2	40					연구개발 기간
    String ceo_rnd_result1_role;//varchar2	40					연구개발 역할
    String ceo_rnd_result1_result;//varchar2	100					연구개발 주요성과
    String ceo_rnd_result2;//varchar2	100					대표자의 연구개발 과제, 논문명
    String ceo_rnd_result2_org;//varchar2	40					연구개발 기관
    String ceo_rnd_result2_dur;//varchar2	40					연구개발 기간
    String ceo_rnd_result2_role;//varchar2	40					연구개발 역할
    String ceo_rnd_result2_result;//varchar2	100					연구개발 주요성과
    String rnd_effort1;//varchar2	200					연구개발추진현황
    int rnd_effort1_type;//number	4					연구개발 타입	0:자체개발, 1:국가과제
    String     rnd_effort1_etc;//varchar2	40					연구개발 비고, 특허, 인증
    String    rnd_effort2;//varchar2	200					연구개발추진현황
    int    rnd_effort2_type;//number	4					연구개발 타입	0:자체개발, 1:국가과제
    String    rnd_effort2_etc;//varchar2	40					연구개발 비고, 특허, 인증
    String    rnd_effort3;//varchar2	200					연구개발추진현황
    int     rnd_effort3_type;//number	4					연구개발 타입	0:자체개발, 1:국가과제
    String rnd_effort3_etc;//varchar2	40					연구개발 비고, 특허, 인증
    String     rnd_effort4;//varchar2	200					연구개발추진현황
    int     rnd_effort4_type;//number	4					연구개발 타입	0:자체개발, 1:국가과제
    String    rnd_effort4_etc;//varchar2	40					연구개발 비고, 특허, 인증
    String    rnd_effort5;//varchar2	200					연구개발추진현황
    int     rnd_effort5_type;//number	4					연구개발 타입	0:자체개발, 1:국가과제
    String     rnd_effort5_etc;//varchar2	40					연구개발 비고, 특허, 인증
    String    rnd_effort6;//varchar2	200					연구개발추진현황
    int    rnd_effort6_type;//number	4					연구개발 타입	0:자체개발, 1:국가과제
    String    rnd_effort6_etc;//varchar2	40					연구개발 비고, 특허, 인증
    String    own_ip1;//varchar2	100					지재권보유 명칭
    String   own_ip1_type;//varchar2	40					지재권 타입
    String    own_ip1_code;//varchar2	40					지재권 출원번호
    String    own_ip1_date;//varchar2	40					지재권 출원날짜
    String   own_ip1_org;//varchar2	40					지재권 담당기관
    String    own_ip1_etc;//varchar2	40					지재권 비고
    String    own_ip2;//varchar2	100					지재권보유 명칭
    String     own_ip2_type;//varchar2	40					지재권 타입
    String     own_ip2_code;//varchar2	40					지재권 출원번호
    String    own_ip2_date;//varchar2	40					지재권 출원날짜
    String     own_ip2_org;//varchar2	40					지재권 담당기관
    String    own_ip2_etc;//varchar2	40					지재권 비고
    String     own_ip3;//varchar2	100					지재권보유 명칭
    String    own_ip3_type;//varchar2	40					지재권 타입
    String    own_ip3_code;//varchar2	40					지재권 출원번호
    String    own_ip3_date;//varchar2	40					지재권 출원날짜
    String    own_ip3_org;//varchar2	40					지재권 담당기관
    String    own_ip3_etc;//varchar2	40					지재권 비고
    String     own_cert1;//varchar2	100					인증보유 명칭
    String     own_cert1_type;//varchar2	40					인증 타입
    String    own_cert1_code;//varchar2	40					인증등록번호
    String    own_cert1_date;//varchar2	40					인증 출원날짜
    String    own_cert2;//varchar2	100					인증보유 명칭
    String     own_cert2_type;//varchar2	40					인증 타입
    String    own_cert2_code;//varchar2	40					인증등록번호
    String     own_cert2_date;//varchar2	40					인증 출원날짜
    String    own_cert3;//varchar2	100					인증보유 명칭
    String    own_cert3_type;//varchar2	40					인증 타입
    String    own_cert3_code;//varchar2	40					인증등록번호
    String     own_cert3_date;//varchar2	40					인증 출원날짜
    String     own_device1;//varchar2	100					보유장비명
    String     own_device1_weight;//varchar2	40					무게
    String     own_device1_size;//varchar2	40					크기(wxdxh)
    String     own_device1_pw;//varchar2	10					사용전원
    String     own_device1_wat;//varchar2	10					소비전력
    String    own_device1_type;//varchar2	10					용도
    int    is_in_own_device1;//number	4					설치여부	0:n, 1:y
    String     own_device2;//varchar2	100					보유장비명
    String     own_device2_weight;//varchar2	40					무게
    String    own_device2_size;//varchar2	40					크기(wxdxh)
    String    own_device2_pw;//varchar2	10					사용전원
    String    own_device2_wat;//varchar2	10					소비전력
    String    own_device2_type;//varchar2	10					용도
    int    is_in_own_device2;//number	4					설치여부	0:n, 1:y
    String    own_device3;//varchar2	100					보유장비명
    String    own_device3_weight;//varchar2	40					무게
    String    own_device3_size;//varchar2	40					크기(wxdxh)
    String    own_device3_pw;//varchar2	10					사용전원
    String    own_device3_wat;//varchar2	10					소비전력
    String    own_device3_type;//varchar2	10					용도
    int    is_in_own_device3;//number	4					설치여부	0:n, 1:y
    String    demo_needs;//varchar2	3000					실증배경, 필요성, 목표
    String    demo_main_point;//varchar2	3000					실증관리 핵심요소
    String    demo_use_plan;//varchar2	3000					실증결과 활용계획
    String    demo_facil_mat;//varchar2	200					실증대상 기자재 시설자재
    String    demo_facil_ict;//varchar2	200					실증대상 ict 기자재
    String    demo_facil_fer;//varchar2	200					실증대상 작물보호제 및 비료
    String    demo_facil_sw;//varchar2	200					실증대상 sw
    String    demo_facil_robot;//varchar2	200					실증대상 로봇
    String    demo_facil_model;//varchar2	200					실증대상 생육모델
    String    demo_paln_gh;//varchar2	3000					실증설계 온실설치
    String    demo_paln_facil;//varchar2	3000					실증설계 기자재 설치
    String    demo_paln_exper;//varchar2	3000					실증설계 실험분석
    String     demo_paln_mng;//varchar2	3000					실증관리
    String    demo_plan_ip;//varchar2	3000					사업계획 지자재, 인증
    String   demo_plan_target;//varchar2	3000					사업계획 국내외 시장
    String    demo_plan_sales;//varchar2	3000					사업계획 판매계획
    String    demo_plan_post;//varchar2	3000					사업계획 향후
    String    in_facil_mat;//varchar2	40					반입기자재 시설자재명칭
    String    in_facil_mat_type;//varchar2	10					반입기자재 용도
    String    in_facil_mat_stnrd;//varchar2	10					반입기자재 단위,규격
    int    in_facil_mat_amount;//number	4					 반입기자재 수량
    int    in_facil_mat_val;//number	4					반입기자재 단가
    int    in_facil_mat_price;//number	10					반입기자재 가격
    String     in_facil_ict;//varchar2	40					ict 반입기자재 시설자재명칭
    String    in_facil_ict_type;//varchar2	10					반입기자재 용도
    String    in_facil_ict_stnrd;//varchar2	10					반입기자재 단위,규격
    int    in_facil_ict_amount;//number	4					 반입기자재 수량
    int    in_facil_ict_val;//number	4					반입기자재 단가
    int    in_facil_ict_price;//number	10					반입기자재 가격
    String     in_facil_fer;//varchar2	40					fer 반입기자재 시설자재명칭
    String    in_facil_fer_type;//varchar2	10					반입기자재 용도
    String    in_facil_fer_stnrd;//varchar2	10					반입기자재 단위,규격
    int    in_facil_fer_amount;//number	4					 반입기자재 수량
    int     in_facil_fer_val;//number	4					반입기자재 단가
    int     in_facil_fer_price;//number	10					반입기자재 가격
    String    in_facil_sw;//varchar2	40					sw 반입기자재 시설자재명칭
    String    in_facil_sw_type;//varchar2	10					반입기자재 용도
    String    in_facil_sw_stnrd;//varchar2	10					반입기자재 단위,규격
    int    in_facil_sw_amount;//number	4					 반입기자재 수량
    int    in_facil_sw_val;//number	4					반입기자재 단가
    int    in_facil_sw_price;//number	10					반입기자재 가격
    String   in_facil_seeding;//varchar2	40					seed 반입기자재 시설자재명칭
    String   in_facil_seedingtype;//varchar2	10					반입기자재 용도
    String    in_facil_seeding_stnrd;//varchar2	10					반입기자재 단위,규격
    int    in_facil_seeding_amount;//number	4					 반입기자재 수량
    int    in_facil_seeding_val;//number	4					반입기자재 단가
    int    in_facil_seeding_price;//number	10					반입기자재 가격
    String     in_facil_robot;//varchar2	40					robot 반입기자재 시설자재명칭
    String     in_facil_robot_type;//varchar2	10					반입기자재 용도
    String     in_facil_robot_stnrd;//varchar2	10					반입기자재 단위,규격
    int in_facil_robot_amount;//number	4					 반입기자재 수량
    int    in_facil_robot_val;//number	4					반입기자재 단가
    int    in_facil_robot_price;//number	10					반입기자재 가격
    String     in_hazd_chemical1;//varchar2	40					반입 유해화학물질 명
    String    in_hazd_chemical1_form;//varchar2	20					반입 유해화학물질 화학식
    String    in_hazd_chemical1_amount;//varchar2	20					반입 유해화학물질 예상사용량
    String    in_hazd_chemical1_case;//varchar2	20					반입 유해화학물질 보관함
    String    in_hazd_chemical1_loc;//varchar2	20					반입 유해화학물질 보관장소
    String    in_hazd_chemical1_etc;//varchar2	40					반입 유해화학물질 특이사항
    String     in_hazd_chemical2;//varchar2	40					반입 유해화학물질 명
    String    in_hazd_chemical2_form;//varchar2	20					반입 유해화학물질 화학식
    String    in_hazd_chemical2_amount;//varchar2	20					반입 유해화학물질 예상사용량
    String    in_hazd_chemical2_case;//varchar2	20					반입 유해화학물질 보관함
    String    in_hazd_chemical2_loc;//varchar2	20					반입 유해화학물질 보관장소
    String    in_hazd_chemical2_etc;//varchar2	40					반입 유해화학물질 특이사항
    String    in_hazd_chemical3;//varchar2	40					반입 유해화학물질 명
    String    in_hazd_chemical3_form;//varchar2	20					반입 유해화학물질 화학식
    String   in_hazd_chemical3_amount;//varchar2	20					반입 유해화학물질 예상사용량
    String   in_hazd_chemical3_case;//varchar2	20					반입 유해화학물질 보관함
    String   in_hazd_chemical3_loc;//varchar2	20					반입 유해화학물질 보관장소
    String    in_hazd_chemical3_etc;//varchar2	40					반입 유해화학물질 특이사항
    String    waste_water_amount;//varchar2	20					폐기물 오염수 발생량
    String    waste_water_case;//varchar2	20					폐기물 오염수보관장소
    String    waste_water_ext_plan;//varchar2	100					폐기물 오염수 방출계획
    String    waste_soil_amount;//varchar2	20					폐기물 토양 발생량
    String    waste_soil_case;//varchar2	20					폐기물 토양 보관장소
    String     waste_soil_ext_plan;//varchar2	100					폐기물 토양 방출계획
    String    facil_pw1;//varchar2	100					소요전력 장비명
    String    facil_pw1_type;//varchar2	20					소요전력 장비 용도
    String    facil_pw1_v;//varchar2	10					소요전력 장비 사용전원
    String    facil_pw1_w;//varchar2	10					소요전력 장비 소비전력
    String    facil_pw2;//varchar2	100					소요전력 장비명
    String     facil_pw2_type;//varchar2	20					소요전력 장비 용도
    String     facil_pw2_v;//varchar2	10					소요전력 장비 사용전원
    String     facil_pw2_w;//varchar2	10					소요전력 장비 소비전력
    String    facil_pw3;//varchar2	100					소요전력 장비명
    String    facil_pw3_type;//varchar2	20					소요전력 장비 용도
    String    facil_pw3_v;//varchar2	10					소요전력 장비 사용전원
    String    facil_pw3_w;//varchar2	10					소요전력 장비 소비전력

    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시

    List<UserBsHumanResourceVO> userBsHumanResourceVOList;
}
