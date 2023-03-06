package kr.or.fact.console.scheduler;

import kr.or.fact.core.service.EnvDataService;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class EnvDataMakeScheduler {

    @Resource(name="envDataService")
    EnvDataService envDataService;

    @Scheduled(fixedDelay = 60000)
    public void firstTask() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Date now = new Date();
        String strDate = sdf.format(now);
        System.out.println("현재시간: " + strDate);
    }

    @Async
    @Scheduled(fixedDelay=60000)
    public void insertEnvRecentDataToFarmTable() throws ParseException {

        /*List<FarmVO> farmVOList = envDataService.getGuyokDataFromEnvData();
        for (FarmVO farm:farmVOList
             ) {
            farm.makeFarmData();
            envDataService.updateGuyokData(farm);
        }*/

    }
}
