package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class AdminVO {

    long idx_admin;//	number	32			◯		인덱스	auto increase
    String admin_id;//	varchar2	255					어드민 아이디	이메일 기본, 변경 가능  웹id
    String admin_pw;//	varchar2	255					어드민 패스워드	최소 8자리, 단방향 암호화 서버 생성
    String admin_name;//	varchar2	40					어드민  이름     이름
    int corporate;//	number	4		0			소속	0:진흥원(관리기관), 1:센터, 2:지자체, 99:기타     ??
    String corporate_name;//	varchar2	40					 소속기관 이름        단체명
    String corporate_num;//	varchar2	40					회사 전화번호
    String corporate_fax;
    String corporate_homepage;
    String job_title;//	varchar2	40					 직위
    int auth_status;//	number	4		0			인증 여부	0:인증안함, 1:이메일 인증, 2:휴대폰 점유인증, 3:실명인증, 4:아이핀인증       초기0 첫 로그인 시 비밀번호 변경 유도
    String tel_num;//	varchar2	20					일반전화번호      일반
    String mphone_num;//	varchar2	20					휴대폰번호   휴대폰
    int admin_type;//	number	4		0			어드민 형태	1:user 콘솔 접근 일반(자율,위탁), 2:manager 콘솔 관리 일반(자율,위탁), 8:admin 어드민 관리 일반 16:super 슈퍼관리자(어드민, 콘솔 모든 권한)     ??
    String main_part;// varchar2	255	 담당 업무
    String manage_num;//varchar2	255  관리번호
    int sign_in_type;//	number	4					가입 형태	0:슈퍼 관리자, 1:일반관리자
    String admin_addr; // varchar2 255 주소
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
    String refresh_token;
    boolean is_expired;
//주소, 이메일, 담당업무, 관리번호
}
