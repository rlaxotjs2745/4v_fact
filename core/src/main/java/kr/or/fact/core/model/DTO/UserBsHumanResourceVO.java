package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserBsHumanResourceVO {
    long idx_user_bs_human_resource;//	number	32
    long idx_user_demo_bs;//	number	32
    int rnd_user_order;//	number	4
    String rnd_user_name;//	varchar2	20
    String rnd_user_role;//	varchar2	20
    String rnd_user_code;//	varchar2	40
    String rnd_user_birth;//	varchar2	20
    String rnd_user_grad;//	varchar2	40
    String rnd_user_col;//	varchar2	40
    String rnd_user_school;//	varchar2	40
    String rnd_user_col_date;//	varchar2	20
    String rnd_user_col_part;//	varchar2	20
    String rnd_user_6t;//	varchar2	40
    String rnd_user_result;//	varchar2	100
    Date reg_date;//	date,
    Date last_upd_date;//	date,
}
