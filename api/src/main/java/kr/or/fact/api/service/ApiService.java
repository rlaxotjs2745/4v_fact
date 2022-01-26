package kr.or.fact.api.service;

import kr.or.fact.api.model.DTO.*;

public interface ApiService {
    //add어쩌구
    public long insertActuatorGreenhouseComplexGimje(ActuatorGreenhouseComplexGimjeVO actuatorGreenhouseComplexGimjeVO);

    public long insertActuatorGreenhouseComplexSangju(ActuatorGreenhouseComplexSangjuVO actuatorGreenhouseComplexSangjuVO);

    public long insertActuatorGreenhouseGlass(ActuatorGreenhouseGlassVO actuatorGreenhouseGlassVO);

    public long insertActuatorGreenhouseSingleGimje(ActuatorGreenhouseSingleGimjeVO actuatorGreenhouseSingleGimjeVO);

    public long insertActuatorGreenhouseSingleSangju(ActuatorGreenhouseSingleSangjuVO actuatorGreenhouseSingleSangjuVO);

    public long insertEnvGreenhouseComplex(EnvGreenhouseComplexVO envGreenhouseComplexVO);

    public long insertEnvGreenhouseGlass(EnvGreenhouseGlassVO envGreenhouseGlassVO);

    public long insertEnvGreenhouseSingle(EnvGreenhouseSingleVO envGreenhouseSingleVO);

    public long insertEnvWeather(EnvWeatherVO envWeatherVO);

    public long insertNowGreenhouseComplexGimje(NowGreenhouseComplexGimjeVO nowGreenhouseComplexGimjeVO);

    public long insertNowGreenhouseComplexSangju(NowGreenhouseComplexSangjuVO nowGreenhouseComplexSangjuVO);

    public long insertNowGreenhouseGlass(NowGreenhouseGlassVO nowGreenhouseGlassVO);

    public long insertNowGreenhouseSingleGimje(NowGreenhouseSingleGimjeVO nowGreenhouseSingleGimjeVO);

    public long insertNowGreenhouseSingleSangju(NowGreenhouseSingleSangjuVO nowGreenhouseSingleSangjuVO);

    public long insertNowWeather(NowWeatherVO nowWeatherVO);

    public long insertVerifyDataACMotor(VerifyDataACMotorVO verifyDataACMotorVO);

    public long insertVerifyDataAirconAnalysis(VerifyDataAirconAnalysisVO verifyDataAirconAnalysisVO);

    public long insertVerifyDataAirconEffect(VerifyDataAirconEffectVO verifyDataAirconEffectVO);

    public long insertVerifyDataCO2(VerifyDataCO2VO verifyDataCO2VO);

    public long insertVerifyDataDCMotor(VerifyDataDCMotorVO verifyDataDCMotorVO);

    public long insertVerifyDataDust(VerifyDataDustVO verifyDataDustVO);

    public long insertVerifyDataECSensor(VerifyDataECSensorVO verifyDataECSensorVO);

    public long insertVerifyDataHeatFlow(VerifyDataHeatFlowVO verifyDataHeatFlowVO);

    public long insertVerifyDataWind (VerifyDataWindVO  verifyDataWindVO);

    public long insertVerifyDataWaterProof( VerifyDataWaterProofVO  verifyDataWaterProofVO);

    public long insertVerifyDataWaterProofRobot(VerifyDataWaterProofRobotVO verifyDataWaterProofRobotVO);

    public long insertVerifyDataVibration(VerifyDataVibrationVO verifyDataVibrationVO);

    public long insertVerifyDataThermoHygrostat(VerifyDataThermoHygrostatVO verifyDataThermoHygrostatVO);

    public long insertVerifyDataSunLight(VerifyDataSunLightVO verifyDataSunLightVO);

    public long insertVerifyDataSunLightRawData(VerifyDataSunLightRawDataVO verifyDataSunLightRawDataVO);

    public long insertVerifyDataSoilMoisture(VerifyDataSoilMoistureVO verifyDataSoilMoistureVO);

    public long insertVerifyDataSensorTest(VerifyDataSensorTestVO verifyDataSensorTestVO);

    public long insertVerifyDataPosmeasure(VerifyDataPosmeasureVO verifyDataPosmeasureVO);

    public long insertVerifyDataPH(VerifyDataPHVO verifyDataPHVO);

    public long insertVerifyDataNetrientSupplier(VerifyDataNetrientSupplierVO verifyDataNetrientSupplierVO);

    public long insertVerifyDataMoisture(VerifyDataMoistureVO verifyDataMoistureVO);

    public long insertVerifyDataMaterialSmall(VerifyDataMaterialSmallVO verifyDataMaterialSmallVO);

    public long insertVerifyDataMaterialBig(VerifyDataMaterialBigVO verifyDataMaterialBigVO);

    public long insertVerifyDataHotShock( VerifyDataHotShockVO  verifyDataHotShockVO);

    public long insertVerifyDataHotShockRobot(VerifyDataHotShockRobotVO verifyDataHotShockRobotVO);

    public long insertKey (TokenVO tokenVO);

    public boolean selectKey (String key);

    public long selectUserIdx (String userId);

    public boolean updateUserKey (TokenVO tokenVO);

    public boolean isValid(String key, long fac);

    public boolean isExistToken(long idx);
}
