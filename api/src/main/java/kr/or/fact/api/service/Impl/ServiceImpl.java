package kr.or.fact.api.service.Impl;

import kr.or.fact.api.model.DAO;
import kr.or.fact.api.model.DTO.*;
import kr.or.fact.api.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;


@Service
public class ServiceImpl implements ApiService {
    @Autowired
    DAO dao;

    @Override
    public long insertActuatorGreenhouseComplexGimje(ActuatorGreenhouseComplexGimjeVO actuatorGreenhouseComplexGimjeVO){
        long  idx_actuator_gh_complex_g = 1;


        try {
            dao.insertActuatorGreenhouseComplexGimje(actuatorGreenhouseComplexGimjeVO);
        }
        catch (Exception e) {
            idx_actuator_gh_complex_g = 0;
        }
        return  idx_actuator_gh_complex_g;
    }

    @Override
    public long  insertActuatorGreenhouseComplexSangju(ActuatorGreenhouseComplexSangjuVO actuatorGreenhouseComplexSangjuVO) {
        long  idx_actuator_gh_complex_s = 1;


        try {
            dao.insertActuatorGreenhouseComplexSangju(actuatorGreenhouseComplexSangjuVO);
        }
        catch (Exception e){
            idx_actuator_gh_complex_s = 0;
        }
        return  idx_actuator_gh_complex_s;
    }

    @Override
    public long insertActuatorGreenhouseGlass(ActuatorGreenhouseGlassVO actuatorGreenhouseGlassVO) {
        long   idx_actuator_gh_glass = 1;


        try {
            dao.insertActuatorGreenhouseGlass(actuatorGreenhouseGlassVO);
        }
        catch (Exception e){
            idx_actuator_gh_glass = 0;
        }


        return idx_actuator_gh_glass;
    }

    @Override
    public long insertActuatorGreenhouseSingleGimje(ActuatorGreenhouseSingleGimjeVO actuatorGreenhouseSingleGimjeVO) {
        long  idx_actuator_gh_single_g = 1;


        try {
            dao.insertActuatorGreenhouseSingleGimje(actuatorGreenhouseSingleGimjeVO);
        }
        catch (Exception e){
            idx_actuator_gh_single_g = 0;
        }


        return idx_actuator_gh_single_g;
    }

    @Override
    public long insertActuatorGreenhouseSingleSangju(ActuatorGreenhouseSingleSangjuVO actuatorGreenhouseSingleSangjuVO) {
        long  idx_actuator_gh_single_s = 1;


        try {
            dao.insertActuatorGreenhouseSingleSangju(actuatorGreenhouseSingleSangjuVO);
        }
        catch (Exception e){
            idx_actuator_gh_single_s = 0;
        }


        return idx_actuator_gh_single_s;
    }

    @Override
    public long insertEnvGreenhouseComplex(EnvGreenhouseComplexVO envGreenhouseComplexVO) {

        long idx_env_gh_complex = 1;


        try {
            dao.insertEnvGreenhouseComplex(envGreenhouseComplexVO);
        }
        catch (Exception e){
            idx_env_gh_complex = 0;
        }


        return idx_env_gh_complex;
    }

    @Override
    public long insertEnvGreenhouseGlass(EnvGreenhouseGlassVO envGreenhouseGlassVO) {
        long idx_env_gh_glass = 1;


        try {
            dao.insertEnvGreenhouseGlass(envGreenhouseGlassVO);
        }
        catch (Exception e){
            idx_env_gh_glass = 0;
        }


        return idx_env_gh_glass;
    }


    @Override
    public long insertEnvGreenhouseSingle(EnvGreenhouseSingleVO envGreenhouseSingleVO) {
        long idx_env_gh_single = 1;


        try {
            dao.insertEnvGreenhouseSingle(envGreenhouseSingleVO);
        }
        catch (Exception e){
            idx_env_gh_single = 0;
        }


        return idx_env_gh_single;
    }

    @Override
    public long insertEnvWeather(EnvWeatherVO envWeatherVO) {
        long idx_env_weather = 1;


        try {
            dao.insertEnvWeather(envWeatherVO);
        }
        catch (Exception e){
            idx_env_weather = 0;
        }


        return idx_env_weather;
    }

    @Override
    public long insertNowGreenhouseComplexGimje(NowGreenhouseComplexGimjeVO nowGreenhouseComplexGimjeVO) {
        long idx_now_gh_complex_g = 1;


        try {
            dao.insertNowGreenhouseComplexGimje(nowGreenhouseComplexGimjeVO);
        }
        catch (Exception e){
            idx_now_gh_complex_g = 0;
        }


        return idx_now_gh_complex_g;
    }

    @Override
    public long insertNowGreenhouseComplexSangju(NowGreenhouseComplexSangjuVO nowGreenhouseComplexSangjuVO) {
        long idx_now_gh_complex_s = 1;


        try {
            dao.insertNowGreenhouseComplexSangju(nowGreenhouseComplexSangjuVO);
        }
        catch (Exception e){
            idx_now_gh_complex_s = 0;
        }


        return idx_now_gh_complex_s;
    }

    @Override
    public long insertNowGreenhouseGlass(NowGreenhouseGlassVO nowGreenhouseGlassVO) {
        long idx_now_gh_glass = 1;


        try {
            dao.insertNowGreenhouseGlass(nowGreenhouseGlassVO);
        }
        catch (Exception e){
            idx_now_gh_glass = 0;
        }


        return idx_now_gh_glass;
    }

    @Override
    public long insertNowGreenhouseSingleGimje(NowGreenhouseSingleGimjeVO nowGreenhouseSingleGimjeVO) {
        long idx_now_gh_single_g = 1;


        try {
            dao.insertNowGreenhouseSingleGimje(nowGreenhouseSingleGimjeVO);
        }
        catch (Exception e){
            idx_now_gh_single_g = 0;
        }


        return idx_now_gh_single_g;
    }

    @Override
    public long insertNowGreenhouseSingleSangju(NowGreenhouseSingleSangjuVO nowGreenhouseSingleSangjuVO) {
        long idx_now_gh_single_s = 1;


        try {
            dao.insertNowGreenhouseSingleSangju(nowGreenhouseSingleSangjuVO);
        }
        catch (Exception e){
            idx_now_gh_single_s = 0;
        }


        return idx_now_gh_single_s;
    }

    @Override
    public long insertNowWeather(NowWeatherVO nowWeatherVO) {
        long idx_now_weather = 1;


        try {
            dao.insertNowWeather(nowWeatherVO);
        }
        catch (Exception e){
            idx_now_weather = 0;
        }


        return idx_now_weather;
    }

    @Override
    public long insertVerifyDataACMotor(VerifyDataACMotorVO verifyDataACMotorVO) {
        long idx_verdata_acmotor = 1;


        try {
            dao.insertVerifyDataACMotor(verifyDataACMotorVO);
        }
        catch (Exception e){
            idx_verdata_acmotor = 0;
        }


        return idx_verdata_acmotor;
    }

    @Override
    public long insertVerifyDataAirconAnalysis(VerifyDataAirconAnalysisVO verifyDataAirconAnalysisVO) {
        long idx_verdata_aircon_analysis = 1;


        try {
            dao.insertVerifyDataAirconAnalysis(verifyDataAirconAnalysisVO);
        }
        catch (Exception e){
            idx_verdata_aircon_analysis = 0;
        }


        return idx_verdata_aircon_analysis;

    }

    @Override
    public long insertVerifyDataAirconEffect(VerifyDataAirconEffectVO verifyDataAirconEffectVO) {
        long idx_verdata_aircon_effect = 1;


        try {
            dao.insertVerifyDataAirconEffect(verifyDataAirconEffectVO);
        }
        catch (Exception e){
            idx_verdata_aircon_effect = 0;
        }


        return idx_verdata_aircon_effect;
    }

    @Override
    public long insertVerifyDataCO2(VerifyDataCO2VO verifyDataCO2VO) {

        long idx_verdata_co2 = 1;


        try {
            dao.insertVerifyDataCO2(verifyDataCO2VO);
        }
        catch (Exception e){
            idx_verdata_co2 = 0;
        }


        return idx_verdata_co2;
    }

    @Override
    public long insertVerifyDataDCMotor(VerifyDataDCMotorVO verifyDataDCMotorVO) {

        long idx_verdata_dcmotor = 1;


        try {
            dao.insertVerifyDataDCMotor(verifyDataDCMotorVO);
        }
        catch (Exception e){
            idx_verdata_dcmotor = 0;
        }


        return idx_verdata_dcmotor;
    }

    @Override
    public long insertVerifyDataDust(VerifyDataDustVO verifyDataDustVO) {

        long idx_verdata_dust = 1;


        try {
            dao.insertVerifyDataDust(verifyDataDustVO);
        }
        catch (Exception e){
            idx_verdata_dust = 0;
        }


        return idx_verdata_dust;
    }

    @Override
    public long insertVerifyDataECSensor(VerifyDataECSensorVO verifyDataECSensorVO) {

        long idx_verdata_ecsensor = 1;


        try {
            dao.insertVerifyDataECSensor(verifyDataECSensorVO);
        }
        catch (Exception e){
            idx_verdata_ecsensor = 0;
        }


        return idx_verdata_ecsensor;
    }

    @Override
    public long insertVerifyDataHeatFlow(VerifyDataHeatFlowVO verifyDataHeatFlowVO) {

        long idx_verdata_heatflow = 1;


        try {
            dao.insertVerifyDataHeatFlow(verifyDataHeatFlowVO);
        }
        catch (Exception e){
            idx_verdata_heatflow = 0;
        }


        return idx_verdata_heatflow;
    }

    @Override
    public long insertVerifyDataWind(VerifyDataWindVO verifyDataWindVO) {

        long idx_verdata_wind = 1;


        try {
            dao.insertVerifyDataWind(verifyDataWindVO);
        }
        catch (Exception e){
            idx_verdata_wind = 0;
        }


        return idx_verdata_wind;
    }

    @Override
    public long insertVerifyDataWaterProof(VerifyDataWaterProofVO verifyDataWaterProofVO) {

        long idx_verdata_waterproof = 1;


        try {
            dao.insertVerifyDataWaterProof(verifyDataWaterProofVO);
        }
        catch (Exception e){
            idx_verdata_waterproof = 0;
        }


        return idx_verdata_waterproof;
    }

    @Override
    public long insertVerifyDataWaterProofRobot(VerifyDataWaterProofRobotVO verifyDataWaterProofRobotVO) {

        long idx_verdata_waterproof_robot = 1;


        try {
            dao.insertVerifyDataWaterProofRobot(verifyDataWaterProofRobotVO);
        }
        catch (Exception e){
            idx_verdata_waterproof_robot = 0;
        }


        return idx_verdata_waterproof_robot;
    }

    @Override
    public long insertVerifyDataVibration(VerifyDataVibrationVO verifyDataVibrationVO) {

        long idx_verdata_vibration = 1;


        try {
            dao.insertVerifyDataVibration(verifyDataVibrationVO);
        }
        catch (Exception e){
            idx_verdata_vibration = 0;
        }


        return idx_verdata_vibration;
    }

    @Override
    public long insertVerifyDataThermoHygrostat(VerifyDataThermoHygrostatVO verifyDataThermoHygrostatVO) {

        long idx_verdata_thermohygrostat = 1;


        try {
            dao.insertVerifyDataThermoHygrostat(verifyDataThermoHygrostatVO);
        }
        catch (Exception e){
            idx_verdata_thermohygrostat = 0;
        }


        return idx_verdata_thermohygrostat;
    }

    @Override
    public long insertVerifyDataSunLight(VerifyDataSunLightVO verifyDataSunLightVO) {

        long idx_verdata_sunlight = 1;


        try {
            dao.insertVerifyDataSunLight(verifyDataSunLightVO);
        }
        catch (Exception e){
            idx_verdata_sunlight = 0;
        }


        return idx_verdata_sunlight;
    }

    @Override
    public long insertVerifyDataSunLightRawData(VerifyDataSunLightRawDataVO verifyDataSunLightRawDataVO) {
        long idx_verdata_sunlight_rawdata = 1;


        try {
            dao.insertVerifyDataSunLightRawData(verifyDataSunLightRawDataVO);
        }
        catch (Exception e){
            idx_verdata_sunlight_rawdata = 0;
        }


        return idx_verdata_sunlight_rawdata;
    }

    @Override
    public long insertVerifyDataSoilMoisture(VerifyDataSoilMoistureVO verifyDataSoilMoistureVO) {
        long idx_verdata_soilmoisture = 1;


        try {
            dao.insertVerifyDataSoilMoisture(verifyDataSoilMoistureVO);
        }
        catch (Exception e){
            idx_verdata_soilmoisture = 0;
        }


        return idx_verdata_soilmoisture;
    }

    @Override
    public long insertVerifyDataSensorTest(VerifyDataSensorTestVO verifyDataSensorTestVO) {
        long idx_verdata_sensortest = 1;


        try {
            dao.insertVerifyDataSensorTest(verifyDataSensorTestVO);
        }
        catch (Exception e){
            idx_verdata_sensortest = 0;
        }


        return idx_verdata_sensortest;
    }

    @Override
    public long insertVerifyDataPosmeasure(VerifyDataPosmeasureVO verifyDataPosmeasureVO) {
        long idx_verdata_posmeasure = 1;


        try {
            dao.insertVerifyDataPosmeasure(verifyDataPosmeasureVO);
        }
        catch (Exception e){
            idx_verdata_posmeasure = 0;
        }


        return idx_verdata_posmeasure;
    }

    @Override
    public long insertVerifyDataPH(VerifyDataPHVO verifyDataPHVO) {
        long idx_verdata_ph = 1;


        try {
            dao.insertVerifyDataPH(verifyDataPHVO);
        }
        catch (Exception e){
            idx_verdata_ph = 0;
        }


        return idx_verdata_ph;
    }

    @Override
    public long insertVerifyDataNetrientSupplier(VerifyDataNetrientSupplierVO verifyDataNetrientSupplierVO) {
        long idx_verdata_netrientsupplier = 1;


        try {
            dao.insertVerifyDataNetrientSupplier(verifyDataNetrientSupplierVO);
        }
        catch (Exception e){
            idx_verdata_netrientsupplier = 0;
        }


        return idx_verdata_netrientsupplier;
    }

    @Override
    public long insertVerifyDataMoisture(VerifyDataMoistureVO verifyDataMoistureVO) {
        long idx_verdata_moisture = 1;


        try {
            dao.insertVerifyDataMoisture(verifyDataMoistureVO);
        }
        catch (Exception e){
            idx_verdata_moisture = 0;
        }


        return idx_verdata_moisture;
    }

    @Override
    public long insertVerifyDataMaterialSmall(VerifyDataMaterialSmallVO verifyDataMaterialSmallVO) {
        long idx_verdata_material_small = 1;


        try {
            dao.insertVerifyDataMaterialSmall(verifyDataMaterialSmallVO);
        }
        catch (Exception e){
            idx_verdata_material_small = 0;
        }


        return idx_verdata_material_small;
    }

    @Override
    public long insertVerifyDataMaterialBig(VerifyDataMaterialBigVO verifyDataMaterialBigVO) {
        long idx_verdata_material_big = 1;


        try {
            dao.insertVerifyDataMaterialBig(verifyDataMaterialBigVO);
        }
        catch (Exception e){
            idx_verdata_material_big = 0;
        }


        return idx_verdata_material_big;
    }

    @Override
    public long insertVerifyDataHotShock(VerifyDataHotShockVO verifyDataHotShockVO) {
        long idx_verdata_hotshock = 1;


        try {
            dao.insertVerifyDataHotShock(verifyDataHotShockVO);
        }
        catch (Exception e){
            idx_verdata_hotshock = 0;
        }


        return idx_verdata_hotshock;
    }

    @Override
    public long insertVerifyDataHotShockRobot(VerifyDataHotShockRobotVO verifyDataHotShockRobotVO) {
        long idx_verdata_hotshock_robot = 1;


        try {
            dao.insertVerifyDataHotShockRobot(verifyDataHotShockRobotVO);
        }
        catch (Exception e){
            idx_verdata_hotshock_robot = 0;
        }


        return idx_verdata_hotshock_robot;
    }

    @Override
    public long insertKey (TokenVO tokenVO){
        long bool= 1;
        try {
            dao.insertKey(tokenVO);
        }
        catch (Exception e){
            bool =0;
        }
        return bool;
    }
    @Override
    public boolean selectKey (String key){
        boolean bool = true;
        try {
            TokenVO tokenVO = dao.selectKey(key);
            bool = LocalDateTime.now().isBefore(LocalDateTime.parse(tokenVO.getExpired()));
        }
        catch (Exception e){
            bool = false;
        }
        return bool;
    }

    @Override
    public long selectUserIdx (String userId, String password){
        long userIdx = 0;
        try{
            UserVO userVO = dao.selectUserIdx(userId, password);

            userIdx = userVO.getIdx_user();
        } catch (Exception e){

        }
        return userIdx;
    }

    @Override
    public boolean updateUserKey(TokenVO tokenVO){
        boolean bool = true;
        try{
            dao.updateUserKey(tokenVO);
        } catch (Exception e){
            bool = false;
        }
        return bool;
    }

    public boolean isValid(String key, long fac){
        boolean bool = true;
        try{
            UserFacJoinVO joinData = dao.isValid(key, fac);
            bool = LocalDateTime.now().isBefore(LocalDateTime.parse(joinData.getEnd_date()));
        } catch (Exception e){
            bool = false;
        }
        return bool;
    }

    public boolean isExistToken(long idx){
        boolean bool = true;
        try{
            dao.isExistToken(idx);
        } catch (Exception e){
            bool = false;
        }
        return bool;
    }
}
