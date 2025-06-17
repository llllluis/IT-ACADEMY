SELECT 
    c.company_name as EMPRESA,
    CASE
      WHEN (
        SELECT COUNT(*)
        FROM transactions.transaction t
        WHERE t.company_id = c.id
      ) > 400
      THEN 'SI'
      ELSE 'NO'
    END AS mes_de_400
FROM company c
order by mes_de_400