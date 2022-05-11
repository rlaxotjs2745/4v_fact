package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class ParamVisitReqVO {
    long idx_visit_req;
    long idx_user;
    int visit_req_list_page;
}
