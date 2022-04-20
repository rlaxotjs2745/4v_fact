package kr.or.fact.core.service.impl;

import kr.or.fact.core.config.FACTConfig;
import kr.or.fact.core.service.JusoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("jusoService")
public class JusoServiceImpl implements JusoService {
    String searchServerUrl;

    @Autowired
    public JusoServiceImpl(FACTConfig factConfig){
        this.searchServerUrl = factConfig.getSearchSeverUrl();
    }
    @Override
    public String getSearchServerUrl(){
        return this.searchServerUrl;
    }
}
