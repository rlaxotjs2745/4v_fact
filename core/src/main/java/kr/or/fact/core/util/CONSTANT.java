package kr.or.fact.core.util;

public class CONSTANT {
    public static String version ="1.0";

    public static String Success ="SUCCESS";
    public static String fail ="FAIL";

    public static int user_idx =0;
    public static int admin_idx =1;

    public static int yes = 1;
    public static int no = 0;

    public static int DEMOBS_FILTER_APPL = 3;
    public static int DEMOBS_FILTER_REVUIEW = 5;
    public static int DEMOBS_FILTER_AGREE = 7;
    public static int DEMOBS_FILTER_DEMO = 9;
    public static int DEMOBS_FILTER_RESULT = 11;


    public static int ANN_STATUS_ON_COUNT = 3;
    public static int ANN_WAIT_COUNT = 1;
    public static int ANN_PAUSE_COUNT = 4;

    public static int FILTER_TOTAL = 9999;
    public static int FILTER_NOT_USED = 9998;


    public static int ROLE_GUEST = 0; //비인증 유저
    public static int ROLE_MANAGER = 1; //실증책임자
    public static int ROLE_GROWER = 2; //재배사
    public static int ROLE_GOVER = 4; //관계기관
    public static int ROLE_ADMIN = 8; //일반 관리자
    public static int ROLE_SUPER = 512; //슈퍼 관리자

    public static String getRoleString(int role){
        String roleString = "ROLE_GUEST";
        switch (role){
            case 512: roleString="ROLE_SUPER";
            case 0: roleString="ROLE_ADMIN";
            case 1: roleString="ROLE_MANAGER";
            case 2: roleString="ROLE_GROWER";
            case 4: roleString="ROLE_GOVER";
        }
        return roleString;
    }

}
