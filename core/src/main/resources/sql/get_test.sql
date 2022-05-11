
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

SELECT A.IDX_BS_ANNOUNCEMENT AS IDX_BS_ANNOUNCEMENT,
       A.BS_ANNOUNCEMENT_CODE AS BS_ANNOUNCEMENT_CODE,
       A.ANNOUNCE_NUM AS ANNOUNCE_NUM,
       A.BS_STATUS AS BS_STATUS,
       A.SUBJECT AS SUBJECT,
       A.VIEW_COUNT AS VIEW_COUNT,
       B.APPLICANT_COUNT AS APPLICANT_COUNT,
       A.POSTING_START_DATE AS POSTING_START_DATE,
       A.POSTING_END_DATE AS POSTING_END_DATE,
       A.AUTHOR AS AUTHOR

FROM TB_BS_ANNOUNCEMENT A
         JOIN TB_DEMO_BUSINESS B
              ON A.IDX_DEMO_BUSINESS = B.IDX_DEMO_BUSINESS


SELECT *
FROM (SELECT ROW_NUMBER() OVER(ORDER BY ANNOUNCE_NUM DESC) AS row_num,
       IDX_BS_ANNOUNCEMENT,
       BS_ANNOUNCEMENT_CODE,
       ANNOUNCE_NUM,
       BS_STATUS,
       SUBJECT,
       VIEW_COUNT,
       APPLICANT_COUNT,
       POSTING_START_DATE,
       POSTING_END_DATE,
       AUTHOR
FROM (
         SELECT A.IDX_BS_ANNOUNCEMENT  AS IDX_BS_ANNOUNCEMENT,
                A.BS_ANNOUNCEMENT_CODE AS BS_ANNOUNCEMENT_CODE,
                A.ANNOUNCE_NUM         AS ANNOUNCE_NUM,
                A.BS_STATUS            AS BS_STATUS,
                A.SUBJECT              AS SUBJECT,
                A.VIEW_COUNT           AS VIEW_COUNT,
                B.APPLICANT_COUNT      AS APPLICANT_COUNT,
                A.POSTING_START_DATE   AS POSTING_START_DATE,
                A.POSTING_END_DATE     AS POSTING_END_DATE,
                A.AUTHOR               AS AUTHOR

         FROM TB_BS_ANNOUNCEMENT A
                  JOIN TB_DEMO_BUSINESS B
                       ON A.IDX_DEMO_BUSINESS = B.IDX_DEMO_BUSINESS
     )
WHERE ROWNUM <= 5)
WHERE row_num >1

SELECT *
FROM (
         SELECT ROW_NUMBER() OVER(ORDER BY IDX_DEMO_BUSINESS DESC) AS row_num,
            IDX_DEMO_BUSINESS,
            DEMO_BS_CODE,
            DEMO_SUBJECT,
            APPLICANT_COUNT,
            RECRUIT_COUNT_LIMIT,
            EXAM_START,
            EXAM_END,
            IDX_BS_ANNOUNCEMENT,
            APPL_REVIEW_DONE,
            APPL_RECOMM
FROM (
    SELECT A.IDX_DEMO_BUSINESS AS IDX_DEMO_BUSINESS,
    A.DEMO_BS_CODE AS DEMO_BS_CODE,
    A.DEMO_SUBJECT AS DEMO_SUBJECT,
    A.APPLICANT_COUNT AS APPLICANT_COUNT,
    A.RECRUIT_COUNT_LIMIT AS RECRUIT_COUNT_LIMIT,
    A.EXAM_START AS EXAM_START,
    A.EXAM_END AS EXAM_END,
    B.IDX_BS_ANNOUNCEMENT AS IDX_BS_ANNOUNCEMENT,
    (SELECT COUNT(*) FROM TB_DEMO_BS_APPLICAION WHERE A.IDX_DEMO_BUSINESS = C.IDX_DEMO_BUSINESS AND APPLICANT_STATUS = 3) AS APPL_REVIEW_DONE,
    (SELECT COUNT(*) FROM TB_DEMO_BS_APPLICAION WHERE A.IDX_DEMO_BUSINESS = C.IDX_DEMO_BUSINESS AND APPLICANT_STATUS = 2) AS APPL_RECOMM

    FROM TB_DEMO_BUSINESS A
    INNER JOIN TB_BS_ANNOUNCEMENT B
    ON A.IDX_DEMO_BUSINESS = B.IDX_DEMO_BUSINESS
    LEFT OUTER JOIN TB_DEMO_BS_APPLICAION C
    ON A.IDX_DEMO_BUSINESS = C.IDX_DEMO_BUSINESS

    WHERE A.DEMO_BS_STATUS > 2

    )

        )
WHERE row_num > 0

SELECT COUNT (*) FROM TB_DEMO_BUSINESS WHERE DEMO_BS_STATUS > 2

SELECT
    *
FROM (
         SELECT ROW_NUMBER() OVER(ORDER by IDX_DEMO_BS_APPLICAION DESC) AS row_num,
                IDX_DEMO_BS_APPLICAION,
                IDX_USER_DEMO_BS,
                IDX_DEMO_BUSINESS,
                IDX_CORP_INFO,
                IDX_USER,
                MAN_NAME,
                CEO_NAME,
                CEO_MNUMBER,
                APPLICANT_STATUS,
                IS_FILE,
                IS_IMPROVE,
                IS_IMPROVE_FILE,
                APPLICAION_REG_DATE,
                ADMIN_NAME,
                IDX_ADMIN
FROM (
    SELECT
    A.IDX_DEMO_BS_APPLICAION AS IDX_DEMO_BS_APPLICAION,
    A.IDX_USER_DEMO_BS AS IDX_USER_DEMO_BS,
    A.IDX_DEMO_BUSINESS AS IDX_DEMO_BUSINESS,
    A.IDX_CORP_INFO AS IDX_CORP_INFO,
    B.IDX_USER AS IDX_USER,
    B.MAN_NAME AS MAN_NAME,
    B.CEO_NAME AS CEO_NAME,
    B.CEO_MNUMBER AS CEO_MNUMBER,
    A.APPLICANT_STATUS AS APPLICANT_STATUS,
    A.IS_FILE AS IS_FILE,
    A.IS_IMPROVE AS IS_IMPROVE,
    A.IS_IMPROVE_FILE AS IS_IMPROVE_FILE,
    A.APPLICAION_REG_DATE AS APPLICAION_REG_DATE,
    ADMIN_NAME AS ADMIN_NAME,
    A.IDX_ADMIN AS IDX_ADMIN
    FROM TB_DEMO_BS_APPLICAION A
             INNER JOIN TB_USER_DEMO_BS B
                        ON A.IDX_USER_DEMO_BS = B.IDX_USER_DEMO_BS
             LEFT OUTER JOIN TB_ADMIN C
                             ON A.IDX_ADMIN=C.IDX_ADMIN


                )
WHERE ROWNUM <=10
    )
WHERE row_num > 0

SELECT * FROM TB_DEMO_BS_APPLICAION WHERE IDX_USER_DEMO_BS=10077

SELECT ROW_NUMBER() OVER(ORDER by IDX_DEMO_BS_APPLICAION DESC) AS row_num,
    IDX_DEMO_BS_APPLICAION,
    IDX_USER_DEMO_BS,
    IDX_DEMO_BUSINESS,
    IDX_CORP_INFO,
    IDX_USER,
    MAN_NAME,
    CEO_NAME,
    CEO_MNUMBER,
    APPLICANT_STATUS,
    IS_FILE,
    IS_IMPROVE,
    IS_IMPROVE_FILE,
    APPLICAION_REG_DATE,
    ADMIN_NAME,
    IDX_ADMIN
FROM (
    SELECT
    A.IDX_DEMO_BS_APPLICAION AS IDX_DEMO_BS_APPLICAION,
    A.IDX_USER_DEMO_BS AS IDX_USER_DEMO_BS,
    A.IDX_DEMO_BUSINESS AS IDX_DEMO_BUSINESS,
    A.IDX_CORP_INFO AS IDX_CORP_INFO,
    B.IDX_USER AS IDX_USER,
    B.MAN_NAME AS MAN_NAME,
    B.CEO_NAME AS CEO_NAME,
    B.CEO_MNUMBER AS CEO_MNUMBER,
    A.APPLICANT_STATUS AS APPLICANT_STATUS,
    A.IS_FILE AS IS_FILE,
    A.IS_IMPROVE AS IS_IMPROVE,
    A.IS_IMPROVE_FILE AS IS_IMPROVE_FILE,
    A.APPLICAION_REG_DATE AS APPLICAION_REG_DATE,
    ADMIN_NAME AS ADMIN_NAME,
    A.IDX_ADMIN AS IDX_ADMIN
    FROM TB_DEMO_BS_APPLICAION A
    INNER JOIN TB_USER_DEMO_BS B
    ON A.IDX_USER_DEMO_BS = B.IDX_USER_DEMO_BS
    LEFT OUTER JOIN TB_ADMIN C
    ON A.IDX_ADMIN=C.IDX_ADMIN

    WHERE A.IDX_DEMO_BUSINESS = 18);


SELECT * FROM TB_VISIT_DATA WHERE TO_CHAR(CUR_DATE , 'YYYYMMDD' ) = to_char( SYSDATE, 'YYYYMMDD');

SELECT * FROM TB_VISIT_DATA WHERE CUR_DATE BETWEEN TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-') || '01', 'YYYY-MM-DD') AND LAST_DAY(SYSDATE);