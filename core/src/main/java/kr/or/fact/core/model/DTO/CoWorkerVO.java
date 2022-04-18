package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class CoWorkerVO {
    long idx_co_worker;//	number(32),
    int co_worker_oder;//	number	4
    String coworker_name;// varchar2(40),
    String devision;//	varchar2(60),
    String department;//	varchar2(60),부서
    String department_sub;//	varchar2(60),
    String job_title;//	varchar2(60),직위
    String job_role;//	varchar2(60), 담당업무
    String tel_num;//	varchar2(60),
    String mphone_num;//	varchar2(20),
    String email;//	varchar2(255),
    int is_show;//	number(4) default 1,
    Date reg_date;//	date,
}
