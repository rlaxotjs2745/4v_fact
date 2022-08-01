package kr.or.fact.api.service.Impl;

import kr.or.fact.api.model.ApiMapper;
import kr.or.fact.api.model.DTO.*;
import kr.or.fact.api.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;


@Service("apiService")
public class ApiServiceImpl implements ApiService {

    private final ApiMapper apiMapper;

    @Autowired
    public ApiServiceImpl(ApiMapper apiMapper){
        this.apiMapper = apiMapper;
    }

    @Override
    public long insertActuatorGreenhouseComplexGimje(ActuatorGreenhouseComplexGimjeVO actuatorGreenhouseComplexGimjeVO){
        long  idx_actuator_gh_complex_g = 1;


        try {
            apiMapper.insertActuatorGreenhouseComplexGimje(actuatorGreenhouseComplexGimjeVO);
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
            apiMapper.insertActuatorGreenhouseComplexSangju(actuatorGreenhouseComplexSangjuVO);
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
            apiMapper.insertActuatorGreenhouseGlass(actuatorGreenhouseGlassVO);
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
            apiMapper.insertActuatorGreenhouseSingleGimje(actuatorGreenhouseSingleGimjeVO);
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
            apiMapper.insertActuatorGreenhouseSingleSangju(actuatorGreenhouseSingleSangjuVO);
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
            apiMapper.insertEnvGreenhouseComplex(envGreenhouseComplexVO);
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
            apiMapper.insertEnvGreenhouseGlass(envGreenhouseGlassVO);
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
            apiMapper.insertEnvGreenhouseSingle(envGreenhouseSingleVO);
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
            apiMapper.insertEnvWeather(envWeatherVO);
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
            apiMapper.insertNowGreenhouseComplexGimje(nowGreenhouseComplexGimjeVO);
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
            apiMapper.insertNowGreenhouseComplexSangju(nowGreenhouseComplexSangjuVO);
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
            apiMapper.insertNowGreenhouseGlass(nowGreenhouseGlassVO);
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
            apiMapper.insertNowGreenhouseSingleGimje(nowGreenhouseSingleGimjeVO);
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
            apiMapper.insertNowGreenhouseSingleSangju(nowGreenhouseSingleSangjuVO);
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
            apiMapper.insertNowWeather(nowWeatherVO);
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
            apiMapper.insertVerifyDataACMotor(verifyDataACMotorVO);
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
            apiMapper.insertVerifyDataAirconAnalysis(verifyDataAirconAnalysisVO);
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
            apiMapper.insertVerifyDataAirconEffect(verifyDataAirconEffectVO);
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
            apiMapper.insertVerifyDataCO2(verifyDataCO2VO);
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
            apiMapper.insertVerifyDataDCMotor(verifyDataDCMotorVO);
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
            apiMapper.insertVerifyDataDust(verifyDataDustVO);
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
            apiMapper.insertVerifyDataECSensor(verifyDataECSensorVO);
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
            apiMapper.insertVerifyDataHeatFlow(verifyDataHeatFlowVO);
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
            apiMapper.insertVerifyDataWind(verifyDataWindVO);
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
            apiMapper.insertVerifyDataWaterProof(verifyDataWaterProofVO);
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
            apiMapper.insertVerifyDataWaterProofRobot(verifyDataWaterProofRobotVO);
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
            apiMapper.insertVerifyDataVibration(verifyDataVibrationVO);
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
            apiMapper.insertVerifyDataThermoHygrostat(verifyDataThermoHygrostatVO);
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
            apiMapper.insertVerifyDataSunLight(verifyDataSunLightVO);
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
            apiMapper.insertVerifyDataSunLightRawData(verifyDataSunLightRawDataVO);
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
            apiMapper.insertVerifyDataSoilMoisture(verifyDataSoilMoistureVO);
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
            apiMapper.insertVerifyDataSensorTest(verifyDataSensorTestVO);
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
            apiMapper.insertVerifyDataPosmeasure(verifyDataPosmeasureVO);
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
            apiMapper.insertVerifyDataPH(verifyDataPHVO);
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
            apiMapper.insertVerifyDataNetrientSupplier(verifyDataNetrientSupplierVO);
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
            apiMapper.insertVerifyDataMoisture(verifyDataMoistureVO);
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
            apiMapper.insertVerifyDataMaterialSmall(verifyDataMaterialSmallVO);
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
            apiMapper.insertVerifyDataMaterialBig(verifyDataMaterialBigVO);
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
            apiMapper.insertVerifyDataHotShock(verifyDataHotShockVO);
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
            apiMapper.insertVerifyDataHotShockRobot(verifyDataHotShockRobotVO);
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
            apiMapper.insertKey(tokenVO);
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
            TokenVO tokenVO =apiMapper.selectKey(key);
            bool = LocalDateTime.now().isBefore(LocalDateTime.parse(tokenVO.getExpired()));
        }
        catch (Exception e){
            bool = false;
        }
        return bool;
    }

    @Override
    public long selectUserIdx (String userId){
        long userIdx = 0;
        try{
            UserVO userVO =apiMapper.selectUserIdx(userId);

            userIdx = userVO.getIdx_user();
        } catch (Exception e){

        }
        return userIdx;
    }

    @Override
    public boolean updateUserKey(TokenVO tokenVO){
        boolean bool = true;
        try{
            apiMapper.updateUserKey(tokenVO);
        } catch (Exception e){
            bool = false;
        }
        return bool;
    }

    public boolean isValid(String key, long fac){
        boolean bool = true;
        try{
            UserFacJoinVO joinData =apiMapper.isValid(key, fac);
            bool = LocalDateTime.now().isBefore(LocalDateTime.parse(joinData.getEnd_date()));
        } catch (Exception e){
            bool = false;
        }
        return bool;
    }

    public boolean isExistToken(long idx){
        boolean bool = true;
        try{
            TokenVO token =apiMapper.isExistToken(idx);
            if(token == null || token.getIdx_user() == 0){
                bool = false;
            }
        } catch (Exception e){
            bool = false;
        }
        return bool;
    }

    public boolean isValidUser(long idx, String fac){
        boolean bool = true;

        UserFacJoinVO userFacJoinVO =apiMapper.isValidUser(idx, fac);

        if(userFacJoinVO==null)
            bool=false;

        return bool;
    }


    public IdxResultVO selectPagebyIdx(long startNum, long count, long pageNum){
        IdxResultVO idxResultVO = new IdxResultVO();
        ArrayList<DataVO> resultEntitys = new ArrayList<>();
        ArrayList<IdxModifyVO> resultArr = apiMapper.selectPagebyIdx(startNum, count, pageNum);
        for (int i = 0; i <= resultArr.size() -1; i++){
            DataVO dataVO = new DataVO();
            if(i == 0){
                idxResultVO.setTotalPageNum(resultArr.get(i).getMaxvalue());
            }
            dataVO.setIdx_shinhandata(resultArr.get(i).getIdx_shinhandata());
            dataVO.setRec_data(resultArr.get(i).getRec_data());
            dataVO.setRec_reg_dt(resultArr.get(i).getRec_reg_dt());
            dataVO.setReg_dt(resultArr.get(i).getReg_dt());

            resultEntitys.add(dataVO);
        }
        idxResultVO.setDataArr(resultEntitys);

        return idxResultVO;
    }

    public ArrayList<DataVO> selectbyTime(String fromTime, String toTime){
        ArrayList<DataVO> result = apiMapper.selectbyTime(fromTime, toTime);
        return result;
    }

    public ArrayList<EnvInfoVO> selectbyGuyokEnv(long guyok, String farm_cd){
        ArrayList<MetaDataVO> metaDataVO = apiMapper.selectbyGuyokEnv(guyok, farm_cd);
        ArrayList<EnvInfoVO> result = new ArrayList<>();

        for(int i = 0; i < metaDataVO.size(); i++){
            EnvInfoVO envInfoVO = new EnvInfoVO();
            InternalEnvVO internalEnvVO = new InternalEnvVO();
            ExternalEnvVO externalEnvVO = new ExternalEnvVO();
            RootZoneEnvVO rootZoneEnvVO = new RootZoneEnvVO();

            internalEnvVO.setXabhum(metaDataVO.get(i).getXabhum());
            internalEnvVO.setXco2(metaDataVO.get(i).getXco2());
            internalEnvVO.setXdhum(metaDataVO.get(i).getXdhum());
            internalEnvVO.setXinhum1(metaDataVO.get(i).getXinhum1());
            internalEnvVO.setXinhum2(metaDataVO.get(i).getXinhum2());
            internalEnvVO.setXinhum3(metaDataVO.get(i).getXinhum3());
            internalEnvVO.setXsunvol(metaDataVO.get(i).getXsunvol());
            internalEnvVO.setXintemp1(metaDataVO.get(i).getXintemp1());
            internalEnvVO.setXintemp2(metaDataVO.get(i).getXintemp2());
            internalEnvVO.setXintemp3(metaDataVO.get(i).getXintemp3());

            externalEnvVO.setXouttemp(metaDataVO.get(i).getXouttemp());
            externalEnvVO.setXrain(metaDataVO.get(i).getXrain());
            externalEnvVO.setXwinddirec(metaDataVO.get(i).getXwinddirec());

            rootZoneEnvVO.setXec1(metaDataVO.get(i).getXec1());
            rootZoneEnvVO.setXec2(metaDataVO.get(i).getXec2());
            rootZoneEnvVO.setXgndhum(metaDataVO.get(i).getXgndhum());
            rootZoneEnvVO.setXgndtemp(metaDataVO.get(i).getXgndtemp());
            rootZoneEnvVO.setXph1(metaDataVO.get(i).getXph1());
            rootZoneEnvVO.setXph2(metaDataVO.get(i).getXph2());

            envInfoVO.setInternalEnvVO(internalEnvVO);
            envInfoVO.setExternalEnvVO(externalEnvVO);
            envInfoVO.setRootZoneEnvVO(rootZoneEnvVO);

            result.add(envInfoVO);
        }

        return result;
    }
    public ArrayList<ControlInfoVO> selectbyGuyokContol (long guyok,String farm_cd){


        ArrayList<MetaDataVO> metaDataVO = apiMapper.selectbyGuyokEnv(guyok,farm_cd);
        ArrayList<ControlInfoVO> result = new ArrayList<>();
        for(int i = 0; i < metaDataVO.size(); i++) {
            ControlInfoVO controlInfoVO = new ControlInfoVO();
            TopWindowVO topWindowVO = new TopWindowVO();
            SideWindowVO sideWindowVO = new SideWindowVO();
            Curtain1VO curtain1VO = new Curtain1VO();
            Curtain2VO curtain2VO = new Curtain2VO();
            Curtain3VO curtain3VO = new Curtain3VO();
            Curtain4VO curtain4VO = new Curtain4VO();
            Fan1VO fan1VO = new Fan1VO();
            Fan2VO fan2VO = new Fan2VO();
            LightVO lightVO = new LightVO();
            ThreeWayVO threeWayVO = new ThreeWayVO();
            WsoVO wsoVO = new WsoVO();
            HeaterVO heaterVO = new HeaterVO();
            HunVO hunVO = new HunVO();
            Co2VO co2VO = new Co2VO();
            SprayVO sprayVO = new SprayVO();
            BoilerVO boilerVO = new BoilerVO();


            topWindowVO.setXskyauto(metaDataVO.get(i).getXskyauto());
            topWindowVO.setXskyvol1(metaDataVO.get(i).getXskyvol1());
            topWindowVO.setXskyvol2(metaDataVO.get(i).getXskyvol2());
            sideWindowVO.setXsideauto(metaDataVO.get(i).getXsideauto());
            sideWindowVO.setXsidevol1(metaDataVO.get(i).getXsidevol1());
            sideWindowVO.setXsidevol2(metaDataVO.get(i).getXsidevol2());
            curtain1VO.setXcur1auto(metaDataVO.get(i).getXcur1auto());
            curtain1VO.setXcur1vol(metaDataVO.get(i).getXcur1vol());
            curtain2VO.setXcur2auto(metaDataVO.get(i).getXcur2auto());
            curtain2VO.setXcur2vol(metaDataVO.get(i).getXcur2vol());
            curtain3VO.setXcur3auto(metaDataVO.get(i).getXcur3auto());
            curtain3VO.setXcur3vol(metaDataVO.get(i).getXcur3vol());
            curtain4VO.setXcur4auto(metaDataVO.get(i).getXcur4auto());
            curtain4VO.setXcur4vol(metaDataVO.get(i).getXcur4vol());
            fan1VO.setXfan1run(metaDataVO.get(i).getXfan1run());
            fan1VO.setXfan1auto(metaDataVO.get(i).getXfan1auto());
            fan2VO.setXfan2auto(metaDataVO.get(i).getXfan2auto());
            fan2VO.setXfan2run(metaDataVO.get(i).getXfan2run());
            lightVO.setXlightauto(metaDataVO.get(i).getXlightauto());
            lightVO.setXlightrun(metaDataVO.get(i).getXlightrun());
            threeWayVO.setX3way1auto(metaDataVO.get(i).getX3way1auto());
            threeWayVO.setX3way2auto(metaDataVO.get(i).getX3way2auto());
            threeWayVO.setXwatertemp2(metaDataVO.get(i).getXwatertemp2());
            wsoVO.setXspauto(metaDataVO.get(i).getXspauto());
            wsoVO.setXsprun(metaDataVO.get(i).getXsprun());
            heaterVO.setXheaterauto(metaDataVO.get(i).getXheaterauto());
            heaterVO.setXheaterrun(metaDataVO.get(i).getXheaterrun());
            hunVO.setXhunauto(metaDataVO.get(i).getXhunauto());
            hunVO.setXhunrun(metaDataVO.get(i).getXhunrun());
            co2VO.setXco2auto(metaDataVO.get(i).getXco2auto());
            co2VO.setXco2run(metaDataVO.get(i).getXco2run());
            sprayVO.setXsprayrun(metaDataVO.get(i).getXsprayrun());
            boilerVO.setXborun(metaDataVO.get(i).getXborun());

            controlInfoVO.setBoilerVO(boilerVO);
            controlInfoVO.setCo2VO(co2VO);
            controlInfoVO.setCurtain1VO(curtain1VO);
            controlInfoVO.setCurtain2VO(curtain2VO);
            controlInfoVO.setCurtain3VO(curtain3VO);
            controlInfoVO.setCurtain4VO(curtain4VO);
            controlInfoVO.setFan1VO(fan1VO);
            controlInfoVO.setFan2VO(fan2VO);
            controlInfoVO.setLightVO(lightVO);
            controlInfoVO.setThreeWayVO(threeWayVO);
            controlInfoVO.setWsoVO(wsoVO);
            controlInfoVO.setHeaterVO(heaterVO);
            controlInfoVO.setHunVO(hunVO);
            controlInfoVO.setSprayVO(sprayVO);
            controlInfoVO.setTopWindowVO(topWindowVO);
            controlInfoVO.setSideWindowVO(sideWindowVO);
            result.add(controlInfoVO);
        }
        return result;

    }
}
