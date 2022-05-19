package kr.or.fact.web.utils;

import java.util.Random;

public class Utils {

    private static final String HIDE_CHAR = "*";

    public static String asHiddenEmail(String privateEmail) {
        int atSignIndex = privateEmail.indexOf("@");

        if (atSignIndex == -1) {
            throw new IllegalArgumentException("`privateEmail` must be an email.");
        }

        StringBuilder stringBuilder = new StringBuilder(privateEmail);
        String emailName = privateEmail.substring(0, atSignIndex);

        if (emailName.length() == 1) {
            return stringBuilder.replace(0, emailName.length(), HIDE_CHAR).toString();
        }
        if (emailName.length() < 4) {
            StringBuilder sb = new StringBuilder();
            for (int i=0;i<emailName.length() - 1;i++){
                sb.append(HIDE_CHAR);
            }
            String hiddenNameEnd=sb.toString();
            //HIDE_CHAR.repa(emailName.length() - 1);

            return stringBuilder.replace(1, atSignIndex, hiddenNameEnd).toString();
        }
        else {
            stringBuilder.delete(3, atSignIndex);
            StringBuilder sb = new StringBuilder();
            for (int i=0;i<atSignIndex-3;i++){
                sb.append(HIDE_CHAR);
            }
            String hiddenNameEnd=sb.toString();
            stringBuilder.insert(3, sb.toString());
            return stringBuilder.toString();
        }
    }
    public static String asHiddenPNumber(String privatePhone) {

        if (privatePhone.length()<10 || !privatePhone.contains("-")) {
            throw new IllegalArgumentException("`privatePhone` must has dash.");
        }
        String[] pData = privatePhone.split("-");
        StringBuilder sb1 = new StringBuilder(pData[1]);
        sb1.delete(2,pData[1].length());
        for (int i=0;i<pData[1].length() - 2;i++){
            sb1.append(HIDE_CHAR);
        }
        StringBuilder sb2 = new StringBuilder(pData[1]);
        sb2.delete(0,2);
        sb2.insert(0,"**");

        String returnStr = pData[0]+"-"+sb1.toString()+"-"+sb2.toString();

        return returnStr;
    }

    public static String generateAuthNo() {
        Random rand = new Random();
        String numStr = ""; //난수가 저장될 변수

        for(int i=0;i<6;i++) {

            //0~9 까지 난수 생성
            String ran = Integer.toString(rand.nextInt(10));

                numStr += ran;

        }
        return numStr;

    }
}
