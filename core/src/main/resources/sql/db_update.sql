ALTER TABLE TB_USER_DEMO_BS ADD COSTAT_CODE	VARCHAR2(20);

ALTER TABLE TB_USER_DEMO_BS ADD IS_OFFICE_OWER	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD IS_LAB_OWER	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD MAN_TOTAL	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD MAN_OFFICER_COUNT	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD MAN_LAB_COUNT	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD MAN_ETC_COUNT	NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD CAPITAL_AMOUNT	NUMBER(20) DEFAULT 0;