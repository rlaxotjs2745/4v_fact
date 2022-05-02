package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.text.SimpleDateFormat;
import java.util.Date;

@Data
public class BsAnnouncementVO {

    long idx_bs_announcement;//	number	32			◯		인덱스	auto increase
    String bs_announcement_code;//	varchar2	40					문서번호
    int announce_num;//
    String subject;//	varchar2	100					공고 제목
    String announce_contents;//	clob						공고 내용	html 저장, 저장시 '<','>' 치환함
    int bs_status;//	NUMBER	4		0			사업공고 상태	0:대기, 1:신청중, 2:신청 마감, 3:사업 종료, 99:기타
    int is_file;
    int is_new;//	number;	4		0			신규등록여부	0:신규아님 1:신규
    int is_main_page;//	number	4					메인 노출 여부	0:해당없음, 1:해당
    int is_important;//	number	4		0			공지사항 제일 처음부분에 고정	0:고정안함 1:고정
    int is_show;//	number	4		0			노출여부	0:노출안함 1:노출
    int view_count;//	number	20					조회수
    int announce_status;//	number	4		0			공지사항 게시 프로세스 상태	0:임시저장, 1:게시전 수동게시, 2:게시전 자동게시, 3:게시중, 4:게시 일지 중지, 5:게시 기간 종료

    Date posting_start_date;//	date						게시 시작 일시분초
    Date posting_end_date;//	date						게시 종료 일시분초
    int doc_version;//	number	4		1			공고 버전	default:1, increase 1
    String memo;//	varchar2	1000					메모	공고 관련 내용
    long search_tag;//	number	32					검색 태그
    String author;//	varchar2	20					작성자 이름	관리자와 등록자를 다르게 하기 때문
    long idx_demo_business;//	number	32				◯	사업 연결	idx_demo_business index pk
    long confirm_admin_idx;//	number	32				◯	허가자
    long idx_admin;//	number	32				◯	입력자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시

    public String getDateString(Date d){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return format.format(d);
    }

}
