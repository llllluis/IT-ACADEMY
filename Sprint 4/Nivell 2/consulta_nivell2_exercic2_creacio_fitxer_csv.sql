WITH ultimas_transacciones AS (
    SELECT 
        id,
        card_id,
        declined,
        ROW_NUMBER() OVER (PARTITION BY card_id ORDER BY timestamp DESC) AS rn
    FROM 
        transactions
),
top3_transacciones AS (
    SELECT 
        *
    FROM 
        ultimas_transacciones
    WHERE rn <= 3
),
estado_tarjetas AS (
    SELECT 
        card_id,
        COUNT(*) AS total,
        SUM(declined) AS total_declined
    FROM 
        top3_transacciones
    GROUP BY 
        card_id
)

SELECT 
    cc.id AS credit_id,
    CASE 
        WHEN et.total = 3 AND et.total_declined = 0 THEN 0
        ELSE 1
    END AS status
FROM 
    credit_card cc
LEFT JOIN 
    estado_tarjetas et ON cc.id = et.card_id
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_card_status.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';
