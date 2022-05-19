package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserSecretCodeVO {
    long idx_user_secret_code;//	number	32			◯		인덱스	auto increase
    long idx_user;//	number	32		0		◯	유저
    int secret_code_type;//	number	4		0			인증코드 타입	0:회원가입, 1:비밀번호 변경, 2:인증, 99:기타
    String secret_code;//	varchar2	16					인증코드
    Date expire_date;//	date						등록 일시
    int is_confirm;//	number	4		0			확인 여부	0:확인 안함, 1: 확인함
    int is_use;//	NUMBER	4		0			인증코드로 변경 여부	0:사용 안함, 1: 사용함
    Date reg_date;//	date						등록 일시
}
