INSERT INTO TB_HOMEPAGE_INFO(IDX_HOMEPAGE_INFO,
                             HOMEPAGE_ADMIN,
                             HOMEPAGE_ADMIN_PNUM,
                             IS_CURRENT,
                             REG_DATE
                             )VALUES (
                       SEQ_HOMEPAGE_INFO.NEXTVAL,
                       '이아백(관리팀)',
                       '031-7345-0239',
                0,
                TO_DATE(sysdate,'YYYY-MM-DD HH24:mi:SS'));


INSERT INTO TB_USER_DEMO_BS (
    IDX_USER_DEMO_BS,
    IDX_DEMO_BUSINESS,
    USER_DEMOBS_STATUS,
    IDX_USER,
    APP_STEP
) VALUES (
             SEQ_USER_DEMO_BS.NEXTVAL,
             124,
             0,
             124,
             0
         )