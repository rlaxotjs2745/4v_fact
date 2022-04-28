
SELECT
        *
FROM (
    SELECT ROW_NUMBER() OVER(ORDER by MPHONE_NUM DESC) AS row_num
        ,t.*
    FROM TB_USER t
    WHERE ROWNUM < 20
    )
WHERE row_num > 10


SELECT
    ANNOUNCE_NUM
     ,SUBJECT
     ,IS_FILE
     ,IS_NEW
     ,AUTHOR
     ,POSTING_START_DATE
     ,VIEW_COUNT
FROM (
         SELECT ROW_NUMBER() OVER(ORDER by ANNOUNCE_NUM DESC) AS row_num
        ,ANNOUNCE_NUM
    ,SUBJECT
         ,IS_FILE
         ,IS_NEW
         ,AUTHOR
         ,POSTING_START_DATE
         ,VIEW_COUNT
FROM (
    SELECT * FROM TB_BS_ANNOUNCEMENT  WHERE IS_SHOW=1 AND ANNOUNCE_STATUS=1
    )

WHERE ROWNUM <= 20
    )
WHERE row_num > 10




SELECT
    IDX_DEMO_BS_CONSULTING
     ,CONSULTING_NUM
     ,IS_CONSULTANT
     ,CONSULTANT_IDX
     ,REQ_DATE
     ,CONSULTING_STATUS
     ,RESULVATION_DATE
     ,CONSULTING_DATE
     ,CONSULT_ANSWER_TYPE
     ,CONSULTING_GOAL
FROM (
         SELECT ROW_NUMBER() OVER(ORDER by CONSULTING_NUM DESC) AS row_num
        ,IDX_DEMO_BS_CONSULTING
                      ,CONSULTING_NUM
          ,IS_CONSULTANT
          ,CONSULTANT_IDX
          ,REQ_DATE
                      ,CONSULTING_STATUS
                      ,RESULVATION_DATE
                      ,CONSULTING_DATE
                     ,CONSULT_ANSWER_TYPE
                      ,CONSULTING_GOAL
FROM (
    SELECT * FROM TB_DEMO_BS_CONSULTING  WHERE IDX_USER=1
                      )

WHERE ROWNUM <=10
             )
WHERE  row_num > 0


SELECT
    IDX_VISIT_REQ
     ,VISITOR
     ,RESULVATION_DATE
     ,VISIT_GOAL
     ,VISIT_REQ_STATUS
     ,IS_GROUP
     ,RESULVATION_DATE
FROM (
         SELECT ROW_NUMBER() OVER(ORDER by VISIT_REQ_NUM DESC) AS row_num
        ,IDX_VISIT_REQ
                      ,VISITOR
                      ,RESULVATION_DATE
                      ,VISIT_GOAL
                      ,VISIT_REQ_STATUS
                      ,IS_GROUP
                      ,RESULVATION_DATE
FROM (
    SELECT * FROM TB_VISIT_REQ  WHERE IDX_USER=1
                      )

WHERE ROWNUM <=10
    )
WHERE  row_num > 0









SELECT TO_DATE(TO_CHAR(SYSDATE, 'YYYYMM') || LPAD(LEVEL, 2, '0')) DATES,(SELECT * FROM TB_VISIT_DATA WHERE CUR_DATE BETWEEN TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-') || '01', 'YYYY-MM-DD') AND LAST_DAY(SYSDATE)) FROM DUAL CONNECT BY TO_DATE(TO_CHAR(SYSDATE, 'YYYYMM') || '01', 'YYYY-MM-DD') + LEVEL - 1 <= LAST_DAY(SYSDATE);

select M_NAME,M_TIME from RESEARCH where M_TIME between to_date('2003-11-12', 'YYYY-MM-DD') and to_date('2003-11-14' || ' 23:59:59', 'YYYYMMDD HH24:MI:SS');

SELECT * FROM TB_VISIT_DATA WHERE CUR_DATE BETWEEN TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-') || '01', 'YYYY-MM-DD') AND LAST_DAY(SYSDATE);

TO_DATE(TO_CHAR(SYSDATE, 'YYYYMM') || LPAD(LEVEL, 2, '0'))


SELECT
       (SELECT DEMO_SUBJECT FROM TB_DEMO_BUSINESS WHERE IDX_DEMO_BUSINESS = TB_USER_DEMO_BS.IDX_DEMO_BUSINESS ) AS DEMO_BUSINESS_NAME
    ,TB_USER_DEMO_BS.*
FROM TB_USER_DEMO_BS
WHERE IDX_USER_DEMO_BS IN (
    SELECT IDX_USER_DEMO_BS FROM TB_APPLICANT_DEMO_BS_JOIN WHERE IDX_USER=2
)

SELECT
    (SELECT DEMO_SUBJECT FROM TB_DEMO_BUSINESS WHERE IDX_DEMO_BUSINESS = TB_USER_DEMO_BS.IDX_DEMO_BUSINESS ) AS DEMO_BS_SUBJECT
     ,TB_USER_DEMO_BS.*
FROM TB_USER_DEMO_BS
WHERE IDX_USER_DEMO_BS IN (
    SELECT IDX_USER_DEMO_BS FROM TB_APPLICANT_DEMO_BS_JOIN WHERE IDX_USER=2
)ORDER BY IDX_DEMO_BUSINESS DESC



SELECT * FROM TB_ADMIN  WHERE admin_id='abcdef01@abcde.com'


SELECT
    (SELECT DEMO_SUBJECT FROM TB_DEMO_BUSINESS WHERE IDX_DEMO_BUSINESS = TB_USER_DEMO_BS.IDX_DEMO_BUSINESS ) AS DEMO_BS_SUBJECT
     ,TB_USER_DEMO_BS.*
FROM TB_USER_DEMO_BS
WHERE IDX_USER_DEMO_BS IN (,
    SELECT IDX_USER_DEMO_BS FROM TB_APPLICANT_DEMO_BS_JOIN WHERE IDX_USER=#{idx_user}
    ) ORDER BY IDX_DEMO_BUSINESS DESC


SELECT (SELECT COUNT(*) FROM TB_DEMO_BUSINESS ) AS tot_count,
       (SELECT COUNT(*) FROM TB_DEMO_BUSINESS WHERE DEMO_BS_STATUS = 3) AS appl_count,
       (SELECT COUNT(*) FROM TB_DEMO_BUSINESS WHERE DEMO_BS_STATUS = 9) AS appl_countbs_count,
       (SELECT COUNT(*) FROM TB_DEMO_BUSINESS WHERE DEMO_BS_STATUS > 9) AS done_count
FROM TB_DEMO_BUSINESS WHERE ROWNUM = 1


SELECT * FROM TB_DEMO_BUSINESS ORDER BY START_DATE DESC