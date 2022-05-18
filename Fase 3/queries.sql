-- ------------------------------
-- QUERY 1
-- ------------------------------

SELECT 
tbl1.id_flight_plan,(tbl1.boletos_comprados::numeric(10,2)/tbl2.boletos_disponibles::numeric(10,2))::numeric(10,2)*100 as porcentaje
FROM (
    SELECT 
    fp.id_flight_plan, COUNT(t.id_ticket) as boletos_comprados 
    FROM horizonte_gt.flight f 
    INNER JOIN horizonte_gt.flight_plan fp ON f.id_flight_plan = fp.id_flight_plan
    LEFT JOIN horizonte_gt.ticket t ON t.id_flight = f.id_flight
    WHERE f.flight_date BETWEEN '2022-05-15' AND '2022-05-17'
    GROUP BY fp.id_flight_plan
) AS tbl1 LEFT JOIN (
    SELECT 
    f.id_flight_plan, COUNT(*) as boletos_disponibles 
    FROM horizonte_gt.flight_plan fp
    INNER JOIN horizonte_gt.flight f ON f.id_flight_plan = fp.id_flight_plan
    INNER JOIN horizonte_gt.assignment_seat_ticket ast ON f.id_flight = ast.id_flight
    GROUP BY f.id_flight_plan
) AS tbl2 ON tbl1.id_flight_plan = tbl2.id_flight_plan
WHERE tbl2.boletos_disponibles IS NOT NULL 
ORDER BY porcentaje DESC LIMIT 3;

-- ------------------------------
-- QUERY 2
-- ------------------------------

SELECT 
e.id_employee,
SUM(fp.distance_miles) AS suma_millas,
SUM(fe.extra_comissions_amount) as suma_comisiones
FROM horizonte_gt.employee e
INNER JOIN horizonte_gt.flight_employee fe ON e.id_employee = fe.id_employee
INNER JOIN horizonte_gt.flight f ON f.id_flight = fe.id_flight
INNER JOIN horizonte_gt.flight_plan fp ON fp.id_flight_plan = f.id_flight_plan
WHERE f.flight_date BETWEEN '2022-05-15' AND '2022-05-20' 
GROUP BY e.id_employee
ORDER BY suma_millas DESC LIMIT 3;

-- ------------------------------
-- QUERY 3
-- ------------------------------

SELECT tbl1.id_flight_plan, 
CASE
    WHEN tbl1.total > 0 THEN tbl1.total
ELSE 0
END ingresos
FROM(
    SELECT fp.id_flight_plan, SUM(t.price) as total
    FROM horizonte_gt.flight_plan fp 
    LEFT JOIN horizonte_gt.flight f ON f.id_flight_plan = fp.id_flight_plan
    LEFT JOIN horizonte_gt.ticket t ON t.id_flight = f.id_flight
    GROUP BY fp.id_flight_plan
) AS tbl1;

-- ------------------------------
-- QUERY 4
-- ------------------------------