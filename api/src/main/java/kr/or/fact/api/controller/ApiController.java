package kr.or.fact.api.controller;

import kr.or.fact.api.model.DTO.*;
import kr.or.fact.api.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@RequestMapping("/V1")
@Controller
public class ApiController {
    @Autowired
    public ApiService  apiService;

    @RequestMapping(value = "/actuator_greenhouse_complex_gimje", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertActuatorGreenhouseComplexGimje(@RequestBody ActuatorGreenhouseComplexGimjeVO actuatorGreenhouseComplexGimjeVO){
        ResultVO result = new ResultVO();
        if(     actuatorGreenhouseComplexGimjeVO != null &&
                actuatorGreenhouseComplexGimjeVO.getDaqtime() != null &&
                actuatorGreenhouseComplexGimjeVO.getIncurtain() != 0 &&
                actuatorGreenhouseComplexGimjeVO.getOutcurtain() != 0 &&
                actuatorGreenhouseComplexGimjeVO.getRoofwindow_l1() != 0 &&
                actuatorGreenhouseComplexGimjeVO.getRoofwindow_l2() != 0 &&
                actuatorGreenhouseComplexGimjeVO.getRoofwindow_l3() != 0 &&
                actuatorGreenhouseComplexGimjeVO.getRoofwindow_r1() != 0 &&
                actuatorGreenhouseComplexGimjeVO.getRoofwindow_r2() != 0 &&
                actuatorGreenhouseComplexGimjeVO.getRoofwindow_r3() != 0
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = actuatorGreenhouseComplexGimjeVO.getUsername();
        String key = actuatorGreenhouseComplexGimjeVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertActuatorGreenhouseComplexGimje(actuatorGreenhouseComplexGimjeVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }

    @RequestMapping(value = "/actuator_greenhouse_complex_sangju", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertActuatorGreenhouseComplexSangju(@RequestBody ActuatorGreenhouseComplexSangjuVO actuatorGreenhouseComplexSangjuVO){
        ResultVO result = new ResultVO();
        if(actuatorGreenhouseComplexSangjuVO!=null &&
                actuatorGreenhouseComplexSangjuVO.getDaqtime()!=null &&
                actuatorGreenhouseComplexSangjuVO.getIncurtain()!=0 &&
                actuatorGreenhouseComplexSangjuVO.getOutcurtain()!=0 &&
                actuatorGreenhouseComplexSangjuVO.getRoofwindow_l()!=0 &&
                actuatorGreenhouseComplexSangjuVO.getRoofwindow_r()!=0
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = actuatorGreenhouseComplexSangjuVO.getUsername();
        String key = actuatorGreenhouseComplexSangjuVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertActuatorGreenhouseComplexSangju(actuatorGreenhouseComplexSangjuVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }


    @RequestMapping(value = "/actuator_greenhouse_glass", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertActuatorGreenhouseGlass(@RequestBody ActuatorGreenhouseGlassVO actuatorGreenhouseGlassVO){
        ResultVO result = new ResultVO();
        if( actuatorGreenhouseGlassVO!=null &&
                actuatorGreenhouseGlassVO.getDaqtime()!=null &&
                actuatorGreenhouseGlassVO.getIncurtain()!=0 &&
                actuatorGreenhouseGlassVO.getOutcurtain()!=0 &&
                actuatorGreenhouseGlassVO.getRoofwindow_l()!=0 &&
                actuatorGreenhouseGlassVO.getRoofwindow_r()!=0
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = actuatorGreenhouseGlassVO.getUsername();
        String key = actuatorGreenhouseGlassVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertActuatorGreenhouseGlass(actuatorGreenhouseGlassVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value ="/actuator_greenhouse_single_gimje" , method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertActuatorGreenhouseSingleGimje(@RequestBody ActuatorGreenhouseSingleGimjeVO actuatorGreenhouseSingleGimjeVO){
        ResultVO result = new ResultVO();
        if( actuatorGreenhouseSingleGimjeVO != null &&
                actuatorGreenhouseSingleGimjeVO.getDaqtime() != null &&
                actuatorGreenhouseSingleGimjeVO.getCurtain_l() != 0 &&
                actuatorGreenhouseSingleGimjeVO.getCurtain_r() != 0 &&
                actuatorGreenhouseSingleGimjeVO.getInsidewindow_l() != 0 &&
                actuatorGreenhouseSingleGimjeVO.getInsidewindow_r() != 0 &&
                actuatorGreenhouseSingleGimjeVO.getOutsidewindow_l() != 0 &&
                actuatorGreenhouseSingleGimjeVO.getOutsidewindow_r() != 0 &&
                actuatorGreenhouseSingleGimjeVO.getSidescreen_l() != 0 &&
                actuatorGreenhouseSingleGimjeVO.getSidescreen_r() != 0
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = actuatorGreenhouseSingleGimjeVO.getUsername();
        String key = actuatorGreenhouseSingleGimjeVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertActuatorGreenhouseSingleGimje(actuatorGreenhouseSingleGimjeVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value ="/actuator_greenhouse_single_sangju" , method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertActuatorGreenhouseSingleSangju(@RequestBody ActuatorGreenhouseSingleSangjuVO actuatorGreenhouseSingleSangjuVO){
        ResultVO result = new ResultVO();
        if( actuatorGreenhouseSingleSangjuVO != null &&
                actuatorGreenhouseSingleSangjuVO.getDaqtime() != null &&
                actuatorGreenhouseSingleSangjuVO.getIncurtain() != 0 &&
                actuatorGreenhouseSingleSangjuVO.getOutcurtain() != 0 &&
                actuatorGreenhouseSingleSangjuVO.getRoofwindow_l() != 0 &&
                actuatorGreenhouseSingleSangjuVO.getRoofwindow_r() != 0
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = actuatorGreenhouseSingleSangjuVO.getUsername();
        String key = actuatorGreenhouseSingleSangjuVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertActuatorGreenhouseSingleSangju(actuatorGreenhouseSingleSangjuVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/env_greenhouse_complex", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertEnvGreenhouseComplex(@RequestBody EnvGreenhouseComplexVO envGreenhouseComplexVO){
        ResultVO result = new ResultVO();
        if(  envGreenhouseComplexVO != null &&
                envGreenhouseComplexVO.getDaqtime() != null &&
                envGreenhouseComplexVO.getHum() != 0 &&
                envGreenhouseComplexVO.getCo2() != 0 &&
                envGreenhouseComplexVO.getLight() != 0 &&
                envGreenhouseComplexVO.getSoilec() != 0 &&
                envGreenhouseComplexVO.getSoilmoisture() != 0 &&
                envGreenhouseComplexVO.getSoilph() != 0 &&
                envGreenhouseComplexVO.getSoiltemp() != 0 &&
                envGreenhouseComplexVO.getSoiltension() != 0 &&
                envGreenhouseComplexVO.getTemp() != 0
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = envGreenhouseComplexVO.getUsername();
        String key = envGreenhouseComplexVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertEnvGreenhouseComplex(envGreenhouseComplexVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/env_greenhouse_glass", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertEnvGreenhouseGlass(@RequestBody EnvGreenhouseGlassVO envGreenhouseGlassVO){
        ResultVO result = new ResultVO();
        if( envGreenhouseGlassVO != null &&
                envGreenhouseGlassVO.getDaqtime() != null &&// date,
                envGreenhouseGlassVO.getTemp() != 0 &&// number(10,4),
                envGreenhouseGlassVO.getHum() != 0 &&// number(10,4),
                envGreenhouseGlassVO.getLight() != 0 &&// number(10,4),
                envGreenhouseGlassVO.getCo2() != 0 &&// number(10,4),
                envGreenhouseGlassVO.getSoiltension() != 0 &&// number(10,4),
                envGreenhouseGlassVO.getSoilph() != 0 &&// number(10,4),
                envGreenhouseGlassVO.getSoilmoisture() != 0 &&// number(10,4),
                envGreenhouseGlassVO.getSoilec() != 0 &&// number(10,4),
                envGreenhouseGlassVO.getSoiltemp() != 0// number(10,4)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = envGreenhouseGlassVO.getUsername();
        String key = envGreenhouseGlassVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertEnvGreenhouseGlass(envGreenhouseGlassVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/env_greenhouse_single", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertEnvGreenhouseSingle(@RequestBody EnvGreenhouseSingleVO envGreenhouseSingleVO){
        ResultVO result = new ResultVO();
        if(
                envGreenhouseSingleVO != null &&
                        envGreenhouseSingleVO.getDaqtime() != null &&// date,
                        envGreenhouseSingleVO.getTemp() != 0 &&// number(10,4),
                        envGreenhouseSingleVO.getHum() != 0 &&// number(10,4),
                        envGreenhouseSingleVO.getLight() != 0 &&// number(10,4),
                        envGreenhouseSingleVO.getCo2() != 0 &&// number(10,4),
                        envGreenhouseSingleVO.getSoiltension() != 0 &&// number(10,4),
                        envGreenhouseSingleVO.getSoilph() != 0 &&// number(10,4),
                        envGreenhouseSingleVO.getSoilmoisture() != 0 &&// number(10,4),
                        envGreenhouseSingleVO.getSoilec() != 0 &&// number(10,4),
                        envGreenhouseSingleVO.getSoiltemp() != 0// number(10,4)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = envGreenhouseSingleVO.getUsername();
        String key = envGreenhouseSingleVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertEnvGreenhouseSingle(envGreenhouseSingleVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/env_weather", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertEnvWeather(@RequestBody EnvWeatherVO envWeatherVO){
        ResultVO result = new ResultVO();
        if(envWeatherVO != null &&
                envWeatherVO.getDaqtime() != null &&// date,
                envWeatherVO.getTemp() != 0 &&// number(10,4),
                envWeatherVO.getHum() != 0 &&// number(10,4),
                envWeatherVO.getInsolation() != 0 &&// number(10,4),
                envWeatherVO.getWinddirection() != 0 &&// number(10,4),
                envWeatherVO.getWindspeed() != 0 &&// number(10,4),
                envWeatherVO.getRaindetect() != 0 // number(10,4)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = envWeatherVO.getUsername();
        String key = envWeatherVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertEnvWeather(envWeatherVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "now_greenhouse_complex_gimje", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertNowGreenhouseComplexGimje(@RequestBody NowGreenhouseComplexGimjeVO nowGreenhouseComplexGimjeVO){
        ResultVO result = new ResultVO();
        if(                nowGreenhouseComplexGimjeVO != null &&
                nowGreenhouseComplexGimjeVO.getTemp() != 0 &&// number(10,4),
                nowGreenhouseComplexGimjeVO.getHum() != 0 &&// number(10,4),
                nowGreenhouseComplexGimjeVO.getLight() != 0 &&// number(10,4),
                nowGreenhouseComplexGimjeVO.getCo2() != 0 &&// number(10,4),
                nowGreenhouseComplexGimjeVO.getSoiltension() != 0 &&// number(10,4),
                nowGreenhouseComplexGimjeVO.getSoilph() != 0 &&// number(10,4),
                nowGreenhouseComplexGimjeVO.getSoilmoisture() != 0 &&// number(10,4),
                nowGreenhouseComplexGimjeVO.getSoilec() != 0 &&// number(10,4),
                nowGreenhouseComplexGimjeVO.getSoiltemp() != 0 &&// number(10,4),
                nowGreenhouseComplexGimjeVO.getPos_topwindow_l1() != 0 &&// float(63),
                nowGreenhouseComplexGimjeVO.getPos_topwindow_l2() != 0 &&// float(63),
                nowGreenhouseComplexGimjeVO.getPos_topwindow_l3() != 0 &&// float(63),
                nowGreenhouseComplexGimjeVO.getPos_topwindow_r1() != 0 &&//  float(63),
                nowGreenhouseComplexGimjeVO.getPos_topwindow_r2() != 0 &&// float(63),
                nowGreenhouseComplexGimjeVO.getPos_topwindow_r3() != 0 &&// float(63),
                nowGreenhouseComplexGimjeVO.getPos_outcurtain() != 0 &&//  float(63),
                nowGreenhouseComplexGimjeVO.getPos_incurtain() != 0 //  float(63)

        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = nowGreenhouseComplexGimjeVO.getUsername();
        String key = nowGreenhouseComplexGimjeVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertNowGreenhouseComplexGimje(nowGreenhouseComplexGimjeVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/now_greenhouse_complex_sangju", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertNowGreenhouseComplexSangju(@RequestBody NowGreenhouseComplexSangjuVO nowGreenhouseComplexSangjuVO){
        ResultVO result = new ResultVO();
        if( nowGreenhouseComplexSangjuVO != null &&
                nowGreenhouseComplexSangjuVO.getTemp() != 0 &&// number(10,4),
                nowGreenhouseComplexSangjuVO.getHum() != 0 &&// number(10,4),
                nowGreenhouseComplexSangjuVO.getLight() != 0 &&// number(10,4),
                nowGreenhouseComplexSangjuVO.getCo2() != 0 &&// number(10,4),
                nowGreenhouseComplexSangjuVO.getSoiltension() != 0 &&// number(10,4),
                nowGreenhouseComplexSangjuVO.getSoilph() != 0 &&// number(10,4),
                nowGreenhouseComplexSangjuVO.getSoilmoisture() != 0 &&// number(10,4),
                nowGreenhouseComplexSangjuVO.getSoilec() != 0 &&// number(10,4),
                nowGreenhouseComplexSangjuVO.getSoiltemp() != 0 &&// number(10,4),
                nowGreenhouseComplexSangjuVO.getPos_roofwindow_l() != 0 &&//  float(63),
                nowGreenhouseComplexSangjuVO.getPos_roofwindow_r() != 0 &&// float(63),
                nowGreenhouseComplexSangjuVO.getPos_outcurtain() != 0 &&//  float(63),
                nowGreenhouseComplexSangjuVO.getPos_incurtain() != 0 //  float(63)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = nowGreenhouseComplexSangjuVO.getUsername();
        String key = nowGreenhouseComplexSangjuVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertNowGreenhouseComplexSangju(nowGreenhouseComplexSangjuVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/now_greenhouse_glass", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertNowGreenhouseGlass(@RequestBody NowGreenhouseGlassVO nowGreenhouseGlassVO){
        ResultVO result = new ResultVO();
        if(
                nowGreenhouseGlassVO != null &&
                        nowGreenhouseGlassVO.getTemp() != 0 &&// number(10,4),
                        nowGreenhouseGlassVO.getHum() != 0 &&// number(10,4),
                        nowGreenhouseGlassVO.getLight() != 0 &&// number(10,4),
                        nowGreenhouseGlassVO.getCo2() != 0 &&// number(10,4),
                        nowGreenhouseGlassVO.getSoiltension() != 0 &&// number(10,4),
                        nowGreenhouseGlassVO.getSoilph() != 0 &&// number(10,4),
                        nowGreenhouseGlassVO.getSoilmoisture() != 0 &&// number(10,4),
                        nowGreenhouseGlassVO.getSoilec() != 0 &&// number(10,4),
                        nowGreenhouseGlassVO.getSoiltemp() != 0 &&// number(10,4),
                        nowGreenhouseGlassVO.getPos_roofwindow_l() != 0 &&//  float(63),
                        nowGreenhouseGlassVO.getPos_roofwindow_r() != 0 &&// float(63),
                        nowGreenhouseGlassVO.getPos_outcurtain() != 0 &&//  float(63),
                        nowGreenhouseGlassVO.getPos_incurtain() != 0 //  float(63)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = nowGreenhouseGlassVO.getUsername();
        String key = nowGreenhouseGlassVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertNowGreenhouseGlass(nowGreenhouseGlassVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/now_greenhouse_single_gimje", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertNowGreenhouseSingleGimje(@RequestBody NowGreenhouseSingleGimjeVO nowGreenhouseSingleGimjeVO){
        ResultVO result = new ResultVO();
        if( nowGreenhouseSingleGimjeVO != null &&
                nowGreenhouseSingleGimjeVO.getTemp() != 0 &&// number(10,4),
                nowGreenhouseSingleGimjeVO.getHum() != 0 &&// number(10,4),
                nowGreenhouseSingleGimjeVO.getLight() != 0 &&// number(10,4),
                nowGreenhouseSingleGimjeVO.getCo2() != 0 &&// number(10,4),
                nowGreenhouseSingleGimjeVO.getSoiltension() != 0 &&// number(10,4),
                nowGreenhouseSingleGimjeVO.getSoilph() != 0 &&// number(10,4),
                nowGreenhouseSingleGimjeVO.getSoilmoisture() != 0 &&// number(10,4),
                nowGreenhouseSingleGimjeVO.getSoilec() != 0 &&// number(10,4),
                nowGreenhouseSingleGimjeVO.getSoiltemp() != 0 &&// number(10,4),
                nowGreenhouseSingleGimjeVO.getPos_outsidewindow_l() != 0 &&// float(63),
                nowGreenhouseSingleGimjeVO.getPos_outsidewindow_r() != 0 &&// float(63),
                nowGreenhouseSingleGimjeVO.getPos_insidewindow_l() != 0 &&//  float(63),
                nowGreenhouseSingleGimjeVO.getPos_insidewindow_r() != 0 &&//  float(63),
                nowGreenhouseSingleGimjeVO.getPos_curtain_l() != 0 &&// float(63),
                nowGreenhouseSingleGimjeVO.getPos_curtain_r() != 0 &&// float(63),
                nowGreenhouseSingleGimjeVO.getPos_sidescreen_l() != 0 &&// float(63),
                nowGreenhouseSingleGimjeVO.getPos_sidescreen_r() != 0 // float(63)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = nowGreenhouseSingleGimjeVO.getUsername();
        String key = nowGreenhouseSingleGimjeVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertNowGreenhouseSingleGimje(nowGreenhouseSingleGimjeVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/now_greenhouse_single_sangju", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertNowGreenhouseSingleSangju(@RequestBody NowGreenhouseSingleSangjuVO nowGreenhouseSingleSangjuVO){
        ResultVO result = new ResultVO();
        if(  nowGreenhouseSingleSangjuVO != null &&
                nowGreenhouseSingleSangjuVO.getTemp() != 0 &&// number(10,4),
                nowGreenhouseSingleSangjuVO.getHum() != 0 &&// number(10,4),
                nowGreenhouseSingleSangjuVO.getLight() != 0 &&// number(10,4),
                nowGreenhouseSingleSangjuVO.getCo2() != 0 &&// number(10,4),
                nowGreenhouseSingleSangjuVO.getSoiltension() != 0 &&// number(10,4),
                nowGreenhouseSingleSangjuVO.getSoilph() != 0 &&// number(10,4),
                nowGreenhouseSingleSangjuVO.getSoilmoisture() != 0 &&// number(10,4),
                nowGreenhouseSingleSangjuVO.getSoilec() != 0 &&// number(10,4),
                nowGreenhouseSingleSangjuVO.getSoiltemp() != 0 &&// number(10,4),
                nowGreenhouseSingleSangjuVO.getPos_roofwindow_l() != 0 &&// float(63),
                nowGreenhouseSingleSangjuVO.getPos_roofwindow_r() != 0 &&//  float(63),
                nowGreenhouseSingleSangjuVO.getPos_outcurtain() != 0 &&//  float(63),
                nowGreenhouseSingleSangjuVO.getPos_incurtain() != 0 //  float(63)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = nowGreenhouseSingleSangjuVO.getUsername();
        String key = nowGreenhouseSingleSangjuVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertNowGreenhouseSingleSangju(nowGreenhouseSingleSangjuVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/now_weather", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertNowWeather(@RequestBody NowWeatherVO nowWeatherVO){
        ResultVO result = new ResultVO();
        if(
                nowWeatherVO != null &&
                        nowWeatherVO.getTemp() != 0 &&// number(10,4),
                        nowWeatherVO.getHum() != 0 &&// number(10,4),
                        nowWeatherVO.getInsolation() != 0 &&// number(10,4),
                        nowWeatherVO.getWinddirection() != 0 &&// number(10,4),
                        nowWeatherVO.getWindspeed() != 0 &&// number(10,4),
                        nowWeatherVO.getRaindetect() != null // char(1) 0 or 1
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = nowWeatherVO.getUsername();
        String key = nowWeatherVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertNowWeather(nowWeatherVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_acmotor", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataACMotor(@RequestBody VerifyDataACMotorVO verifyDataACMotorVO){
        ResultVO result = new ResultVO();
        if( verifyDataACMotorVO != null &&
                verifyDataACMotorVO.getVerifyid() != null &&//  varchar(100),
                verifyDataACMotorVO.getDeviceid() != null &&// varchar(100),
                verifyDataACMotorVO.getDaqtime() != null &&//  date ,
                verifyDataACMotorVO.getAmpere() != 0 &&// float(63),
                verifyDataACMotorVO.getStandardtouque() != 0 &&// float(63),
                verifyDataACMotorVO.getTorque() != 0 &&// float(63),
                verifyDataACMotorVO.getRpm() != 0
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataACMotorVO.getUsername();
        String key = verifyDataACMotorVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataACMotor(verifyDataACMotorVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_aircon_analysis", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataAirconAnalysis(@RequestBody VerifyDataAirconAnalysisVO verifyDataAirconAnalysisVO){
        ResultVO result = new ResultVO();
        if( verifyDataAirconAnalysisVO != null &&
                verifyDataAirconAnalysisVO.getVerifyid() != null &&//  varchar(100),
                verifyDataAirconAnalysisVO.getDeviceid() != null &&// varchar(100),
                verifyDataAirconAnalysisVO.getDaqtime() != null &&//  date ,
                verifyDataAirconAnalysisVO.getTemp1_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp1_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp1_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp2_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp2_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp2_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp3_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp3_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp3_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp4_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp4_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp4_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum4() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection4() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed4() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp5_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp5_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp5_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum5() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection5() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed5() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp6_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp6_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp6_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum6() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection6() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed6() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp7_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp7_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp7_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum7() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection7() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed7() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp8_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp8_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp8_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum8() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection8() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed8() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp9_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp9_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp9_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum9() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection9() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed9() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp10_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp10_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp10_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum10() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection10() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed10() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp11_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp11_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp11_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum11() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection11() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed11() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp12_1() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp12_2() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getTemp12_3() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getHum12() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWinddirection12() != 0 &&// number(10,4),
                verifyDataAirconAnalysisVO.getWindspeed12() != 0// number(10,4)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataAirconAnalysisVO.getUsername();
        String key = verifyDataAirconAnalysisVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataAirconAnalysis(verifyDataAirconAnalysisVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_aircon_effect", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataAirconEffect(@RequestBody VerifyDataAirconEffectVO verifyDataAirconEffectVO){
        ResultVO result = new ResultVO();
        if(  verifyDataAirconEffectVO != null &&
                verifyDataAirconEffectVO.getVerifyid() != null &&//  varchar(100),
                verifyDataAirconEffectVO.getDeviceid() != null &&// varchar(100),
                verifyDataAirconEffectVO.getDaqtime() != null &&//  date ,
                verifyDataAirconEffectVO.getTemp_evapolator_in() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getTemp_evapolator_out() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getTempdiff_evapolator() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getTemp_evapolation_refrigerant() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getTemp_compressor_in() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getSuperheat() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getTemp_condenser_in() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getTemp_condenser_out() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getTempdiff_condenser() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getTemp_condensation_refrigerant() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getSupercooling() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getTemp_compressor_out() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getEffect_compressor_isentropy() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getPower_compressor() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getCop_frozen() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getCapacity_frozen() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getCop_radiation() != 0 &&// number(10,4),
                verifyDataAirconEffectVO.getCapacity_ratiation() != 0// number(10,4)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataAirconEffectVO.getUsername();
        String key = verifyDataAirconEffectVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataAirconEffect(verifyDataAirconEffectVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_co2", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataCO2(@RequestBody VerifyDataCO2VO verifyDataCO2VO){
        ResultVO result = new ResultVO();
        if(  verifyDataCO2VO != null &&
                verifyDataCO2VO.getVerifyid() != null &&//  varchar(100),
                verifyDataCO2VO.getDeviceid() != null &&// varchar(100),
                verifyDataCO2VO.getDaqtime() != null &&//  date ,
                verifyDataCO2VO.getF_temp() != 0 &&// number(10,4),
                verifyDataCO2VO.getF_hum() != 0 &&// number(10,4),
                verifyDataCO2VO.getC_temp() != 0 &&// number(10,4),
                verifyDataCO2VO.getC_pressure() != 0 &&// number(10,4),
                verifyDataCO2VO.getStandardvalue() != 0 &&// number(10,4),
                verifyDataCO2VO.getVerifyvalue() != 0 // number(10,4)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataCO2VO.getUsername();
        String key = verifyDataCO2VO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataCO2(verifyDataCO2VO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_dcmotor", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataDCMotor(@RequestBody VerifyDataDCMotorVO verifyDataDCMotorVO){
        ResultVO result = new ResultVO();
        if( verifyDataDCMotorVO != null &&
                verifyDataDCMotorVO.getVerifyid() != null &&//  varchar(100),
                verifyDataDCMotorVO.getDeviceid() != null &&// varchar(100),
                verifyDataDCMotorVO.getDaqtime() != null &&//  date ,
                verifyDataDCMotorVO.getAmpere() != 0 &&// float(63),
                verifyDataDCMotorVO.getStandardtouque() != 0 &&// float(63),
                verifyDataDCMotorVO.getTorque() != 0 &&// float(63),
                verifyDataDCMotorVO.getRpm() != 0// float(63)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataDCMotorVO.getUsername();
        String key = verifyDataDCMotorVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataDCMotor(verifyDataDCMotorVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_dust", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataDust(@RequestBody VerifyDataDustVO verifyDataDustVO){
        ResultVO result = new ResultVO();
        if(verifyDataDustVO != null &&
                verifyDataDustVO.getVerifyid() != null &&//  varchar(100),
                verifyDataDustVO.getDeviceid() != null &&// varchar(100),
                verifyDataDustVO.getTesttime() != null &&//  date ,
                verifyDataDustVO.getMethod() != null &&// varchar(100),
                verifyDataDustVO.getOntime() != 0 &&// int,
                verifyDataDustVO.getOfftime() != 0 &&// int,
                verifyDataDustVO.getRepeatcount() != 0 &&// int,
                verifyDataDustVO.getDuringtime() != 0// int
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataDustVO.getUsername();
        String key = verifyDataDustVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataDust(verifyDataDustVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_ecsensor", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataECSensor(@RequestBody VerifyDataECSensorVO verifyDataECSensorVO){
        ResultVO result = new ResultVO();
        if(  verifyDataECSensorVO != null &&
                verifyDataECSensorVO.getVerifyid() != null &&//  varchar(100),
                verifyDataECSensorVO.getDeviceid() != null &&// varchar(100),
                verifyDataECSensorVO.getDaqtime() != null &&//  date ,
                verifyDataECSensorVO.getF_temp() != 0 &&// number(10,4),
                verifyDataECSensorVO.getF_hum() != 0 &&// number(10,4),
                verifyDataECSensorVO.getStandardvalue() != 0 &&// number(10,4),
                verifyDataECSensorVO.getVerifyvalue() != 0// number(10,4)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataECSensorVO.getUsername();
        String key = verifyDataECSensorVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataECSensor(verifyDataECSensorVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_heatflow", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataHeatFlow(@RequestBody VerifyDataHeatFlowVO verifyDataHeatFlowVO){
        ResultVO result = new ResultVO();
        if( verifyDataHeatFlowVO != null &&
                verifyDataHeatFlowVO.getDeviceid() != null &&// varchar(100),
                verifyDataHeatFlowVO.getDaqtime() != null&&//  date ,
                verifyDataHeatFlowVO.getTemp_a_main() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getHum_a() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_main() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getWindspeed_a_hotbox() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getVolt_a_hotbox_heater() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getAmp_a_hotbox_heater() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getVolt_a_hotbox_fan() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getAmp_a_hotbox_fan() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_main() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getWindspeed_b_coolingbox() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub1() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub2() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub3() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub4() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub5() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub6() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub7() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub8() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub9() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub10() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub11() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub12() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub13() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub14() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub15() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub16() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub17() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub18() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub19() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub20() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub21() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub22() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub23() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub24() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub25() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub26() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub27() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub28() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub29() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_sub30() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub1() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub2() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub3() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub4() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub5() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub6() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub7() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub8() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub9() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub10() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub11() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub12() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub13() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub14() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub15() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub16() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub17() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub18() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub19() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub20() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub21() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub22() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub23() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub24() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub25() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub26() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub27() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub28() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub29() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_a_hotbox_sub30() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub1() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub2() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub3() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub4() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub5() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub6() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub7() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub8() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub9() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub10() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub11() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub12() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub13() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub14() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub15() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub16() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub17() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub18() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub19() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub20() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub21() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub22() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub23() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub24() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub25() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub26() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub27() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub28() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub29() != 0 &&// number(10,4),
                verifyDataHeatFlowVO.getTemp_b_sub30() != 0
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataHeatFlowVO.getUsername();
        String key = verifyDataHeatFlowVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataHeatFlow(verifyDataHeatFlowVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_wind", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataWind (@RequestBody VerifyDataWindVO  verifyDataWindVO){
        ResultVO result = new ResultVO();
        if( verifyDataWindVO != null &&
                verifyDataWindVO.getVerifyid() != null &&//  varchar(100),
                verifyDataWindVO.getDeviceid() != null &&// varchar(100),
                verifyDataWindVO.getDaqtime() != null &&//  date ,
                verifyDataWindVO.getStandardspeed() != 0 &&// number(10,4),
                verifyDataWindVO.getVerifyspeed() != 0// number(10,4)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataWindVO.getUsername();
        String key = verifyDataWindVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataWind(verifyDataWindVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_waterproof", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataWaterProof(@RequestBody VerifyDataWaterProofVO  verifyDataWaterProofVO){
        ResultVO result = new ResultVO();
        if(                verifyDataWaterProofVO != null &&
                verifyDataWaterProofVO.getVerifyid() != null &&//  varchar(100),
                verifyDataWaterProofVO.getDeviceid() != null &&// varchar(100),
                verifyDataWaterProofVO.getDaqtime() != null &&//  date ,
                verifyDataWaterProofVO.getWaterpressure() != 0 &&// number(10,4),
                verifyDataWaterProofVO.getPlatespeed() != 0 &&// number(10,4),
                verifyDataWaterProofVO.getNozzleswingspeed() != 0 &&// number(10,4),
                verifyDataWaterProofVO.getWatersupplymotorspeed() != 0// number(10,4)

        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataWaterProofVO.getUsername();
        String key = verifyDataWaterProofVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataWaterProof(verifyDataWaterProofVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_waterproof_robot", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataWaterProofRobot(@RequestBody VerifyDataWaterProofRobotVO verifyDataWaterProofRobotVO){
        ResultVO result = new ResultVO();
        if(  verifyDataWaterProofRobotVO != null &&
                verifyDataWaterProofRobotVO.getVerifyid() != null &&//  varchar(100),
                verifyDataWaterProofRobotVO.getDeviceid() != null &&// varchar(100),
                verifyDataWaterProofRobotVO.getDaqtime() != null &&//  date ,
                verifyDataWaterProofRobotVO.getWaterpressure() != 0 &&// number(10,4),
                verifyDataWaterProofRobotVO.getPlatespeed() != 0 &&// number(10,4),
                verifyDataWaterProofRobotVO.getNozzleswingspeed() != 0 &&// number(10,4),
                verifyDataWaterProofRobotVO.getWatersupplymotorspeed() != 0 &&// number(10,4),
                verifyDataWaterProofRobotVO.getWaterflowquantity() != 0// number(10,4)
        ){
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataWaterProofRobotVO.getUsername();
        String key = verifyDataWaterProofRobotVO.getKey();

        if(key == null && username == null){
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if(key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if(username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if(!apiService.selectKey(key)){
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataWaterProofRobot(verifyDataWaterProofRobotVO) != 0){
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        return result;
    }

    @RequestMapping(value = "/verifydata_hotshock_robot", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataHotShockRobot(@RequestBody VerifyDataHotShockRobotVO verifyDataHotShockRobotVO) {
        ResultVO result = new ResultVO();
        if (verifyDataHotShockRobotVO != null &&
                verifyDataHotShockRobotVO.getVerifyid() != null &&//  varchar(100),
                verifyDataHotShockRobotVO.getDeviceid() != null &&// varchar(100),
                verifyDataHotShockRobotVO.getDaqtime() != null &&//  date ,
                verifyDataHotShockRobotVO.getTemp() != 0 &&// number(10,4),
                verifyDataHotShockRobotVO.getHum() != 0// number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataHotShockRobotVO.getUsername();
        String key = verifyDataHotShockRobotVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataHotShockRobot(verifyDataHotShockRobotVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }

    @RequestMapping(value = "/verifydata_hotshock", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataHotShock(@RequestBody VerifyDataHotShockVO  verifyDataHotShockVO){
        ResultVO result = new ResultVO();
        if (verifyDataHotShockVO != null &&
                verifyDataHotShockVO.getVerifyid() != null &&//  varchar(100),
                verifyDataHotShockVO.getDeviceid() != null &&// varchar(100),
                verifyDataHotShockVO.getDaqtime() != null &&//  date ,
                verifyDataHotShockVO.getTemp_hot() != 0 &&// number(10,4),
                verifyDataHotShockVO.getTemp_test() != 0 &&// number(10,4),
                verifyDataHotShockVO.getTemp_cold() != 0// number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataHotShockVO.getUsername();
        String key = verifyDataHotShockVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataHotShock(verifyDataHotShockVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }
    @RequestMapping(value = "/verifydata_material_big", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataMaterialBig(@RequestBody VerifyDataMaterialBigVO verifyDataMaterialBigVO){
        ResultVO result = new ResultVO();
        if (
                verifyDataMaterialBigVO != null &&
                        verifyDataMaterialBigVO.getVerifyid() != null &&//  varchar(100),
                        verifyDataMaterialBigVO.getDeviceid() != null &&// varchar(100),
                        verifyDataMaterialBigVO.getDaqtime() != null &&//  date ,
                        verifyDataMaterialBigVO.getWeight() != 0 &&// number(10,4),
                        verifyDataMaterialBigVO.getStrength() != 0 &&// number(10,4),
                        verifyDataMaterialBigVO.getDisplacement() != 0 &&// number(10,4),
                        verifyDataMaterialBigVO.getElongation() != 0 &&// number(10,4),
                        verifyDataMaterialBigVO.getElongationrate() != 0 &&// number(10,4),
                        verifyDataMaterialBigVO.getYieldpoint() != 0 &&// number(10,4),
                        verifyDataMaterialBigVO.getBreakingpoint() != 0// number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataMaterialBigVO.getUsername();
        String key = verifyDataMaterialBigVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataMaterialBig(verifyDataMaterialBigVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }
    @RequestMapping(value = "/verifydata_material_small", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataMaterialSmall(@RequestBody VerifyDataMaterialSmallVO verifyDataMaterialSmallVO){
        ResultVO result = new ResultVO();
        if (    verifyDataMaterialSmallVO != null &&
                verifyDataMaterialSmallVO.getVerifyid() != null &&//  varchar(100),
                verifyDataMaterialSmallVO.getDeviceid() != null &&// varchar(100),
                verifyDataMaterialSmallVO.getDaqtime() != null &&//  date ,
                verifyDataMaterialSmallVO.getWeight() != 0 &&// number(10,4),
                verifyDataMaterialSmallVO.getStrength() != 0 &&// number(10,4),
                verifyDataMaterialSmallVO.getDisplacement() != 0 &&// number(10,4),
                verifyDataMaterialSmallVO.getElongation() != 0 &&// number(10,4),
                verifyDataMaterialSmallVO.getElongationrate() != 0 &&// number(10,4),
                verifyDataMaterialSmallVO.getYieldpoint() != 0 &&// number(10,4),
                verifyDataMaterialSmallVO.getBreakingpoint() != 0// number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataMaterialSmallVO.getUsername();
        String key = verifyDataMaterialSmallVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataMaterialSmall(verifyDataMaterialSmallVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }
    @RequestMapping(value = "/verifydata_moisture", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataMoisture(@RequestBody VerifyDataMoistureVO verifyDataMoistureVO){
        ResultVO result = new ResultVO();
        if ( verifyDataMoistureVO != null &&
                verifyDataMoistureVO.getVerifyid() != null &&//  varchar(100),
                verifyDataMoistureVO.getDeviceid() != null &&// varchar(100),
                verifyDataMoistureVO.getDaqtime() != null &&//  date ,
                verifyDataMoistureVO.getTemp() != 0 &&// number(10,4),
                verifyDataMoistureVO.getHum() != 0// number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataMoistureVO.getUsername();
        String key = verifyDataMoistureVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataMoisture(verifyDataMoistureVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }
    @RequestMapping(value = "/verifydata_netrient_supplier", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataNetrientSupplier(@RequestBody VerifyDataNetrientSupplierVO verifyDataNetrientSupplierVO){
        ResultVO result = new ResultVO();
        if (  verifyDataNetrientSupplierVO != null &&
                verifyDataNetrientSupplierVO.getVerifyid() != null &&//  varchar(100),
                verifyDataNetrientSupplierVO.getDeviceid() != null &&// varchar(100),
                verifyDataNetrientSupplierVO.getDaqtime() != null &&//  date ,
                verifyDataNetrientSupplierVO.getPressure1() != 0 &&// number(10,4),
                verifyDataNetrientSupplierVO.getPressure2() != 0 &&// number(10,4),
                verifyDataNetrientSupplierVO.getFlowqty() != 0 &&// number(10,4),
                verifyDataNetrientSupplierVO.getValveopenrate1() != 0 &&// number(10,4),
                verifyDataNetrientSupplierVO.getValveopenrate2() != 0 &&// number(10,4),
                verifyDataNetrientSupplierVO.getValveopenrate3() != 0 &&// number(10,4),
                verifyDataNetrientSupplierVO.getValveopenrate4() != 0 &&// number(10,4),
                verifyDataNetrientSupplierVO.getValveopenrate5() != 0 // number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataNetrientSupplierVO.getUsername();
        String key = verifyDataNetrientSupplierVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataNetrientSupplier(verifyDataNetrientSupplierVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }
    @RequestMapping(value = "/verifydata_ph", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataPH(@RequestBody VerifyDataPHVO verifyDataPHVO){
        ResultVO result = new ResultVO();
        if ( verifyDataPHVO != null &&
                verifyDataPHVO.getVerifyid() != null &&//  varchar(100),
                verifyDataPHVO.getDeviceid() != null &&// varchar(100),
                verifyDataPHVO.getDaqtime() != null &&//  date ,
                verifyDataPHVO.getF_temp() != 0 &&// number(10,4),
                verifyDataPHVO.getF_hum() != 0 &&// number(10,4),
                verifyDataPHVO.getStandardvalue() != 0 &&// number(10,4),
                verifyDataPHVO.getVerifyvalue() != 0 // number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataPHVO.getUsername();
        String key = verifyDataPHVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataPH(verifyDataPHVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }
    @RequestMapping(value = "/verifydata_posmeasure", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataPosmeasure(@RequestBody VerifyDataPosmeasureVO verifyDataPosmeasureVO){
        ResultVO result = new ResultVO();
        if (verifyDataPosmeasureVO != null &&
                verifyDataPosmeasureVO.getVerifyid() != null &&//  varchar(100),
                verifyDataPosmeasureVO.getDeviceid() != null &&// varchar(100),
                verifyDataPosmeasureVO.getDevicekind() != null &&// varchar(100),
                verifyDataPosmeasureVO.getDaqtime() != null &&//  date ,
                verifyDataPosmeasureVO.getTagid() != 0 &&// float(63),
                verifyDataPosmeasureVO.getX_pos() != 0 &&// float(63),
                verifyDataPosmeasureVO.getY_pos() != 0 &&// float(63),
                verifyDataPosmeasureVO.getDirection() != 0// float(63)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataPosmeasureVO.getUsername();
        String key = verifyDataPosmeasureVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataPosmeasure(verifyDataPosmeasureVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }
    @RequestMapping(value = "/verifydata_sensor_test", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataSensorTest(@RequestBody VerifyDataSensorTestVO verifyDataSensorTestVO){
        ResultVO result = new ResultVO();
        if (   verifyDataSensorTestVO != null &&
                verifyDataSensorTestVO.getVerifyid() != null &&//  varchar(100),
                verifyDataSensorTestVO.getDeviceid() != null &&// varchar(100),
                verifyDataSensorTestVO.getDaqtime() != null &&//  date ,
                verifyDataSensorTestVO.getTemp() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getHum() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue1() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue2() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue3() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue4() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue5() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue6() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue7() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue8() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue9() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue10() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue11() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getValue12() != 0 &&// number(10,4),
                verifyDataSensorTestVO.getDivalue1() != 0 &&// int,
                verifyDataSensorTestVO.getDivalue2() != 0 &&// int,
                verifyDataSensorTestVO.getDivalue3() != 0 &&// int,
                verifyDataSensorTestVO.getDivalue4() != 0 &&// int,
                verifyDataSensorTestVO.getDovalue1() != 0 &&// int,
                verifyDataSensorTestVO.getDovalue2() != 0 &&// int,
                verifyDataSensorTestVO.getAovalue1() != 0 &&// int,
                verifyDataSensorTestVO.getAovalue2() != 0 &&// int,
                verifyDataSensorTestVO.getValuename1() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename2() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename3() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename4() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename5() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename6() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename7() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename8() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename9() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename10() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename11() != null &&// varchar(100),
                verifyDataSensorTestVO.getValuename12() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit1() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit2() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit3() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit4() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit5() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit6() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit7() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit8() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit9() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit10() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit11() != null &&// varchar(100),
                verifyDataSensorTestVO.getValueunit12() != null &&// varchar(100),
                verifyDataSensorTestVO.getDivaluename1() != null &&// varchar(100),
                verifyDataSensorTestVO.getDivaluename2() != null &&// varchar(100),
                verifyDataSensorTestVO.getDivaluename3() != null &&// varchar(100),
                verifyDataSensorTestVO.getDivaluename4() != null &&// varchar(100),
                verifyDataSensorTestVO.getDovaluename1() != null &&// varchar(100),
                verifyDataSensorTestVO.getDovaluename2() != null &&// varchar(100),
                verifyDataSensorTestVO.getAovaluename1() != null &&// varchar(100),
                verifyDataSensorTestVO.getAovaluename2() != null &&// varchar(100),
                verifyDataSensorTestVO.getAovalueunit1() != null &&// varchar(100),
                verifyDataSensorTestVO.getAovalueunit2() != null// varchar(100)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataSensorTestVO.getUsername();
        String key = verifyDataSensorTestVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataSensorTest(verifyDataSensorTestVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }

    @RequestMapping(value = "/verifydata_soil_moisture", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataSoilMoisture(@RequestBody VerifyDataSoilMoistureVO verifyDataSoilMoistureVO){
        ResultVO result = new ResultVO();
        if (verifyDataSoilMoistureVO != null &&
                verifyDataSoilMoistureVO.getVerifyid() != null &&//  varchar(100),
                verifyDataSoilMoistureVO.getDeviceid() != null &&// varchar(100),
                verifyDataSoilMoistureVO.getDaqtime() != null &&//  date ,
                verifyDataSoilMoistureVO.getF_temp() != 0 &&// number(10,4),
                verifyDataSoilMoistureVO.getF_hum() != 0 &&// number(10,4),
                verifyDataSoilMoistureVO.getStandardvalue() != 0 &&// number(10,4),
                verifyDataSoilMoistureVO.getVerifyvalue() != 0// number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataSoilMoistureVO.getUsername();
        String key = verifyDataSoilMoistureVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataSoilMoisture(verifyDataSoilMoistureVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }
    @RequestMapping(value = "/verifydata_sunlight_rawdata", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataSunLightRawData(@RequestBody VerifyDataSunLightRawDataVO verifyDataSunLightRawDataVO){
        ResultVO result = new ResultVO();
        if ( verifyDataSunLightRawDataVO != null &&
                verifyDataSunLightRawDataVO.getVerifyid() != null &&//  varchar(100),
                verifyDataSunLightRawDataVO.getDeviceid() != null &&// varchar(100),
                verifyDataSunLightRawDataVO.getDaqtime() != null &&//  date ,
                verifyDataSunLightRawDataVO.getStandardvalue() != 0 &&// number(10,4),
                verifyDataSunLightRawDataVO.getValue() != 0 &&// number(10,4),
                verifyDataSunLightRawDataVO.getUnit() != null &&// varchar(100),
                verifyDataSunLightRawDataVO.getFrontrear() != null &&// char,
                verifyDataSunLightRawDataVO.getVerifystep() != null// char
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataSunLightRawDataVO.getUsername();
        String key = verifyDataSunLightRawDataVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataSunLightRawData(verifyDataSunLightRawDataVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }
    @RequestMapping(value = "/verifydata_sunlight", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataSunLight(@RequestBody VerifyDataSunLightVO verifyDataSunLightVO){
        ResultVO result = new ResultVO();
        if (
                verifyDataSunLightVO != null &&
                        verifyDataSunLightVO.getVerifyid() != null &&//  varchar(100),
                        verifyDataSunLightVO.getDeviceid() != null &&// varchar(100),
                        verifyDataSunLightVO.getDaqtime() != null &&//  date ,
                        verifyDataSunLightVO.getCalcellvalue() != 0 &&// number(10,4),
                        verifyDataSunLightVO.getStandardvalue() != 0 &&// number(10,4),
                        verifyDataSunLightVO.getVerifyvalue() != 0// number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataSunLightVO.getUsername();
        String key = verifyDataSunLightVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataSunLight(verifyDataSunLightVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }

    @RequestMapping(value = "/verifydata_thermohygrostat", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataThermoHygrostat(@RequestBody VerifyDataThermoHygrostatVO verifyDataThermoHygrostatVO){
        ResultVO result = new ResultVO();
        if (  verifyDataThermoHygrostatVO != null &&
                verifyDataThermoHygrostatVO.getVerifyid() != null &&//  varchar(100),
                verifyDataThermoHygrostatVO.getDeviceid() != null &&// varchar(100),
                verifyDataThermoHygrostatVO.getDaqtime() != null &&//  date ,
                verifyDataThermoHygrostatVO.getTemp() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getHum() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTemp1() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTemp2() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTemp3() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTemp4() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTemp5() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTemp6() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTemp7() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTemp8() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTemp9() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTemp10() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getTorque() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getRpm() != 0 &&// number(10,4),
                verifyDataThermoHygrostatVO.getAmpere() != 0// number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataThermoHygrostatVO.getUsername();
        String key = verifyDataThermoHygrostatVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataThermoHygrostat(verifyDataThermoHygrostatVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }

    @RequestMapping(value = "/verifydata_vibration", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertVerifyDataVibration(@RequestBody VerifyDataVibrationVO verifyDataVibrationVO){
        ResultVO result = new ResultVO();
        if (verifyDataVibrationVO != null &&
                verifyDataVibrationVO.getVerifyid() != null &&//  varchar(100),
                verifyDataVibrationVO.getDeviceid() != null &&// varchar(100),
                verifyDataVibrationVO.getDaqtime() != null &&//  date ,
                verifyDataVibrationVO.getDirection() != null &&// char,
                verifyDataVibrationVO.getTemp() != 0 &&// number(10,4),
                verifyDataVibrationVO.getHum() != 0// number(10,4)
        ) {
            result.setResult_code("code_003");
            result.setMessage("데이터 입력에 실패했습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        }

        String username = verifyDataVibrationVO.getUsername();
        String key = verifyDataVibrationVO.getKey();

        if (key == null && username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디와 인증 키가 없습니다.");
            result.setUsername(null);
            result.setKey(null);
            return result;
        } else if (key == null) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 없습니다. 인증 키를 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        } else if (username == null) {
            result.setResult_code("code_004");
            result.setMessage("아이디를 입력해주세요.");
            result.setUsername(null);
            result.setKey(key);
            return result;
        }

        if (!apiService.selectKey(key)) {
            result.setResult_code("code_004");
            result.setMessage("인증 키가 만료되었습니다. 새로 발급해주세요.");
            result.setUsername(username);
            result.setKey(null);
            return result;
        }

        if (apiService.insertVerifyDataVibration(verifyDataVibrationVO) != 0) {
            result.setResult_code("code_001");
            result.setMessage("데이터가 성공적으로 입력되었습니다.");
            result.setUsername(username);
            result.setKey(key);
        } else {
            result.setResult_code("code_002");
            result.setMessage("데이터베이스 이상으로 입력에 실패했습니다.");
            result.setUsername(username);
            result.setKey(key);
        }

        return result;
    }


}
