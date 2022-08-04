package kr.or.fact.admin.controller;

import kr.or.fact.core.model.DTO.announcements.AnnouncementSaveRequestVO;
import kr.or.fact.core.service.BsAnnouncementService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/announcements")
@RestController
public class BsAnnouncementApiController {

    private final BsAnnouncementService bsAnnouncementService;

    @PostMapping("/save-post")
    public void saveAndPost(@RequestBody AnnouncementSaveRequestVO request) {

    }
}
