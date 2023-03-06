package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Data
public class FarmVO {
    String dt;
    String hhmm;
    long row_num;
    long idx_farm;//	number	32			◯		인덱스
    long idx_user_demo_bs;//	number	32				◯
    long idx_tb_env_data;
    String farm_cd;//	varchar2	100					농가코드
    String ymdtime;//	varchar2	100						시간(yyyy-mm-dd hh:mm:ss)
    Date ymdtime_dt;//	date						시간(yyyy-mm-dd hh:mm:ss)
    float xintemp;//	number	(10,4)					제어온도(제어에 적용할 센서값,센서선택)
    float xintemp1;//	number	(10,4)					실내온도1
    float xintemp2;//	number	(10,4)					실내온도2
    float xintemp3;//	number	(10,4)					실내온도3
    float xinhum;//	number	(10,4)					제어습도(제어에 적용할 센서값,센서선택)
    float xinhum1;//	number	(10,4)					실내습도1
    float xinhum2;//	number	(10,4)					실내습도2
    float xinhum3;//	number	(10,4)					실내습도3
    float xgndtemp;//	number	(10,4)					지온
    float xgndhum;//	number	(10,4)					지습
    float xwatertemp;//	number	(10,4)					3way 온도
    float xdhum;//	number	(10,4)					이슬점
    float xco2;//	number	(10,4)					co2농도
    float xouttemp;//	number	(10,4)					실외온도
    float xwinddirec;// 	number	(10,4)					풍향(l:좌 r: 우)
    float xwindsp;//	number	(10,4)					풍속
    float xsunvol;//	number	(10,4)					일사량
    float xsunadd;//	number	(10,4)					누적일사량
    float xrain;//	number	(10,4)					감우(1:비옴 0: 안옴)
    float xventtemp;//	number	(10,4)					환기설정온도
    float xheattemp;//	number	(10,4)					난방설정온도
    float xsthum;//	number	(10,4)					포화수분
    float xabhum;//	number	(10,4)					절대습도
    float xhumlack;//	number	(10,4)					수분부족분
    float xventtemp2;//	number	(10,4)					이중창 환기온도
    float xco2set;//	number	(10,4)					co2설정값
    float xventcont;//	number	(10,4)					환기조절값
    float xheatcont;//	number	(10,4)					난방조절값
    float xskyvol1;//	number	(10,4)					천창좌 개도율
    float xskyvol2;//	number	(10,4)					천창우 개도율
    float xdualvol1;//	number	(10,4)					이중창좌 개도율
    float xdualvol2;//	number	(10,4)					이중창우 개도율
    float xsidevol1;//	number	(10,4)					측창좌 개도율
    float xsidevol2;//	number	(10,4)					측창우 개도율
    float xcur1vol;//	number	(10,4)					커튼1 개도율
    float xcur2vol;//	number	(10,4)					커튼2 개도율
    float xcur3vol;//	number	(10,4)					커튼3 개도율
    float xcur4vol;//	number	(10,4)					커튼4 개도율
    float x3way1vol;//	number	(10,4)					3way1 개도율
    float x3way2vol;//	number	(10,4)					3way2 개도율
    float xskyauto;//	number	(10,4)					천창 자동상태(1:자동 0:수동)
    float xdualauto;//	number	(10,4)					이중창 자동상태(1:자동 0:수동)
    float xsideauto;//	number	(10,4)					측창 자동상태(1:자동 0:수동)
    float xcur1auto;//	number	(10,4)					커튼1 자동상태(1:자동 0:수동)
    float xcur2auto;//	number	(10,4)					커튼2 자동상태(1:자동 0:수동)
    float xcur3auto;//	number	(10,4)					커튼3 자동상태(1:자동 0:수동)
    float xcur4auto;//	number	(10,4)					커튼4 자동상태(1:자동 0:수동)
    float x3way1auto;//	number	(10,4)					3way1 자동상태(1:자동 0:수동)
    float x3way2auto;//	number	(10,4)					3way2 자동상태(1:자동 0:수동)
    float xsprayauto;//	number	(10,4)					분무 자동상태(1:자동 0:수동)
    float xco2auto;//	number	(10,4)					co2 자동상태(1:자동 0:수동)
    float xspauto;//	number	(10,4)					 스프링쿨러 자동상태 (1:자동 0:수동)
    float xheaterauto;//	number	(10,4)					냉난방기 자동상태(1:자동 0:수동)
    float xlightauto;//	number	(10,4)					보광등 자동상태 (1:자동 0:수동)
    float xhunauto;//	number	(10,4)					훈증기 자동상태 (1:자동 0:수동)
    float xboauto;//	number	(10,4)					순환펌프1 자동상태 (1:자동 0:수동)
    float xpumpauto;//	number	(10,4)					순환펌프2 자동상태 (1:자동 0:수동)
    float xfan1auto;//	number	(10,4)					팬1 자동상태 (1:자동 0:수동)
    float xfan2auto;//	number	(10,4)					팬2 자동상태 (1:자동 0:수동)
    float xsprayrun;//	number	(10,4)					분무 가동상태(1:가동 0:정지)
    float xco2run;//	number	(10,4)					co2 가동상태 (1:가동 0:정지)
    float xsprun;//	number	(10,4)					스프링쿨러 가동상태(1:가동 0:정지)
    float xheaterrun;//	number	(10,4)					냉난방기 가동상태(1:가동 0:정지)
    float xlightrun;//	number	(10,4)					보광등 가동상태(1:가동 0:정지)
    float xhunrun;//	number	(10,4)					훈증기 가동상태(1:가동 0:정지)
    float xborun;//	number	(10,4)					보일러 가동상태(1:가동 0:정지)
    float xpumprun;//	number	(10,4)					순환펌프 가동상태(1:가동 0:정지)
    float xfan1run;//	number	(10,4)					팬1 가동상태(1:가동 0:정지)
    float xfan2run;//	number	(10,4)					팬2 가동상태(1:가동 0:정지)
    float xventcont2;//	number	(10,4)					환기조절값
    float xventrst;//	number	(10,4)					조절값 적용된 환기온도
    float xvent2rst;//	number	(10,4)					조절값 적용된 이중환기온도
    float xheatrst;//	number	(10,4)					조절값 적용된 난방온도
    float xwatertemp2;//	number	(10,4)					3way온도2
    float xjungjun;//	number	(10,4)					정전값
    float xlogon;//	number	(10,4)					로그인 상태(1:on 0:off)
    float xreturn1;//	number	(10,4)					환수온도1
    float xreturn2;//	number	(10,4)					환수온도2
    float xec1;//	number	(10,4)					ec1값
    float xec2;//	number	(10,4)					ec2값
    float xph1;//	number	(10,4)					ph1값
    float xph2;//	number	(10,4)					ph2값
    long guyok;//	number	(10,4)					현재 구역
    long hitemp;//	number	(10,4)					고온경보설정
    long lotemp;//	number	(10,4)					저온경보설정

    public void makeFarmData() throws ParseException {
        idx_farm =  guyok;
        ymdtime_dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(ymdtime);

    }
}
