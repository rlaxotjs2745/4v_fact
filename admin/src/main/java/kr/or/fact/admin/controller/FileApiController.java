package kr.or.fact.admin.controller;

import kr.or.fact.core.model.DTO.FileInfoVO;
import kr.or.fact.core.service.FileService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/files")
@RestController
public class FileApiController {

    private final FileService fileService;

    @GetMapping("/notice/{idxNotice}")
    public List<FileInfoVO> saveAndPost(@PathVariable("idxNotice") Long idxNotice) {
        return fileService.getFileInfoListByNotice(idxNotice);
    }
}
