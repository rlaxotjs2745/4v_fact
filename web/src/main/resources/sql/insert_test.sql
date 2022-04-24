INSERT INTO TB_USER_DEMO_BS (
    IDX_USER_DEMO_BS,
    IDX_DEMO_BUSINESS,
    USER_DEMOBS_STATUS,
    IDX_USER,
    APP_STEP,
    IS_CHANGE,
    IS_CONFIRM,
    REG_DATE,
    LAST_UPD_DATE

) VALUES (
             SEQ_USER_DEMO_BS.NEXTVAL,
             22,
             0,
            2,
             0,
             0,
             0,
             TO_DATE(SYSDATE,'YYYY-MM-DD HH24:MI:SS'),
             TO_DATE(SYSDATE,'YYYY-MM-DD HH24:MI:SS')
         );