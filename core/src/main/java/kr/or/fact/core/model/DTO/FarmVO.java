package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Data
public class FarmVO {
    long row_num;
    long idx_farm;//	number	32			◯		인덱스
    long idx_user_demo_bs;//	number	32				◯
    long idx_tb_env_data;
    String farm_cd;//	varchar2	100					농가코드
    String ymdtime;//	varchar2	100						시간(yyyy-mm-dd hh:mm:ss)
    Date ymdtime_dt;//	date						시간(yyyy-mm-dd hh:mm:ss)
    long xintemp;//	number	(10,4)					제어온도(제어에 적용할 센서값,센서선택)
    long xintemp1;//	number	(10,4)					실내온도1
    long xintemp2;//	number	(10,4)					실내온도2
    long xintemp3;//	number	(10,4)					실내온도3
    long xinhum;//	number	(10,4)					제어습도(제어에 적용할 센서값,센서선택)
    long xinhum1;//	number	(10,4)					실내습도1
    long xinhum2;//	number	(10,4)					실내습도2
    long xinhum3;//	number	(10,4)					실내습도3
    long xgndtemp;//	number	(10,4)					지온
    long xgndhum;//	number	(10,4)					지습
    long xwatertemp;//	number	(10,4)					3way 온도
    long xdhum;//	number	(10,4)					이슬점
    long xco2;//	number	(10,4)					co2농도
    long xouttemp;//	number	(10,4)					실외온도
    long xwinddirec;// 	number	(10,4)					풍향(l:좌 r: 우)
    long xwindsp;//	number	(10,4)					풍속
    long xsunvol;//	number	(10,4)					일사량
    long xsunadd;//	number	(10,4)					누적일사량
    long xrain;//	number	(10,4)					감우(1:비옴 0: 안옴)
    long xventtemp;//	number	(10,4)					환기설정온도
    long xheattemp;//	number	(10,4)					난방설정온도
    long xsthum;//	number	(10,4)					포화수분
    long xabhum;//	number	(10,4)					절대습도
    long xhumlack;//	number	(10,4)					수분부족분
    long xventtemp2;//	number	(10,4)					이중창 환기온도
    long xco2set;//	number	(10,4)					co2설정값
    long xventcont;//	number	(10,4)					환기조절값
    long xheatcont;//	number	(10,4)					난방조절값
    long xskyvol1;//	number	(10,4)					천창좌 개도율
    long xskyvol2;//	number	(10,4)					천창우 개도율
    long xdualvol1;//	number	(10,4)					이중창좌 개도율
    long xdualvol2;//	number	(10,4)					이중창우 개도율
    long xsidevol1;//	number	(10,4)					측창좌 개도율
    long xsidevol2;//	number	(10,4)					측창우 개도율
    long xcur1vol;//	number	(10,4)					커튼1 개도율
    long xcur2vol;//	number	(10,4)					커튼2 개도율
    long xcur3vol;//	number	(10,4)					커튼3 개도율
    long xcur4vol;//	number	(10,4)					커튼4 개도율
    long x3way1vol;//	number	(10,4)					3way1 개도율
    long x3way2vol;//	number	(10,4)					3way2 개도율
    long xskyauto;//	number	(10,4)					천창 자동상태(1:자동 0:수동)
    long xdualauto;//	number	(10,4)					이중창 자동상태(1:자동 0:수동)
    long xsideauto;//	number	(10,4)					측창 자동상태(1:자동 0:수동)
    long xcur1auto;//	number	(10,4)					커튼1 자동상태(1:자동 0:수동)
    long xcur2auto;//	number	(10,4)					커튼2 자동상태(1:자동 0:수동)
    long xcur3auto;//	number	(10,4)					커튼3 자동상태(1:자동 0:수동)
    long xcur4auto;//	number	(10,4)					커튼4 자동상태(1:자동 0:수동)
    long x3way1auto;//	number	(10,4)					3way1 자동상태(1:자동 0:수동)
    long x3way2auto;//	number	(10,4)					3way2 자동상태(1:자동 0:수동)
    long xsprayauto;//	number	(10,4)					분무 자동상태(1:자동 0:수동)
    long xco2auto;//	number	(10,4)					co2 자동상태(1:자동 0:수동)
    long xspauto;//	number	(10,4)					 스프링쿨러 자동상태 (1:자동 0:수동)
    long xheaterauto;//	number	(10,4)					냉난방기 자동상태(1:자동 0:수동)
    long xlightauto;//	number	(10,4)					보광등 자동상태 (1:자동 0:수동)
    long xhunauto;//	number	(10,4)					훈증기 자동상태 (1:자동 0:수동)
    long xboauto;//	number	(10,4)					순환펌프1 자동상태 (1:자동 0:수동)
    long xpumpauto;//	number	(10,4)					순환펌프2 자동상태 (1:자동 0:수동)
    long xfan1auto;//	number	(10,4)					팬1 자동상태 (1:자동 0:수동)
    long xfan2auto;//	number	(10,4)					팬2 자동상태 (1:자동 0:수동)
    long xsprayrun;//	number	(10,4)					분무 가동상태(1:가동 0:정지)
    long xco2run;//	number	(10,4)					co2 가동상태 (1:가동 0:정지)
    long xsprun;//	number	(10,4)					스프링쿨러 가동상태(1:가동 0:정지)
    long xheaterrun;//	number	(10,4)					냉난방기 가동상태(1:가동 0:정지)
    long xlightrun;//	number	(10,4)					보광등 가동상태(1:가동 0:정지)
    long xhunrun;//	number	(10,4)					훈증기 가동상태(1:가동 0:정지)
    long xborun;//	number	(10,4)					보일러 가동상태(1:가동 0:정지)
    long xpumprun;//	number	(10,4)					순환펌프 가동상태(1:가동 0:정지)
    long xfan1run;//	number	(10,4)					팬1 가동상태(1:가동 0:정지)
    long xfan2run;//	number	(10,4)					팬2 가동상태(1:가동 0:정지)
    long xventcont2;//	number	(10,4)					환기조절값
    long xventrst;//	number	(10,4)					조절값 적용된 환기온도
    long xvent2rst;//	number	(10,4)					조절값 적용된 이중환기온도
    long xheatrst;//	number	(10,4)					조절값 적용된 난방온도
    long xwatertemp2;//	number	(10,4)					3way온도2
    long xjungjun;//	number	(10,4)					정전값
    long xlogon;//	number	(10,4)					로그인 상태(1:on 0:off)
    long xreturn1;//	number	(10,4)					환수온도1
    long xreturn2;//	number	(10,4)					환수온도2
    long xec1;//	number	(10,4)					ec1값
    long xec2;//	number	(10,4)					ec2값
    long xph1;//	number	(10,4)					ph1값
    long xph2;//	number	(10,4)					ph2값
    long guyok;//	number	(10,4)					현재 구역
    long hitemp;//	number	(10,4)					고온경보설정
    long lotemp;//	number	(10,4)					저온경보설정

    public void makeFarmData() throws ParseException {
        idx_farm =  guyok;
        ymdtime_dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(ymdtime);

    }
}
