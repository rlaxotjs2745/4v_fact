package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class FormFileInfoVO {

    int row_num;

    long idx_form_file_info;//	number	32			◯		인덱스	auto increase
    String subject;//	varchar2	100		0			양식 제목
    String usage_detail;//	varchar2	300					양식 사용 용도 내용
    long idx_admin;//	number	32					등록자	기본값 1, 1씩 증가
    int order_num;//	number	4					중요도 순서
    long idx_file_info;//	number	32				◯	파일 인덱스
    Date reg_date;//	date						최초 등록 일시

    String file_name;//	varchar2	256					파일 이름
    int file_type;//	number	4		0			파일 타입	0:해당없음, 1:실증계획, 2:실증보고, …
    //int file_status;//	number	4		0			파일 상태	0:정상, 1:사용불가
    //String mime_type;//	varchar2	100					마임 타입
    //int encoding;//	number	4		0			파일 인코딩 종류	0:해당없음, 1:utf-8, …
    String extention;//	varchar2	20					확장자
    //int file_secure_type;//	number	4		0			파일 보안 종류	0:일반, 1:보안
    String file_path;//	varchar2	256					파일 경로
    long file_size;//	number	32					파일 크기
    //int checksum;//	number	20					파일 무결성 체크 첵섬

  }
