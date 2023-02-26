package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class ConsoleNoticeVO {
    long idx_console_notice;//	number	32			◯		인덱스	auto increase
    String console_notice_code;//	varchar2	100					발행 코드	서브 타이틀 역할도 함
    int console_notice_num;//	number	20					노티스 넘버링
    String subject;//	varchar2;//	100					공지사항 제목
    String notice_contents;//	clob						공지사항 내용
    int is_file;//	number;//	4		0			파일 포함여부	0:포함안함 1:포함
    int is_new;//	number	4		0			신규등록여부	0:신규아님 1:신규
    int is_important;//	number	4		0			공지사항 제일 처음부분에 고정	0:고정안함 1:고정
    int view_count;//	number	20					조회수
    int notice_status;//	number	4		0			공지사항 게시 프로세스 상태	0:저장, 1:공지함, 2:수정 공지, 3:공지 종료, 99:기타
    Date posting_start_date;//	date						게시 시작 일시분초
    Date posting_end_date;//	date						게시 종료 일시분초
    int doc_version;//	number	4		1			공지 버전	default:1, increase 1
    String memo;//	varchar2	1000					메모	공고 관련 내용
    String search_tag;//	VARCHAR2	200					검색 태그
    String author;//	varchar2	40					게시자	게시자 이름
    long idx_admin;//	number	32				◯	최초 등록 어드민
    int notice_type;//	number	4				◯	공지사항 종류
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
}
