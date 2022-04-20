package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.WebFrontMapper;
import kr.or.fact.core.service.WebFrontService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("webFrontService")
public class WebFrontServiceImpl implements WebFrontService {

    private final WebFrontMapper webFrontMapper;

    @Autowired
    public WebFrontServiceImpl(WebFrontMapper webFrontMapper){ this.webFrontMapper = webFrontMapper;}

}
