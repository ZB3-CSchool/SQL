-- 코드를 입력하세요
SELECT RI.REST_ID, RI.REST_NAME, RI.FOOD_TYPE, RI.FAVORITES, RI.ADDRESS, A.SCORE
FROM REST_INFO RI
JOIN (SELECT RR.REST_ID, ROUND(AVG(RR.REVIEW_SCORE), 2) AS SCORE
      FROM REST_REVIEW AS RR
      GROUP BY RR.REST_ID) AS A
ON RI.REST_ID = A.REST_ID AND RI.ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, RI.FAVORITES DESC;