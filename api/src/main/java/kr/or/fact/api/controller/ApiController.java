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
        if(actuatorGreenhouseComplexGimjeVO == null){
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
        if(actuatorGreenhouseComplexSangjuVO == null){
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
        if(actuatorGreenhouseGlassVO == null){
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
        if(actuatorGreenhouseSingleGimjeVO == null){
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
        if(actuatorGreenhouseSingleSangjuVO == null){
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
        if(envGreenhouseComplexVO == null){
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
        if(envGreenhouseGlassVO == null){
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
        if(envGreenhouseSingleVO == null){
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
        if(envWeatherVO == null){
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
        if(nowGreenhouseComplexGimjeVO == null){
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
        if(nowGreenhouseComplexSangjuVO == null){
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
        if(nowGreenhouseGlassVO == null){
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
        if(nowGreenhouseSingleGimjeVO == null){
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
        if(nowGreenhouseSingleSangjuVO == null){
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
        if(nowWeatherVO == null){
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
        if(verifyDataACMotorVO == null){
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
        if(verifyDataAirconAnalysisVO == null){
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
        if(verifyDataAirconEffectVO == null){
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
        if(verifyDataCO2VO == null){
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
        if(verifyDataDCMotorVO == null){
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
        if(verifyDataDustVO == null){
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
        if(verifyDataECSensorVO == null){
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
        if(verifyDataHeatFlowVO == null){
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
        if(verifyDataWindVO == null){
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
        if(verifyDataWaterProofVO == null){
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
        if(verifyDataWaterProofRobotVO == null){
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
        if (verifyDataHotShockRobotVO == null) {
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
        if (verifyDataHotShockVO == null) {
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
        if (verifyDataMaterialBigVO == null) {
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
        if (verifyDataMaterialSmallVO == null) {
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
        if (verifyDataMoistureVO == null) {
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
        if (verifyDataNetrientSupplierVO == null) {
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
        if (verifyDataPHVO == null) {
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
        if (verifyDataPosmeasureVO == null) {
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
        if (verifyDataSensorTestVO == null) {
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
        if (verifyDataSoilMoistureVO == null) {
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
        if (verifyDataSunLightRawDataVO == null) {
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
        if (verifyDataSunLightVO == null) {
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
        if (verifyDataThermoHygrostatVO == null) {
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
        if (verifyDataVibrationVO == null) {
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
