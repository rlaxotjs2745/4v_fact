package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class AdminResVO {

    long idx_admin;//	number	32			◯		인덱스	auto increase
    String admin_id;//	varchar2	255					어드민 아이디	이메일 기본, 변경 가능  웹id
    String admin_pw;//	varchar2	255					어드민 패스워드	최소 8자리, 단방향 암호화 서버 생성
    String admin_name;//	varchar2	40					어드민  이름     이름
    int corporate;//	number	4		0			소속	0:진흥원(관리기관), 1:센터, 2:지자체, 99:기타     ??
    String corporate_name;//	varchar2	40					 소속기관 이름        단체명
    String department;//	varchar2	40					부서
    String job_title;//	varchar2	40					직위      직위
    int auth_status;//	number	4		0			인증 여부	0:인증안함, 1:이메일 인증, 2:휴대폰 점유인증, 3:실명인증, 4:아이핀인증       초기0 첫 로그인 시 비밀번호 변경 유도
    String tel_num;//	varchar2	20					일반전화번호      일반
    String mphone_num;//	varchar2	20					휴대폰번호   휴대폰
    String email;//	varchar2	255					이메일     이메일
    int admin_type;//	number	4		0			어드민  형태	0:일반관리자, 1:실증책임자, 2:재배사, 4:관계기관, 512:슈퍼관리자     ??
    long auth_admin_idx;//	number	32				◯	최초 등록 어드민 ???
    int sign_in_type;//	number	4					가입 형태	0:슈퍼 관리자, 1:일반관리자
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
    int page;
    int maxvalue;
//주소, 이메일, 담당업무, 관리번호
}
