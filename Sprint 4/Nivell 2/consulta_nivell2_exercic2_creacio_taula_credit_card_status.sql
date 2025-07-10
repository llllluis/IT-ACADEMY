CREATE TABLE credit_card_status AS (
WITH ultimas_transacciones AS (
    SELECT id, card_id, declined,
        ROW_NUMBER() OVER (PARTITION BY card_id ORDER BY timestamp DESC) AS rn
    FROM transactions
),
top3_transacciones AS (
    SELECT * FROM ultimas_transacciones
    WHERE rn <= 3
),
estado_tarjetas AS (
    SELECT card_id, COUNT(*) AS total, SUM(declined) AS total_declined
    FROM top3_transacciones GROUP BY card_id
)
SELECT cc.id as card_id,
    CASE 
        WHEN et.total = 3 AND et.total_declined = 3 THEN 1 /*desactivada*/
        ELSE 0 /*activada*/
    END AS status
FROM credit_card cc
LEFT JOIN estado_tarjetas et ON cc.id = et.card_id
);
/*afegim clau foranea */
ALTER TABLE credit_card_status ADD CONSTRAINT fk_credit_card   FOREIGN KEY (card_id) REFERENCES credit_card(id)
  ON DELETE CASCADE  ON UPDATE CASCADE;