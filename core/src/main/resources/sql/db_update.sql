ALTER TABLE TB_USER_DEMO_BS ADD COSTAT_CODE	VARCHAR2(20);

ALTER TABLE TB_USER_DEMO_BS ADD IS_OFFICE_OWER	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD IS_LAB_OWER	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD MAN_TOTAL	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD MAN_OFFICER_COUNT	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD MAN_LAB_COUNT	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD MAN_ETC_COUNT	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD CAPITAL_AMOUNT	NUMBER(20) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD CORP_PHONE	VARCHAR2(40);
ALTER TABLE TB_USER_DEMO_BS ADD LAB_PHONE	VARCHAR2(40);

ALTER TABLE TB_USER_DEMO_BS ADD LAB_EST_DATE	VARCHAR2(20);
ALTER TABLE TB_USER_DEMO_BS ADD RND_RATE	NUMBER(4) DEFAULT 0;
ALTER TABLE TB_USER_DEMO_BS ADD CONSOLIDATED_COMPANY VARCHAR2(100);

ALTER TABLE TB_USER_DEMO_BS ADD HISTORY1	VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD HISTORY1_DATE	VARCHAR2(20);
ALTER TABLE TB_USER_DEMO_BS ADD HISTORY2	VARCHAR2(100)
ALTER TABLE TB_USER_DEMO_BS ADD HISTORY2_DATE	VARCHAR2(20);
ALTER TABLE TB_USER_DEMO_BS ADD HISTORY3	VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD HISTORY3_DATE	VARCHAR2(20);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE1	VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE1_DATE	VARCHAR2(20);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE1_ORG	VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE1_ETC	VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE2	VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE2_DATE	VARCHAR2(20);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE2_ORG	VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE2_ETC	VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE3	VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE3_DATE	VARCHAR2(20);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE3_ORG	VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD PRIZE3_ETC	VARCHAR2(100);


ALTER TABLE TB_USER_DEMO_BS ADD FARMING_START_DATE DATE;
ALTER TABLE TB_USER_DEMO_BS ADD FARMING_END_DATE DATE;
ALTER TABLE TB_USER_DEMO_BS ADD FARMING_REPEAT NUMBER(4);
ALTER TABLE TB_USER_DEMO_BS_DETAIL ADD RND_EFFORT6_ETC VARCHAR2(40);
