package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class AdminAnnounceFilterVO {
    int announce_tot;
    int status_on_count;
    int wait_count;
    int pause_count;
}
