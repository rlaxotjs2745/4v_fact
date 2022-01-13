package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBsMsgVO {

    long idx_demo_bs_msg;//	number	32			◯		인덱스	auto increase
    int msg_type;//	number	4		1			메세지 타입	0:공통, 1:유저, 2:사업관리자, 3:사업담당자(실증책임자), 4:재배사, 99:기타
    String msg_contents;//	varchar2	400
    int msg_code;//	number	4		0			메세지 나타내기 위한 디자인코드	0:보통, 1:긍정강조(초록),2:보완강조(형광),3:부정강조(빨강), 99:기타
    int need_upload_file;//	number	4		0			서류 등록이 필요한지	0:필요없음, 1:필요함
    int upload_file_type;//	number	4		0			파일 타입(중요함)	0:신청 단계보완, 1:평가단계 보완, 2:협약단계 보완, 3:실증계획단계 보완, 4:실증진행단계, 5:실증완료를 위해, 99:기타
    int is_file;//	number	4					서류 다운로드가 필요한지
    int down_file_type;//	number	4		0			다운로드 파일 어느상황인지	0:신청 단계보완, 1:평가단계 보완, 2:협약단계 보완, 3:실증계획단계 보완, 4:실증진행단계, 5:실증완료를 위해, 99:기타
    long idx_file;//	number	32		0		◯	파일 연결
    int is_cur;//	number	4		0			유저 실증사업 당 메세지	0:최신 아님, 1:최신
    long idx_user_demo_bs;//	number	32		0		◯	유저 실증사업
    long idx_admin;//	number	32				◯	등록자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시
}
