SELECT
  initValue,
  MIN(rankedValue)
FROM 
  (SELECT
    initValue, 
    DENSE_RANK() OVER PARTITION BY (initValue) AS rankedValue
  FROM 
    (SELECT 
      1 AS initValue
    UNION ALL
    SELECT 
      2 AS initValue
    UNION ALL
      2 AS initValue
    UNION ALL  
    SELECT 
      3 AS initValue
    UNION ALL
    SELECT 
      3 AS initValue
    UNION ALL
      3 AS initValue
    UNION ALL
      3 AS initValue) sampletable) core_table
INNER JOIN someTableFunction('value1','valu2',2) joined_table ON
  joined_table.column1 = core_table.initValue
GROUP BY 
  core_table.initValue