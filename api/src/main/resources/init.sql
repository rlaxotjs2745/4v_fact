CREATE TABLE TOKEN (
                       idx_user number(10,4) PRIMARY KEY,
                       key varchar(100),
                       username varchar(100),
                       created varchar(100),
                       expired varchar(100)
);

CREATE TABLE ASSET (
                       idx_asset number(32) PRIMARY KEY,
                       asset_code varchar2(40),
                       asset_main_category_code	number(4),
                       asset_sub_category_code	number(4),
                       asset_detail_category_code	number(4),
                       asset_name	varchar2(100),
                       asset_status number(4),
                       is_asset_photo_file	number(4),
                       asset_manufacture	varchar2(100),
                       asset_brand	varchar2(100),
                       asset_model_name	varchar2(100),
                       asset_pid	varchar(100),
                       asset_manager_name	varchar2(20),
                       asset_loc	varchar2(100),
                       asset_spec	varchar2(100),
                       representative_use	varchar2(100),
                       memo	varchar2(1000),
                       idx_admin	number(32),
                       reg_date  varchar2(100),
                       last_upd_date varchar2(100)
);

CREATE TABLE TB_USER(
                        idx_user number	(32) PRIMARY KEY,
                        user_id	varchar2	(255),
                        user_pw varchar2	(255),
                        user_name varchar2	(40),
                        addr varchar2	(255),
                        tel_num varchar2	(20),
                        mphone_num varchar2	(20),
                        email varchar2	(356),
                        user_type number	(4)	,
                        ban_memo varchar2	(1000),
                        is_service_agree number	(4)	,
                        service_agree_ver number	(4)	,
                        is_privacy_agree number	(4)	,
                        privacy_agree_ver number	(4)	,
                        is_third_party_agree number	(4)	,
                        third_party_agree_ver number	(4)	,
                        is_maketing_agree number	(4)	,
                        maketing_agree_ver number	(4),
                        auth_status number	(4)	,
                        is_applicant number	(4)	,
                        is_corporate_member number	(4),
                        idx_corp_info number	(32),
                        sign_in_type number	(4)	,
                        is_sms_agree number	(4)	,
                        is_email_agree number (4),
                        reg_date varchar2(100),
                        last_upd_date varchar2(100)
);


CREATE TABLE USER_FAC_JOIN (
                               idx_user_fac_join number(10,4) PRIMARY KEY,
                               idx_user number(10,4),
                               idx_asset number(10,4),
                               start_date varchar2(100),
                               end_date varchar2(100),
                               reg_date varchar2(100),
                               CONSTRAINT idx_user41 FOREIGN KEY (idx_user) REFERENCES TB_USER(idx_user),
                               CONSTRAINT idx_asset1 FOREIGN KEY (idx_asset) REFERENCES ASSET(idx_asset)
);


CREATE TABLE ENV_WEATHER (
                             idx_env_weather number(10,4) PRIMARY KEY,
                             daqtime date,
                             temp number(10,4),
                             hum number(10,4),
                             insolation number(10,4),
                             winddirection number(10,4),
                             windspeed number(10,4),
                             raindetect number(10,4),
                             idx_user number(10,4),
                             CONSTRAINT idx_user1 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE NOW_WEATHER (
                             idx_now_weather number(10,4) PRIMARY KEY,
                             temp number(10,4),
                             hum number(10,4),
                             insolation number(10,4),
                             winddirection number(10,4),
                             windspeed number(10,4),
                             raindetect char(1),
                             idx_user number(10,4),
                             CONSTRAINT idx_user2 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE ENV_GREENHOUSE_GLASS (
                                      idx_env_gh_glass number(10,4) PRIMARY KEY,
                                      daqtime date,
                                      temp number(10,4),
                                      hum number(10,4),
                                      light number(10,4),
                                      co2 number(10,4),
                                      soiltension number(10,4),
                                      soilph number(10,4),
                                      soilmoisture number(10,4),
                                      soilec number(10,4),
                                      soiltemp number(10,4),
                                      idx_user number(10,4),
                                      CONSTRAINT idx_user3 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE ENV_GREENHOUSE_COMPLEX (
                                        idx_env_gh_complex number(10,4) PRIMARY KEY,
                                        daqtime date,
                                        temp number(10,4),
                                        hum number(10,4),
                                        light number(10,4),
                                        co2 number(10,4),
                                        soiltension number(10,4),
                                        soilph number(10,4),
                                        soilmoisture number(10,4),
                                        soilec number(10,4),
                                        soiltemp number(10,4),
                                        idx_user number(10,4),
                                        CONSTRAINT idx_user4 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE ENV_GREENHOUSE_SINGLE (
                                       idx_env_gh_single number(10,4) PRIMARY KEY,
                                       daqtime date,
                                       temp number(10,4),
                                       hum number(10,4),
                                       light number(10,4),
                                       co2 number(10,4),
                                       soiltension number(10,4),
                                       soilph number(10,4),
                                       soilmoisture number(10,4),
                                       soilec number(10,4),
                                       soiltemp number(10,4),
                                       idx_user number(10,4),
                                       CONSTRAINT idx_user5 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE ACTUATOR_GREENHOUSE_GLASS (
                                           idx_actuator_gh_glass number(10,4) PRIMARY KEY,
                                           daqtime date,
                                           roofwindow_l float(63),
                                           roofwindow_r float(63),
                                           outcurtain  float(63),
                                           incurtain  float(63),
                                           idx_user number(10,4),
                                           CONSTRAINT idx_user6 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE ACTUATOR_GREENHOUSE_COMPLEX_G (
                                               idx_actuator_gh_complex_g number(10,4) PRIMARY KEY,
                                               daqtime  date,
                                               roofwindow_l1  float(63),
                                               roofwindow_l2 float(63),
                                               roofwindow_l3 float(63),
                                               roofwindow_r1 float(63),
                                               roofwindow_r2 float(63),
                                               roofwindow_r3 float(63),
                                               outcurtain  float(63),
                                               incurtain  float(63),
                                               idx_user number(10,4),
                                               CONSTRAINT idx_user7 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE ACTUATOR_GREENHOUSE_COMPLEX_S (
                                               idx_actuator_gh_complex_s number(10,4) PRIMARY KEY,
                                               daqtime date,
                                               roofwindow_l float(63),
                                               roofwindow_r float(63),
                                               outcurtain  float(63),
                                               incurtain  float(63),
                                               idx_user number(10,4),
                                               CONSTRAINT idx_user8 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE ACTUATOR_GREENHOUSE_SINGLE_G (
                                              idx_actuator_gh_single_g number(10,4) PRIMARY KEY,
                                              daqtime  date,
                                              outsidewindow_l float(63),
                                              outsidewindow_r float(63),
                                              insidewindow_l  float(63),
                                              insidewindow_r  float(63),
                                              curtain_l float(63),
                                              curtain_r float(63),
                                              sidescreen_l float(63),
                                              sidescreen_r float(63),
                                              idx_user number(10,4),
                                              CONSTRAINT idx_user9 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE ACTUATOR_GREENHOUSE_SINGLE_S (
                                              idx_actuator_gh_single_s number(10,4) PRIMARY KEY,
                                              daqtime  date,
                                              roofwindow_l float(63),
                                              roofwindow_r float(63),
                                              outcurtain  float(63),
                                              incurtain  float(63),
                                              idx_user number(10,4),
                                              CONSTRAINT idx_user10 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE NOW_GREENHOUSE_GLASS (
                                      idx_now_gh_glass number(10,4) PRIMARY KEY,
                                      temp number(10,4),
                                      hum number(10,4),
                                      light number(10,4),
                                      co2 number(10,4),
                                      soiltension number(10,4),
                                      soilph number(10,4),
                                      soilmoisture number(10,4),
                                      soilec number(10,4),
                                      soiltemp number(10,4),
                                      pos_roofwindow_l  float(63),
                                      pos_roofwindow_r float(63),
                                      pos_outcurtain  float(63),
                                      pos_incurtain  float(63),
                                      idx_user number(10,4),
                                      CONSTRAINT idx_user11 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE NOW_GREENHOUSE_COMPLEX_G (
                                          idx_now_gh_complex_g number(10,4) PRIMARY KEY,
                                          temp number(10,4),
                                          hum number(10,4),
                                          light number(10,4),
                                          co2 number(10,4),
                                          soiltension number(10,4),
                                          soilph number(10,4),
                                          soilmoisture number(10,4),
                                          soilec number(10,4),
                                          soiltemp number(10,4),
                                          pos_topwindow_l1 float(63),
                                          pos_topwindow_l2 float(63),
                                          pos_topwindow_l3 float(63),
                                          pos_topwindow_r1  float(63),
                                          pos_topwindow_r2 float(63),
                                          pos_topwindow_r3 float(63),
                                          pos_outcurtain  float(63),
                                          pos_incurtain  float(63),
                                          idx_user number(10,4),
                                          CONSTRAINT idx_user12 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE NOW_GREENHOUSE_COMPLEX_S (
                                          idx_now_gh_complex_s number(10,4) PRIMARY KEY,
                                          temp number(10,4),
                                          hum number(10,4),
                                          light number(10,4),
                                          co2 number(10,4),
                                          soiltension number(10,4),
                                          soilph number(10,4),
                                          soilmoisture number(10,4),
                                          soilec number(10,4),
                                          soiltemp number(10,4),
                                          pos_roofwindow_l  float(63),
                                          pos_roofwindow_r float(63),
                                          pos_outcurtain  float(63),
                                          pos_incurtain  float(63),
                                          idx_user number(10,4),
                                          CONSTRAINT idx_user13 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE NOW_GREENHOUSE_SINGLE_G (
                                         idx_now_gh_single_g number(10,4) PRIMARY KEY,
                                         temp number(10,4),
                                         hum number(10,4),
                                         light number(10,4),
                                         co2 number(10,4),
                                         soiltension number(10,4),
                                         soilph number(10,4),
                                         soilmoisture number(10,4),
                                         soilec number(10,4),
                                         soiltemp number(10,4),
                                         pos_outsidewindow_l float(63),
                                         pos_outsidewindow_r float(63),
                                         pos_insidewindow_l  float(63),
                                         pos_insidewindow_r  float(63),
                                         pos_curtain_l float(63),
                                         pos_curtain_r float(63),
                                         pos_sidescreen_l float(63),
                                         pos_sidescreen_r float(63),
                                         idx_user number(10,4),
                                         CONSTRAINT idx_user14 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE NOW_GREENHOUSE_SINGLE_S (
                                         idx_now_gh_single_s number(10,4) PRIMARY KEY,
                                         temp number(10,4),
                                         hum number(10,4),
                                         light number(10,4),
                                         co2 number(10,4),
                                         soiltension number(10,4),
                                         soilph number(10,4),
                                         soilmoisture number(10,4),
                                         soilec number(10,4),
                                         soiltemp number(10,4),
                                         pos_roofwindow_l float(63),
                                         pos_roofwindow_r  float(63),
                                         pos_outcurtain  float(63),
                                         pos_incurtain  float(63),
                                         idx_user number(10,4),
                                         CONSTRAINT idx_user15 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_POSMEASURE (
                                       idx_verdata_posmeasure number(10,4) PRIMARY KEY,
                                       verifyid  varchar(100),
                                       deviceid varchar(100),
                                       devicekind varchar(100),
                                       daqtime  date ,
                                       tagid float(63),
                                       x_pos float(63),
                                       y_pos float(63),
                                       direction float(63),
                                       idx_user number(10,4),
                                       CONSTRAINT idx_user16 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_ACMOTOR (
                                    idx_verdata_acmotor number(10,4) PRIMARY KEY,
                                    verifyid  varchar(100),
                                    deviceid varchar(100),
                                    daqtime  date ,
                                    ampere float(63),
                                    standardtouque float(63),
                                    torque float(63),
                                    rpm float(63),
                                    idx_user number(10,4),
                                    CONSTRAINT idx_user17 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_DCMOTOR (
                                    idx_verdata_dcmotor number(10,4) PRIMARY KEY,
                                    verifyid  varchar(100),
                                    deviceid varchar(100),
                                    daqtime  date ,
                                    ampere float(63),
                                    standardtouque float(63),
                                    torque float(63),
                                    rpm float(63),
                                    idx_user number(10,4),
                                    CONSTRAINT idx_user18 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_SENSORTEST (
                                       idx_verdata_sensortest number(10,4) PRIMARY KEY,
                                       verifyid  varchar(100),
                                       deviceid varchar(100),
                                       daqtime  date ,
                                       temp number(10,4),
                                       hum number(10,4),
                                       value1 number(10,4),
                                       value2 number(10,4),
                                       value3 number(10,4),
                                       value4 number(10,4),
                                       value5 number(10,4),
                                       value6 number(10,4),
                                       value7 number(10,4),
                                       value8 number(10,4),
                                       value9 number(10,4),
                                       value10 number(10,4),
                                       value11 number(10,4),
                                       value12 number(10,4),
                                       divalue1 int,
                                       divalue2 int,
                                       divalue3 int,
                                       divalue4 int,
                                       dovalue1 int,
                                       dovalue2 int,
                                       aovalue1 int,
                                       aovalue2 int,
                                       valuename1 varchar(100),
                                       valuename2 varchar(100),
                                       valuename3 varchar(100),
                                       valuename4 varchar(100),
                                       valuename5 varchar(100),
                                       valuename6 varchar(100),
                                       valuename7 varchar(100),
                                       valuename8 varchar(100),
                                       valuename9 varchar(100),
                                       valuename10 varchar(100),
                                       valuename11 varchar(100),
                                       valuename12 varchar(100),
                                       valueunit1 varchar(100),
                                       valueunit2 varchar(100),
                                       valueunit3 varchar(100),
                                       valueunit4 varchar(100),
                                       valueunit5 varchar(100),
                                       valueunit6 varchar(100),
                                       valueunit7 varchar(100),
                                       valueunit8 varchar(100),
                                       valueunit9 varchar(100),
                                       valueunit10 varchar(100),
                                       valueunit11 varchar(100),
                                       valueunit12 varchar(100),
                                       divaluename1 varchar(100),
                                       divaluename2 varchar(100),
                                       divaluename3 varchar(100),
                                       divaluename4 varchar(100),
                                       dovaluename1 varchar(100),
                                       dovaluename2 varchar(100),
                                       aovaluename1 varchar(100),
                                       aovaluename2 varchar(100),
                                       aovalueunit1 varchar(100),
                                       aovalueunit2 varchar(100),
                                       idx_user number(10,4),
                                       CONSTRAINT idx_user19 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_ECSENSOR (
                                     idx_verdata_ecsensor number(10,4) PRIMARY KEY,
                                     verifyid  varchar(100),
                                     deviceid varchar(100),
                                     daqtime  date ,
                                     f_temp number(10,4),
                                     f_hum number(10,4),
                                     standardvalue number(10,4),
                                     verifyvalue number(10,4),
                                     idx_user number(10,4),
                                     CONSTRAINT idx_user20 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_CO2 (
                                idx_verdata_co2 number(10,4) PRIMARY KEY,
                                verifyid  varchar(100),
                                deviceid varchar(100),
                                daqtime  date ,
                                f_temp number(10,4),
                                f_hum number(10,4),
                                c_temp number(10,4),
                                c_pressure number(10,4),
                                standardvalue number(10,4),
                                verifyvalue number(10,4),
                                idx_user number(10,4),
                                CONSTRAINT idx_user21 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_PH (
                               idx_verdata_ph number(10,4) PRIMARY KEY,
                               verifyid  varchar(100),
                               deviceid varchar(100),
                               daqtime  date ,
                               f_temp number(10,4),
                               f_hum number(10,4),
                               standardvalue number(10,4),
                               verifyvalue number(10,4),
                               idx_user number(10,4),
                               CONSTRAINT idx_user22 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_SOILMOISTURE (
                                         idx_verdata_soilmoisture number(10,4) PRIMARY KEY,
                                         verifyid  varchar(100),
                                         deviceid varchar(100),
                                         daqtime  date ,
                                         f_temp number(10,4),
                                         f_hum number(10,4),
                                         standardvalue number(10,4),
                                         verifyvalue number(10,4),
                                         idx_user number(10,4),
                                         CONSTRAINT idx_user23 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_MOISTURE (
                                     idx_verdata_moisture number(10,4) PRIMARY KEY,
                                     verifyid  varchar(100),
                                     deviceid varchar(100),
                                     daqtime  date ,
                                     temp number(10,4),
                                     hum number(10,4),
                                     idx_user number(10,4),
                                     CONSTRAINT idx_user24 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_VIBRATION (
                                      idx_verdata_vibration number(10,4) PRIMARY KEY,
                                      verifyid  varchar(100),
                                      deviceid varchar(100),
                                      daqtime  date ,
                                      direction char,
                                      temp number(10,4),
                                      hum number(10,4),
                                      idx_user number(10,4),
                                      CONSTRAINT idx_user25 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_WIND (
                                 idx_verdata_wind number(10,4) PRIMARY KEY,
                                 verifyid  varchar(100),
                                 deviceid varchar(100),
                                 daqtime  date ,
                                 standardspeed number(10,4),
                                 verifyspeed number(10,4),
                                 idx_user number(10,4),
                                 CONSTRAINT idx_user26 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_HOTSHOCK (
                                     idx_verdata_hotshock number(10,4) PRIMARY KEY,
                                     verifyid  varchar(100),
                                     deviceid varchar(100),
                                     daqtime  date ,
                                     temp_hot number(10,4),
                                     temp_test number(10,4),
                                     temp_cold number(10,4),
                                     idx_user number(10,4),
                                     CONSTRAINT idx_user27 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_HEATFLOW (
                                     idx_verdata_heatflow number(10,4) PRIMARY KEY,
                                     verifyid  varchar(100),
                                     deviceid varchar(100),
                                     daqtime  date ,
                                     temp_a_main number(10,4),
                                     hum_a number(10,4),
                                     temp_a_hotbox_main number(10,4),
                                     windspeed_a_hotbox number(10,4),
                                     volt_a_hotbox_heater number(10,4),
                                     amp_a_hotbox_heater number(10,4),
                                     volt_a_hotbox_fan number(10,4),
                                     amp_a_hotbox_fan number(10,4),
                                     temp_b_main number(10,4),
                                     windspeed_b_coolingbox number(10,4),
                                     temp_a_sub1 number(10,4),
                                     temp_a_sub2 number(10,4),
                                     temp_a_sub3 number(10,4),
                                     temp_a_sub4 number(10,4),
                                     temp_a_sub5 number(10,4),
                                     temp_a_sub6 number(10,4),
                                     temp_a_sub7 number(10,4),
                                     temp_a_sub8 number(10,4),
                                     temp_a_sub9 number(10,4),
                                     temp_a_sub10 number(10,4),
                                     temp_a_sub11 number(10,4),
                                     temp_a_sub12 number(10,4),
                                     temp_a_sub13 number(10,4),
                                     temp_a_sub14 number(10,4),
                                     temp_a_sub15 number(10,4),
                                     temp_a_sub16 number(10,4),
                                     temp_a_sub17 number(10,4),
                                     temp_a_sub18 number(10,4),
                                     temp_a_sub19 number(10,4),
                                     temp_a_sub20 number(10,4),
                                     temp_a_sub21 number(10,4),
                                     temp_a_sub22 number(10,4),
                                     temp_a_sub23 number(10,4),
                                     temp_a_sub24 number(10,4),
                                     temp_a_sub25 number(10,4),
                                     temp_a_sub26 number(10,4),
                                     temp_a_sub27 number(10,4),
                                     temp_a_sub28 number(10,4),
                                     temp_a_sub29 number(10,4),
                                     temp_a_sub30 number(10,4),
                                     temp_a_hotbox_sub1 number(10,4),
                                     temp_a_hotbox_sub2 number(10,4),
                                     temp_a_hotbox_sub3 number(10,4),
                                     temp_a_hotbox_sub4 number(10,4),
                                     temp_a_hotbox_sub5 number(10,4),
                                     temp_a_hotbox_sub6 number(10,4),
                                     temp_a_hotbox_sub7 number(10,4),
                                     temp_a_hotbox_sub8 number(10,4),
                                     temp_a_hotbox_sub9 number(10,4),
                                     temp_a_hotbox_sub10 number(10,4),
                                     temp_a_hotbox_sub11 number(10,4),
                                     temp_a_hotbox_sub12 number(10,4),
                                     temp_a_hotbox_sub13 number(10,4),
                                     temp_a_hotbox_sub14 number(10,4),
                                     temp_a_hotbox_sub15 number(10,4),
                                     temp_a_hotbox_sub16 number(10,4),
                                     temp_a_hotbox_sub17 number(10,4),
                                     temp_a_hotbox_sub18 number(10,4),
                                     temp_a_hotbox_sub19 number(10,4),
                                     temp_a_hotbox_sub20 number(10,4),
                                     temp_a_hotbox_sub21 number(10,4),
                                     temp_a_hotbox_sub22 number(10,4),
                                     temp_a_hotbox_sub23 number(10,4),
                                     temp_a_hotbox_sub24 number(10,4),
                                     temp_a_hotbox_sub25 number(10,4),
                                     temp_a_hotbox_sub26 number(10,4),
                                     temp_a_hotbox_sub27 number(10,4),
                                     temp_a_hotbox_sub28 number(10,4),
                                     temp_a_hotbox_sub29 number(10,4),
                                     temp_a_hotbox_sub30 number(10,4),
                                     temp_b_sub1 number(10,4),
                                     temp_b_sub2 number(10,4),
                                     temp_b_sub3 number(10,4),
                                     temp_b_sub4 number(10,4),
                                     temp_b_sub5 number(10,4),
                                     temp_b_sub6 number(10,4),
                                     temp_b_sub7 number(10,4),
                                     temp_b_sub8 number(10,4),
                                     temp_b_sub9 number(10,4),
                                     temp_b_sub10 number(10,4),
                                     temp_b_sub11 number(10,4),
                                     temp_b_sub12 number(10,4),
                                     temp_b_sub13 number(10,4),
                                     temp_b_sub14 number(10,4),
                                     temp_b_sub15 number(10,4),
                                     temp_b_sub16 number(10,4),
                                     temp_b_sub17 number(10,4),
                                     temp_b_sub18 number(10,4),
                                     temp_b_sub19 number(10,4),
                                     temp_b_sub20 number(10,4),
                                     temp_b_sub21 number(10,4),
                                     temp_b_sub22 number(10,4),
                                     temp_b_sub23 number(10,4),
                                     temp_b_sub24 number(10,4),
                                     temp_b_sub25 number(10,4),
                                     temp_b_sub26 number(10,4),
                                     temp_b_sub27 number(10,4),
                                     temp_b_sub28 number(10,4),
                                     temp_b_sub29 number(10,4),
                                     temp_b_sub30 number(10,4),
                                     idx_user number(10,4),
                                     CONSTRAINT idx_user28 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_SUNLIGHT (
                                     idx_verdata_sunlight number(10,4) PRIMARY KEY,
                                     verifyid  varchar(100),
                                     deviceid varchar(100),
                                     daqtime  date ,
                                     calcellvalue number(10,4),
                                     standardvalue number(10,4),
                                     verifyvalue number(10,4),
                                     idx_user number(10,4),
                                     CONSTRAINT idx_user29 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_SUNLIGHT_RAWDATA (
                                             idx_verdata_sunlight_rawdata number(10,4) PRIMARY KEY,
                                             verifyid  varchar(100),
                                             deviceid varchar(100),
                                             daqtime  date ,
                                             standardvalue number(10,4),
                                             value number(10,4),
                                             unit varchar(100),
                                             frontrear char,
                                             verifystep char,
                                             idx_user number(10,4),
                                             CONSTRAINT idx_user30 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_MATERIAL_BIG (
                                         idx_verdata_material_big number(10,4) PRIMARY KEY,
                                         verifyid  varchar(100),
                                         deviceid varchar(100),
                                         daqtime  date ,
                                         weight number(10,4),
                                         strength number(10,4),
                                         displacement number(10,4),
                                         elongation number(10,4),
                                         elongationrate number(10,4),
                                         yieldpoint number(10,4),
                                         breakingpoint number(10,4),
                                         idx_user number(10,4),
                                         CONSTRAINT idx_user31 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_MATERIAL_SMALL (
                                           idx_verdata_material_small number(10,4) PRIMARY KEY,
                                           verifyid  varchar(100),
                                           deviceid varchar(100),
                                           daqtime  date ,
                                           weight number(10,4),
                                           strength number(10,4),
                                           displacement number(10,4),
                                           elongation number(10,4),
                                           elongationrate number(10,4),
                                           yieldpoint number(10,4),
                                           breakingpoint number(10,4),
                                           idx_user number(10,4),
                                           CONSTRAINT idx_user32 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_WATERPROOF (
                                       idx_verdata_waterproof number(10,4) PRIMARY KEY,
                                       verifyid  varchar(100),
                                       deviceid varchar(100),
                                       daqtime  date ,
                                       waterpressure number(10,4),
                                       platespeed number(10,4),
                                       nozzleswingspeed number(10,4),
                                       watersupplymotorspeed number(10,4),
                                       idx_user number(10,4),
                                       CONSTRAINT idx_user33 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_THERMOHYGROSTAT (
                                            idx_verdata_thermohygrostat number(10,4) PRIMARY KEY,
                                            verifyid  varchar(100),
                                            deviceid varchar(100),
                                            daqtime  date ,
                                            temp number(10,4),
                                            hum number(10,4),
                                            temp1 number(10,4),
                                            temp2 number(10,4),
                                            temp3 number(10,4),
                                            temp4 number(10,4),
                                            temp5 number(10,4),
                                            temp6 number(10,4),
                                            temp7 number(10,4),
                                            temp8 number(10,4),
                                            temp9 number(10,4),
                                            temp10 number(10,4),
                                            torque number(10,4),
                                            rpm number(10,4),
                                            ampere number(10,4),
                                            idx_user number(10,4),
                                            CONSTRAINT idx_user34 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_HOTSHOCK_ROBOT (
                                           idx_verdata_hotshock_robot number(10,4) PRIMARY KEY,
                                           verifyid  varchar(100),
                                           deviceid varchar(100),
                                           daqtime  date ,
                                           temp number(10,4),
                                           hum number(10,4),
                                           idx_user number(10,4),
                                           CONSTRAINT idx_user35 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_DUST (
                                 idx_verdata_dust number(10,4) PRIMARY KEY,
                                 verifyid  varchar(100),
                                 deviceid varchar(100),
                                 testtime  date ,
                                 method varchar(100),
                                 ontime int,
                                 offtime int,
                                 repeatcount int,
                                 duringtime int,
                                 idx_user number(10,4),
                                 CONSTRAINT idx_user36 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_WATERPROOF_ROBOT (
                                             idx_verdata_waterproof_robot number(10,4) PRIMARY KEY,
                                             verifyid  varchar(100),
                                             deviceid varchar(100),
                                             daqtime  date ,
                                             waterpressure number(10,4),
                                             platespeed number(10,4),
                                             nozzleswingspeed number(10,4),
                                             watersupplymotorspeed number(10,4),
                                             waterflowquantity number(10,4),
                                             idx_user number(10,4),
                                             CONSTRAINT idx_user37 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_AIRCON_EFFECT (
                                          idx_verdata_aircon_effect number(10,4) PRIMARY KEY,
                                          verifyid  varchar(100),
                                          deviceid varchar(100),
                                          daqtime  date ,
                                          temp_evapolator_in number(10,4),
                                          temp_evapolator_out number(10,4),
                                          tempdiff_evapolator number(10,4),
                                          temp_evapolation_refrigerant number(10,4),
                                          temp_compressor_in number(10,4),
                                          superheat number(10,4),
                                          temp_condenser_in number(10,4),
                                          temp_condenser_out number(10,4),
                                          tempdiff_condenser number(10,4),
                                          temp_condensation_refrigerant number(10,4),
                                          supercooling number(10,4),
                                          temp_compressor_out number(10,4),
                                          effect_compressor_isentropy number(10,4),
                                          power_compressor number(10,4),
                                          cop_frozen number(10,4),
                                          capacity_frozen number(10,4),
                                          cop_radiation number(10,4),
                                          capacity_ratiation number(10,4),
                                          idx_user number(10,4),
                                          CONSTRAINT idx_user38 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_AIRCON_ANALYSIS (
                                            idx_verdata_aircon_analysis number(10,4) PRIMARY KEY,
                                            verifyid  varchar(100),
                                            deviceid varchar(100),
                                            daqtime  date ,
                                            temp1_1 number(10,4),
                                            temp1_2 number(10,4),
                                            temp1_3 number(10,4),
                                            hum1 number(10,4),
                                            winddirection1 number(10,4),
                                            windspeed1 number(10,4),
                                            temp2_1 number(10,4),
                                            temp2_2 number(10,4),
                                            temp2_3 number(10,4),
                                            hum2 number(10,4),
                                            winddirection2 number(10,4),
                                            windspeed2 number(10,4),
                                            temp3_1 number(10,4),
                                            temp3_2 number(10,4),
                                            temp3_3 number(10,4),
                                            hum3 number(10,4),
                                            winddirection3 number(10,4),
                                            windspeed3 number(10,4),
                                            temp4_1 number(10,4),
                                            temp4_2 number(10,4),
                                            temp4_3 number(10,4),
                                            hum4 number(10,4),
                                            winddirection4 number(10,4),
                                            windspeed4 number(10,4),
                                            temp5_1 number(10,4),
                                            temp5_2 number(10,4),
                                            temp5_3 number(10,4),
                                            hum5 number(10,4),
                                            winddirection5 number(10,4),
                                            windspeed5 number(10,4),
                                            temp6_1 number(10,4),
                                            temp6_2 number(10,4),
                                            temp6_3 number(10,4),
                                            hum6 number(10,4),
                                            winddirection6 number(10,4),
                                            windspeed6 number(10,4),
                                            temp7_1 number(10,4),
                                            temp7_2 number(10,4),
                                            temp7_3 number(10,4),
                                            hum7 number(10,4),
                                            winddirection7 number(10,4),
                                            windspeed7 number(10,4),
                                            temp8_1 number(10,4),
                                            temp8_2 number(10,4),
                                            temp8_3 number(10,4),
                                            hum8 number(10,4),
                                            winddirection8 number(10,4),
                                            windspeed8 number(10,4),
                                            temp9_1 number(10,4),
                                            temp9_2 number(10,4),
                                            temp9_3 number(10,4),
                                            hum9 number(10,4),
                                            winddirection9 number(10,4),
                                            windspeed9 number(10,4),
                                            temp10_1 number(10,4),
                                            temp10_2 number(10,4),
                                            temp10_3 number(10,4),
                                            hum10 number(10,4),
                                            winddirection10 number(10,4),
                                            windspeed10 number(10,4),
                                            temp11_1 number(10,4),
                                            temp11_2 number(10,4),
                                            temp11_3 number(10,4),
                                            hum11 number(10,4),
                                            winddirection11 number(10,4),
                                            windspeed11 number(10,4),
                                            temp12_1 number(10,4),
                                            temp12_2 number(10,4),
                                            temp12_3 number(10,4),
                                            hum12 number(10,4),
                                            winddirection12 number(10,4),
                                            windspeed12 number(10,4),
                                            idx_user number(10,4),
                                            CONSTRAINT idx_user39 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

CREATE TABLE VERIFYDATA_NETRIENTSUPPLIER (
                                             idx_verdata_netrientsupplier number(10,4) PRIMARY KEY,
                                             verifyid  varchar(100),
                                             deviceid varchar(100),
                                             daqtime  date ,
                                             pressure1 number(10,4),
                                             pressure2 number(10,4),
                                             flowqty number(10,4),
                                             valveopenrate1 number(10,4),
                                             valveopenrate2 number(10,4),
                                             valveopenrate3 number(10,4),
                                             valveopenrate4 number(10,4),
                                             valveopenrate5 number(10,4),
                                             idx_user number(10,4),
                                             CONSTRAINT idx_user40 FOREIGN KEY (idx_user) REFERENCES TOKEN(idx_user)
);

INSERT INTO ENV_WEATHER ( idx_env_weather) VALUES ( 0 );
INSERT INTO NOW_WEATHER ( idx_now_weather ) VALUES ( 0 );
INSERT INTO ENV_GREENHOUSE_GLASS ( idx_env_gh_glass ) VALUES ( 0 );
INSERT INTO ENV_GREENHOUSE_COMPLEX ( idx_env_gh_complex ) VALUES ( 0 );
INSERT INTO ENV_GREENHOUSE_SINGLE ( idx_env_gh_single) VALUES ( 0 );
INSERT INTO ACTUATOR_GREENHOUSE_GLASS ( idx_actuator_gh_glass ) VALUES ( 0 );
INSERT INTO ACTUATOR_GREENHOUSE_COMPLEX_G ( idx_actuator_gh_complex_g ) VALUES ( 0 );
INSERT INTO ACTUATOR_GREENHOUSE_COMPLEX_S ( idx_actuator_gh_complex_s ) VALUES ( 0 );
INSERT INTO ACTUATOR_GREENHOUSE_SINGLE_G ( idx_actuator_gh_single_g ) VALUES ( 0 );
INSERT INTO ACTUATOR_GREENHOUSE_SINGLE_S ( idx_actuator_gh_single_s ) VALUES ( 0 );
INSERT INTO NOW_GREENHOUSE_GLASS ( idx_now_gh_glass ) VALUES ( 0 );
INSERT INTO NOW_GREENHOUSE_COMPLEX_G ( idx_now_gh_complex_g ) VALUES ( 0 );
INSERT INTO NOW_GREENHOUSE_COMPLEX_S ( idx_now_gh_complex_s ) VALUES ( 0 );
INSERT INTO NOW_GREENHOUSE_SINGLE_G ( idx_now_gh_single_g ) VALUES ( 0 );
INSERT INTO NOW_GREENHOUSE_SINGLE_S ( idx_now_gh_single_s ) VALUES ( 0 );
INSERT INTO VERIFYDATA_POSMEASURE ( idx_verdata_posmeasure ) VALUES ( 0 );
INSERT INTO VERIFYDATA_ACMOTOR ( idx_verdata_acmotor ) VALUES ( 0 );
INSERT INTO VERIFYDATA_DCMOTOR ( idx_verdata_dcmotor ) VALUES ( 0 );
INSERT INTO VERIFYDATA_SENSORTEST ( idx_verdata_sensortest ) VALUES ( 0 );
INSERT INTO VERIFYDATA_ECSENSOR ( idx_verdata_ecsensor ) VALUES ( 0 );
INSERT INTO VERIFYDATA_CO2 ( idx_verdata_co2 ) VALUES ( 0 );
INSERT INTO VERIFYDATA_PH ( idx_verdata_ph ) VALUES ( 0 );
INSERT INTO VERIFYDATA_SOILMOISTURE ( idx_verdata_soilmoisture ) VALUES ( 0 );
INSERT INTO VERIFYDATA_MOISTURE ( idx_verdata_moisture ) VALUES ( 0 );
INSERT INTO VERIFYDATA_VIBRATION ( idx_verdata_vibration ) VALUES ( 0 );
INSERT INTO VERIFYDATA_WIND ( idx_verdata_wind ) VALUES ( 0 );
INSERT INTO VERIFYDATA_HOTSHOCK ( idx_verdata_hotshock ) VALUES ( 0 );
INSERT INTO VERIFYDATA_HEATFLOW ( idx_verdata_heatflow ) VALUES ( 0 );
INSERT INTO VERIFYDATA_SUNLIGHT ( idx_verdata_sunlight ) VALUES ( 0 );
INSERT INTO VERIFYDATA_SUNLIGHT_RAWDATA ( idx_verdata_sunlight_rawdata ) VALUES ( 0 );
INSERT INTO VERIFYDATA_MATERIAL_BIG ( idx_verdata_material_big ) VALUES ( 0 );
INSERT INTO VERIFYDATA_MATERIAL_SMALL ( idx_verdata_material_small ) VALUES ( 0 );
INSERT INTO VERIFYDATA_WATERPROOF ( idx_verdata_waterproof ) VALUES ( 0 );
INSERT INTO VERIFYDATA_THERMOHYGROSTAT ( idx_verdata_thermohygrostat ) VALUES ( 0 );
INSERT INTO VERIFYDATA_HOTSHOCK_ROBOT ( idx_verdata_hotshock_robot ) VALUES ( 0 );
INSERT INTO VERIFYDATA_DUST ( idx_verdata_dust ) VALUES ( 0 );
INSERT INTO VERIFYDATA_WATERPROOF_ROBOT ( idx_verdata_waterproof_robot ) VALUES ( 0 );
INSERT INTO VERIFYDATA_AIRCON_EFFECT ( idx_verdata_aircon_effect ) VALUES ( 0 );
INSERT INTO VERIFYDATA_AIRCON_ANALYSIS ( idx_verdata_aircon_analysis ) VALUES ( 0 );
INSERT INTO VERIFYDATA_NETRIENTSUPPLIER ( idx_verdata_netrientsupplier ) VALUES ( 0 );

CREATE SEQUENCE ENV_WEATHER_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE NOW_WEATHER_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE ENV_GH_GLASS_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE ENV_GH_COMPLEX_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE ENV_GH_SINGLE_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE ACTUATOR_GH_GLASS_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE ACTUATOR_GH_COMPLEX_G_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE ACTUATOR_GH_COMPLEX_S_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE ACTUATOR_GH_SINGLE_G_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE ACTUATOR_GH_SINGLE_S_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE NOW_GH_GLASS_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE NOW_GH_COMPLEX_G_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE NOW_GH_COMPLEX_S_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE NOW_GH_SINGLE_G_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE NOW_GH_SINGLE_S_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_POSMEASURE_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_ACMOTOR_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_DCMOTOR_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_SENSORTEST_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_ECSENSOR_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_CO2_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_PH_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_SOILMOISTURE_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_MOISTURE_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_VIBRATION_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_WIND_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_HOTSHOCK_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_HEATFLOW_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_SUNLIGHT_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_SUNLIGHT_RAWDATA_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_MATERIAL_BIG_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_MATERIAL_SMALL_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_WATERPROOF_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_THERMOHYGROSTAT_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_HOTSHOCK_ROBOT_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_DUST_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_WATERPROOF_ROBOT_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_AIRCON_EFFECT_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_AIRCON_ANALYSIS_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE VD_NETRIENTSUPPLIER_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;
CREATE SEQUENCE USER_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 1000000 CYCLE NOCACHE;



INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(1, 'greenhouse');


INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(16, 'verifydata_acmotor');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(17, 'verifydata_aircon_analysis');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(18, 'verifydata_aircon_effect');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(19, 'verifydata_co2');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(20, 'verifydata_dcmotor');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(21, 'verifydata_dust');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(22, 'verifydata_ecsensor');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(23, 'verifydata_heatflow');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(24, 'verifydata_wind');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(25, 'verifydata_waterproof');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(26, 'verifydata_waterproof_robot');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(27, 'verifydata_hotshock_robot');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(28, 'verifydata_hotshock');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(29, 'verifydata_material_big');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(30, 'verifydata_material_small');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(31, 'verifydata_moisture');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(32, 'verifydata_netrient_supplier');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(33, 'verifydata_ph');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(34, 'verifydata_posmeasure');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(35, 'verifydata_sensor_test');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(36, 'verifydata_soil_moisture');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(37, 'verifydata_sunlight_rawdata');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(38, 'verifydata_sunlight');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(39, 'verifydata_thermohygrostat');

INSERT INTO ASSET (
    idx_asset,
    asset_name
)
VALUES(40, 'verifydata_vibration');

INSERT INTO TB_USER (
    idx_user,
    user_id,
    user_pw
) VALUES (
             1,
             'fact',
             'pass'
         );

INSERT INTO TB_USER (
    idx_user,
    user_id
)
VALUES(2, 'complex');

INSERT INTO TB_USER (
    idx_user,
    user_id
)
VALUES(3, 'single');

INSERT INTO TB_USER (
    idx_user,
    user_id
)
VALUES(4, 'glass');

INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             41,
             2,
             1,
             '2023-01-26T11:13:09.056832'
         );

INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             42,
             3,
             1,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             43,
             4,
             1,
             '2023-01-26T11:13:09.056832'
         );


INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             1,
             1,
             1,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             2,
             1,
             2,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             3,
             1,
             3,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             4,
             1,
             4,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             5,
             1,
             5,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             6,
             1,
             6,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             7,
             1,
             7,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             8,
             1,
             8,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             9,
             1,
             9,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             10,
             1,
             10,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             11,
             1,
             11,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             12,
             1,
             12,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             13,
             1,
             13,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             14,
             1,
             14,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             15,
             1,
             15,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             16,
             1,
             16,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             17,
             1,
             17,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             18,
             1,
             18,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             19,
             1,
             19,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             20,
             1,
             20,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             21,
             1,
             21,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             22,
             1,
             22,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             23,
             1,
             23,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             24,
             1,
             24,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             25,
             1,
             25,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             26,
             1,
             26,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             27,
             1,
             27,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             28,
             1,
             28,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             29,
             1,
             29,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             30,
             1,
             30,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             31,
             1,
             31,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             32,
             1,
             32,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             33,
             1,
             33,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             34,
             1,
             34,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             35,
             1,
             35,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             36,
             1,
             36,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             37,
             1,
             37,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             38,
             1,
             38,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             39,
             1,
             39,
             '2023-01-26T11:13:09.056832'
         );
INSERT INTO USER_FAC_JOIN (
    idx_user_fac_join,
    idx_user,
    idx_asset,
    end_date
) VALUES (
             40,
             1,
             40,
             '2023-01-26T11:13:09.056832'
         );