package kr.or.fact.api.controller;

import kr.or.fact.api.model.DTO.*;
import kr.or.fact.api.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;


@RequestMapping("/V2")
@Controller
public class PostAPIController {

    @Resource(name = "apiService")
    public ApiService  apiService;

    @RequestMapping(value = "/actuator_greenhouse_complex_gimje", method = RequestMethod.POST)
    public @ResponseBody
    ResultVO insertActuatorGreenhouseComplexGimje(@RequestBody ActuatorGreenhouseComplexGimjeVO actuatorGreenhouseComplexGimjeVO){
        ResultVO result = new ResultVO();
        //System.out.println(actuatorGreenhouseComplexGimjeVO.getIncurtain());
        if(     actuatorGreenhouseComplexGimjeVO == null ||
                actuatorGreenhouseComplexGimjeVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertActuatorGreenhouseComplexGimje(actuatorGreenhouseComplexGimjeVO) != 0){
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
        if(actuatorGreenhouseComplexSangjuVO==null ||
                actuatorGreenhouseComplexSangjuVO.getDaqtime()==null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertActuatorGreenhouseComplexSangju(actuatorGreenhouseComplexSangjuVO) != 0){
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
        if( actuatorGreenhouseGlassVO==null ||
                actuatorGreenhouseGlassVO.getDaqtime()==null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertActuatorGreenhouseGlass(actuatorGreenhouseGlassVO) != 0){
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
        if( actuatorGreenhouseSingleGimjeVO == null ||
                actuatorGreenhouseSingleGimjeVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertActuatorGreenhouseSingleGimje(actuatorGreenhouseSingleGimjeVO) != 0){
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
        if( actuatorGreenhouseSingleSangjuVO == null ||
                actuatorGreenhouseSingleSangjuVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertActuatorGreenhouseSingleSangju(actuatorGreenhouseSingleSangjuVO) != 0){
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
        if(  envGreenhouseComplexVO == null ||
                envGreenhouseComplexVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertEnvGreenhouseComplex(envGreenhouseComplexVO) != 0){
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
                envGreenhouseGlassVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertEnvGreenhouseGlass(envGreenhouseGlassVO) != 0){
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
                envGreenhouseSingleVO == null ||
                        envGreenhouseSingleVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertEnvGreenhouseSingle(envGreenhouseSingleVO) != 0){
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
        if(envWeatherVO == null ||
                envWeatherVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertEnvWeather(envWeatherVO) != 0){
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
        if(                nowGreenhouseComplexGimjeVO == null

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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertNowGreenhouseComplexGimje(nowGreenhouseComplexGimjeVO) != 0){
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
        if( nowGreenhouseComplexSangjuVO == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertNowGreenhouseComplexSangju(nowGreenhouseComplexSangjuVO) != 0){
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
                nowGreenhouseGlassVO == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertNowGreenhouseGlass(nowGreenhouseGlassVO) != 0){
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
        if( nowGreenhouseSingleGimjeVO == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertNowGreenhouseSingleGimje(nowGreenhouseSingleGimjeVO) != 0){
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
        if(  nowGreenhouseSingleSangjuVO == null

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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertNowGreenhouseSingleSangju(nowGreenhouseSingleSangjuVO) != 0){
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
                nowWeatherVO == null||
                        nowWeatherVO.getRaindetect() == null // char(1) 0 or 1
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 1)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertNowWeather(nowWeatherVO) != 0){
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
        if( verifyDataACMotorVO == null ||
                verifyDataACMotorVO.getVerifyid() == null ||//  varchar(100),
                verifyDataACMotorVO.getDeviceid() == null ||// varchar(100),
                verifyDataACMotorVO.getDaqtime() == null //  date ,

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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 16)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataACMotor(verifyDataACMotorVO) != 0){
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
        if( verifyDataAirconAnalysisVO == null ||
                verifyDataAirconAnalysisVO.getVerifyid() == null ||//  varchar(100),
                verifyDataAirconAnalysisVO.getDeviceid() == null ||// varchar(100),
                verifyDataAirconAnalysisVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 17)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataAirconAnalysis(verifyDataAirconAnalysisVO) != 0){
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
        if(  verifyDataAirconEffectVO == null ||
                verifyDataAirconEffectVO.getVerifyid() == null ||//  varchar(100),
                verifyDataAirconEffectVO.getDeviceid() == null ||// varchar(100),
                verifyDataAirconEffectVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 18)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataAirconEffect(verifyDataAirconEffectVO) != 0){
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
        if(  verifyDataCO2VO == null ||
                verifyDataCO2VO.getVerifyid() == null ||//  varchar(100),
                verifyDataCO2VO.getDeviceid() == null ||// varchar(100),
                verifyDataCO2VO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 19)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataCO2(verifyDataCO2VO) != 0){
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
        if( verifyDataDCMotorVO == null ||
                verifyDataDCMotorVO.getVerifyid() == null ||//  varchar(100),
                verifyDataDCMotorVO.getDeviceid() == null ||// varchar(100),
                verifyDataDCMotorVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 20)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataDCMotor(verifyDataDCMotorVO) != 0){
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
        if(verifyDataDustVO == null ||
                verifyDataDustVO.getVerifyid() == null ||//  varchar(100),
                verifyDataDustVO.getDeviceid() == null ||// varchar(100),
                verifyDataDustVO.getTesttime() == null ||//  date ,
                verifyDataDustVO.getMethod() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 21)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataDust(verifyDataDustVO) != 0){
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
        if(  verifyDataECSensorVO == null ||
                verifyDataECSensorVO.getVerifyid() == null ||//  varchar(100),
                verifyDataECSensorVO.getDeviceid() == null ||// varchar(100),
                verifyDataECSensorVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 22)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataECSensor(verifyDataECSensorVO) != 0){
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
        if( verifyDataHeatFlowVO == null ||
                verifyDataHeatFlowVO.getDeviceid() == null ||// varchar(100),
                verifyDataHeatFlowVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 23)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataHeatFlow(verifyDataHeatFlowVO) != 0){
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
        if( verifyDataWindVO == null ||
                verifyDataWindVO.getVerifyid() == null ||//  varchar(100),
                verifyDataWindVO.getDeviceid() == null ||// varchar(100),
                verifyDataWindVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 24)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataWind(verifyDataWindVO) != 0){
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
        if(                verifyDataWaterProofVO == null ||
                verifyDataWaterProofVO.getVerifyid() == null ||//  varchar(100),
                verifyDataWaterProofVO.getDeviceid() == null ||// varchar(100),
                verifyDataWaterProofVO.getDaqtime() == null

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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 25)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataWaterProof(verifyDataWaterProofVO) != 0){
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
        if(  verifyDataWaterProofRobotVO == null ||
                verifyDataWaterProofRobotVO.getVerifyid() == null ||//  varchar(100),
                verifyDataWaterProofRobotVO.getDeviceid() == null ||// varchar(100),
                verifyDataWaterProofRobotVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 26)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataWaterProofRobot(verifyDataWaterProofRobotVO) != 0){
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
        if (verifyDataHotShockRobotVO == null ||
                verifyDataHotShockRobotVO.getVerifyid() == null ||//  varchar(100),
                verifyDataHotShockRobotVO.getDeviceid() == null ||// varchar(100),
                verifyDataHotShockRobotVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 27)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataHotShockRobot(verifyDataHotShockRobotVO) != 0) {
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
        if (verifyDataHotShockVO == null ||
                verifyDataHotShockVO.getVerifyid() == null ||//  varchar(100),
                verifyDataHotShockVO.getDeviceid() == null ||// varchar(100),
                verifyDataHotShockVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 28)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataHotShock(verifyDataHotShockVO) != 0) {
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
                verifyDataMaterialBigVO == null ||
                        verifyDataMaterialBigVO.getVerifyid() == null ||//  varchar(100),
                        verifyDataMaterialBigVO.getDeviceid() == null ||// varchar(100),
                        verifyDataMaterialBigVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 29)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataMaterialBig(verifyDataMaterialBigVO) != 0) {
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
        if (    verifyDataMaterialSmallVO == null ||
                verifyDataMaterialSmallVO.getVerifyid() == null ||//  varchar(100),
                verifyDataMaterialSmallVO.getDeviceid() == null ||// varchar(100),
                verifyDataMaterialSmallVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 30)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataMaterialSmall(verifyDataMaterialSmallVO) != 0) {
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
        if ( verifyDataMoistureVO == null ||
                verifyDataMoistureVO.getVerifyid() == null ||//  varchar(100),
                verifyDataMoistureVO.getDeviceid() == null ||// varchar(100),
                verifyDataMoistureVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 31)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataMoisture(verifyDataMoistureVO) != 0) {
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
        if (  verifyDataNetrientSupplierVO == null ||
                verifyDataNetrientSupplierVO.getVerifyid() == null ||//  varchar(100),
                verifyDataNetrientSupplierVO.getDeviceid() == null ||// varchar(100),
                verifyDataNetrientSupplierVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 32)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataNetrientSupplier(verifyDataNetrientSupplierVO) != 0) {
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
        if ( verifyDataPHVO == null ||
                verifyDataPHVO.getVerifyid() == null ||//  varchar(100),
                verifyDataPHVO.getDeviceid() == null ||// varchar(100),
                verifyDataPHVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 33)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataPH(verifyDataPHVO) != 0) {
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
        if (verifyDataPosmeasureVO == null ||
                verifyDataPosmeasureVO.getVerifyid() == null ||//  varchar(100),
                verifyDataPosmeasureVO.getDeviceid() == null ||// varchar(100),
                verifyDataPosmeasureVO.getDevicekind() == null ||// varchar(100),
                verifyDataPosmeasureVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 34)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataPosmeasure(verifyDataPosmeasureVO) != 0) {
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
        if (   verifyDataSensorTestVO == null ||
                verifyDataSensorTestVO.getVerifyid() == null ||//  varchar(100),
                verifyDataSensorTestVO.getDeviceid() == null ||// varchar(100),
                verifyDataSensorTestVO.getDaqtime() == null ||//  date ,

                verifyDataSensorTestVO.getValuename1() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename2() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename3() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename4() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename5() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename6() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename7() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename8() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename9() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename10() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename11() == null ||// varchar(100),
                verifyDataSensorTestVO.getValuename12() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit1() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit2() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit3() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit4() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit5() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit6() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit7() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit8() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit9() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit10() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit11() == null ||// varchar(100),
                verifyDataSensorTestVO.getValueunit12() == null ||// varchar(100),
                verifyDataSensorTestVO.getDivaluename1() == null ||// varchar(100),
                verifyDataSensorTestVO.getDivaluename2() == null ||// varchar(100),
                verifyDataSensorTestVO.getDivaluename3() == null ||// varchar(100),
                verifyDataSensorTestVO.getDivaluename4() == null ||// varchar(100),
                verifyDataSensorTestVO.getDovaluename1() == null ||// varchar(100),
                verifyDataSensorTestVO.getDovaluename2() == null ||// varchar(100),
                verifyDataSensorTestVO.getAovaluename1() == null ||// varchar(100),
                verifyDataSensorTestVO.getAovaluename2() == null ||// varchar(100),
                verifyDataSensorTestVO.getAovalueunit1() == null ||// varchar(100),
                verifyDataSensorTestVO.getAovalueunit2() == null// varchar(100)
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 35)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataSensorTest(verifyDataSensorTestVO) != 0) {
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
        if (verifyDataSoilMoistureVO == null ||
                verifyDataSoilMoistureVO.getVerifyid() == null ||//  varchar(100),
                verifyDataSoilMoistureVO.getDeviceid() == null ||// varchar(100),
                verifyDataSoilMoistureVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 36)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataSoilMoisture(verifyDataSoilMoistureVO) != 0) {
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
        if ( verifyDataSunLightRawDataVO == null ||
                verifyDataSunLightRawDataVO.getVerifyid() == null ||//  varchar(100),
                verifyDataSunLightRawDataVO.getDeviceid() == null ||// varchar(100),
                verifyDataSunLightRawDataVO.getDaqtime() == null ||//  date ,
                verifyDataSunLightRawDataVO.getUnit() == null ||// varchar(100),
                verifyDataSunLightRawDataVO.getFrontrear() == null ||// char,
                verifyDataSunLightRawDataVO.getVerifystep() == null// char
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 37)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataSunLightRawData(verifyDataSunLightRawDataVO) != 0) {
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
                verifyDataSunLightVO == null ||
                        verifyDataSunLightVO.getVerifyid() == null ||//  varchar(100),
                        verifyDataSunLightVO.getDeviceid() == null ||// varchar(100),
                        verifyDataSunLightVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 38)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataSunLight(verifyDataSunLightVO) != 0) {
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
        if (  verifyDataThermoHygrostatVO == null ||
                verifyDataThermoHygrostatVO.getVerifyid() == null ||//  varchar(100),
                verifyDataThermoHygrostatVO.getDeviceid() == null ||// varchar(100),
                verifyDataThermoHygrostatVO.getDaqtime() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 39)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataThermoHygrostat(verifyDataThermoHygrostatVO) != 0) {
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
        if (verifyDataVibrationVO == null ||
                verifyDataVibrationVO.getVerifyid() == null ||//  varchar(100),
                verifyDataVibrationVO.getDeviceid() == null ||// varchar(100),
                verifyDataVibrationVO.getDaqtime() == null ||//  date ,
                verifyDataVibrationVO.getDirection() == null
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
            result.setUsername(username);
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
            result.setUsername(username);
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

        if(!apiService.isValid(key, 40)){
            result.setResult_code("code_004");
            result.setMessage("해당 장비에 대한 데이터 생성 권한이 만료되었거나 없습니다.");
            result.setUsername(username);
            result.setKey(key);
        }
        else if (apiService.insertVerifyDataVibration(verifyDataVibrationVO) != 0) {
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
