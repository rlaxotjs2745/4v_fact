/*테이블 컬럼 추가*/
ALTER TABLE TB_CORP_MANAGER ADD CORP_MANAGER_TYPE NUMBER(4) DEFAULT 0 NOT NULL ;


ALTER TABLE TB_SERVICE_AGREE RENAME COLUMN VERSION TO AGREE_VER;
ALTER TABLE TB_PRIVACY_AGREE RENAME COLUMN VERSION TO AGREE_VER;
ALTER TABLE TB_THIRD_PARTY_AGREE RENAME COLUMN VERSION TO AGREE_VER;

ALTER TABLE TB_DEMO_BS_CONSULTING RENAME COLUMN IDX_CORP_INFO TO IDX_USER;

ALTER TABLE TB_BS_ANNOUNCEMENT RENAME COLUMN BS_ANNOUNCEMENT_CONTENTS TO ANNOUNCE_CONTENTS;

ALTER TABLE TB_BS_ANNOUNCEMENT RENAME COLUMN IS_OPEN TO IS_SHOW;

ALTER TABLE TB_BS_ANNOUNCEMENT ADD BS_STATUS NUMBER(4) DEFAULT 0;

ALTER TABLE TB_DEMO_BS_CONSULTING ADD CONSULT_TYPE_ETC_STR VARCHAR2(100);


ALTER TABLE TB_DEMO_BS_QNA ADD IS_PRIVACY_ACCEPT NUMBER(4) DEFAULT 1;
ALTER TABLE TB_DEMO_BS_QNA ADD BS_QNA_NUM NUMBER(20) ;
BS_QNA_NUM NUMBER(20),

ALTER TABLE TB_DEMO_BS_CONSULTING ADD CONSULTING_NUM NUMBER(20);

ALTER TABLE TB_DEMO_BS_CONSULTING ADD IDX_CORP_INFO NUMBER(32);


ALTER TABLE TB_ASSET_RESERVATION_ITEM MODIFY ASSET_MANAGE_CODE	VARCHAR2(100);

ALTER TABLE TB_NOTICE ADD POSTING_START_DATE DATE;
ALTER TABLE TB_NOTICE ADD POSTING_END_DATE DATE;
ALTER TABLE TB_NOTICE ADD DOC_VERSION NUMBER(4) DEFAULT 0;
ALTER TABLE TB_NOTICE ADD MEMO VARCHAR2(1000);
ALTER TABLE TB_NOTICE ADD SEARCH_TAG NUMBER(32);


ALTER TABLE TB_PR_CONTENT RENAME COLUMN PR_END_DATE TO SHOW_END_DATE;



ALTER TABLE TB_CORP_INFO ADD CORP_TYPE NUMBER(4) DEFAULT 1 NOT NULL;
ALTER TABLE TB_CORP_INFO ADD IS_APPLICANT NUMBER(4) DEFAULT 0 NOT NULL;
ALTER TABLE TB_CO_WORKER ADD COWORKER_NAME VARCHAR2(40) NOT NULL;


ALTER TABLE TB_CORP_INFO MODIFY CORP_NAME_KOR	VARCHAR2(200);

ALTER TABLE TB_CORP_INFO ADD CEO_NAME_KOR	VARCHAR2(40);
ALTER TABLE TB_CORP_INFO ADD CEO_ADDR	VARCHAR2(200);
ALTER TABLE TB_CORP_INFO ADD CEO_TEL_NUM	VARCHAR2(20);
ALTER TABLE TB_CORP_INFO ADD CEO_MPHONE_NUM	VARCHAR2(20);
ALTER TABLE TB_CORP_INFO ADD CEO_EMAIL	VARCHAR2(320);

ALTER TABLE TB_USER ADD IS_SERVICE_AGREE NUMBER(4) DEFAULT 1 NOT NULL;
ALTER TABLE TB_USER ADD SERVICE_AGREE_VER NUMBER(4) DEFAULT 1 NOT NULL;
ALTER TABLE TB_USER ADD IS_PRIVACY_AGREE NUMBER(4) DEFAULT 1 NOT NULL;
ALTER TABLE TB_USER ADD PRIVACY_AGREE_VER NUMBER(4) DEFAULT 1 NOT NULL;
ALTER TABLE TB_USER ADD IS_THIRD_PARTY_AGREE NUMBER(4) DEFAULT 1 NOT NULL;
ALTER TABLE TB_USER ADD THIRD_PARTY_AGREE_VER NUMBER(4) DEFAULT 1 NOT NULL;
ALTER TABLE TB_USER ADD IS_MAKETING_AGREE NUMBER(4) DEFAULT 1 NOT NULL;

ALTER TABLE TB_USER ADD IS_EMAIL_AGREE NUMBER(4) DEFAULT 0 NOT NULL;


ALTER TABLE TB_USER_DEMO_BS ADD USER_DEMO_STATUS NUMBER(4) DEFAULT 0;
ALTER TABLE TB_USER_DEMO_BS RENAME COLUMN PR_END_DATE TO SHOW_END_DATE;

ALTER TABLE TB_USER_DEMO_BS DROP COLUMN IDX_DEMO_BS_APPLICAION_EVALUATE;

ALTER TABLE TB_DEMO_BS_APPLICAION ADD IDX_USER NUMBER(32) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD REQ_FACILITY NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD CORP_ADDR2 VARCHAR2(1000);
ALTER TABLE TB_USER_DEMO_BS ADD CORP_RND_ADDR2 VARCHAR2(1000);
ALTER TABLE TB_USER_DEMO_BS ADD CEO_ADDRESS2 VARCHAR2(1000);

ALTER TABLE TB_USER_DEMO_BS ADD REQ_ETC VARCHAR2(400);

ALTER TABLE TB_USER_DEMO_BS ADD MAN_DPART VARCHAR2(100);
ALTER TABLE TB_USER_DEMO_BS ADD MAN_ROLE VARCHAR2(200);

ALTER TABLE TB_USER_DEMO_BS ADD USER_DEMO_IS_CROPS NUMBER(4) DEFAULT 0;

ALTER TABLE TB_USER_DEMO_BS ADD USER_DEMO_REPEAT_COUNT NUMBER(4) DEFAULT 0;

ALTER TABLE TB_DEMO_BUSINESS ADD LAST_UPD_DATE	DATE;

ALTER TABLE TB_DEMO_BUSINESS ADD IDX_CONFORM_ADMIN	NUMBER(4) DEFAULT 0;
ALTER TABLE TB_DEMO_BUSINESS ADD IS_ANNOUNCE NUMBER(4) DEFAULT 0;


UPDATE TB_USER_DEMO_BS SET

            IDX_DEMO_BUSINESS = 16,
            USER_DEMOBS_STATUS = 0,
            IDX_USER = 2,
            USER_DEMO_BS_APP_CODE = 'werth',
            APP_STEP = 0,
            USER_DEMO_BS_TYPE = 2,
            IDX_CORP_INFO = 12,
            CORP_NAME = '학샌',
            CORP_BIRTH = '1234-09-09'

WHERE IDX_USER_DEMO_BS = 10059;