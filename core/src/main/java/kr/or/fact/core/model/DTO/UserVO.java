package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserVO {

    int row_num;
    //int row_num;
    long idx_user;//number	32			◯		인덱스	auto increase
    String user_id;//	varchar2	255					유저 아이디	이메일 기본, 변경 가능
    String user_pw;//	varchar2	255					유저 패스워드	최소 8자리, 단방향 암호화
    String user_name;//	varchar2	40					유저 이름
    String addr;//	varchar2	255					주소
    String tel_num;//	varchar2	20					일반전화번호
    String mphone_num;//	varchar2	20					휴대폰번호
    String email;//	varchar2	356					이메일
    int user_type;//	number	4		0			유저 형태	0:일반회원, 1:휴면회원, 2:탈퇴회원, 3:임의탈퇴
    String ban_memo;//	varchar2	1000					탈퇴, 직권정지 이유
    int is_service_agree;//	number	4		1			이용약관 동의	0:동의안함, 1:동의
    int service_agree_ver;//	number	4		1			동의한 이용약관 버전
    int is_privacy_agree;//	number	4		1			개인정보 수집 및 이용 동의	0:동의안함, 1:동의
    int privacy_agree_ver;//	number	4		1			동의한 개인정보 수집 및 이용 동의 버전
    int is_third_party_agree;//	number	4		1			제3자 개인정보 처리 위탁에 관한 동의	0:동의안함, 1:동의
    int third_party_agree_ver;//	number	4		1			제3자 개인정보 처리 위탁에 관한 동의 버전
    int is_maketing_agree;//	number	4		1			마케팅 , 홍보의 수집  및 이용동의	0:동의안함, 1:동의
    int maketing_agree_ver;//	number	4		1			마케팅 , 홍보의 수집  및 이용동의 버전
    int auth_status;//	number	4		0			인증 여부	0:인증안함, 1:이메일 인증, 2:휴대폰 점유인증, 3:실명인증, 4:아이핀인증
    int is_applicant;//	number	4		0			지원사업 신청자	0:신청자 아님, 1:신청자
    int is_corporate_member;//	number	4		0			기업회원 여부	0:일반회원, 1:기업회원
    long idx_corp_info;//	number	32					기업회원
    int sign_in_type;//	number	4		0			가입 형태	0:웹가입, 1:모바일웹가입, 2:관리기관(센터) 가입, 3:재단 가입, 4:관계기관 가입(지자체)
    int is_sms_agree;//	number	4		0			홍보성 sms 수신여부	0:동의안함, 1:동의
    int is_email_agree;//	number	4		0			홍보성email 성 수신여부	0:동의안함, 1:동의
    int is_admin;//number                           관리자 연결계정 여부	0:아니오, 1:예
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
    int maxvalue;
    int page;
    String corporate_name;
    String job_title;

}
