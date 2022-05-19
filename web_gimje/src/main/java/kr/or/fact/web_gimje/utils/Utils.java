package kr.or.fact.web_gimje.utils;

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
            for (int i=0;i<4;i++){
                sb.append(HIDE_CHAR);
            }
            stringBuilder.insert(3, sb.toString());
            return stringBuilder.toString();
        }
    }

}
