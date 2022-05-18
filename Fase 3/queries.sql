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

SELECT
tbl4.name, 
tbl5.conteo,
(tbl4.promedio_p + tbl4.promedio_c + tbl4.promedio_w) as promedio
FROM (
    SELECT
    tbl1.id_airplane_type, 
    tbl1.name, 
    CASE
        WHEN tbl1.promedio > 0 THEN tbl1.promedio
    ELSE 0
    END promedio_p,
    CASE
        WHEN tbl2.promedio > 0 THEN tbl2.promedio
    ELSE 0
    END promedio_c,
    CASE
        WHEN tbl3.promedio > 0 THEN tbl3.promedio
    ELSE 0
    END promedio_w
    FROM (
        SELECT
        apt.id_airplane_type, apt.name, AVG(mp.price)::numeric(10,2) as promedio
        FROM horizonte_gt.airplane_type apt
        INNER JOIN horizonte_gt.airplane ap ON ap.id_airplane_type = apt.id_airplane_type
        INNER JOIN horizonte_gt.ticket t ON t.id_airplane = ap.id_airplane
        INNER JOIN horizonte_gt.movie_purchase mp ON mp.id_ticket = t.id_ticket
        GROUP BY apt.id_airplane_type
        ORDER BY promedio DESC
    ) AS tbl1 
    LEFT JOIN (
        SELECT
        apt.id_airplane_type, apt.name, AVG(mep.price)::numeric(10,2) as promedio
        FROM horizonte_gt.airplane_type apt
        INNER JOIN horizonte_gt.airplane ap ON ap.id_airplane_type = apt.id_airplane_type
        INNER JOIN horizonte_gt.ticket t ON t.id_airplane = ap.id_airplane
        INNER JOIN horizonte_gt.menu_purchase mep ON mep.id_ticket = t.id_ticket
        GROUP BY apt.id_airplane_type
        ORDER BY promedio DESC
    ) AS tbl2 ON tbl2.id_airplane_type = tbl1.id_airplane_type
    LEFT JOIN (
        SELECT
        apt.id_airplane_type, apt.name, AVG(wp.price)::numeric(10,2) as promedio
        FROM horizonte_gt.airplane_type apt
        INNER JOIN horizonte_gt.airplane ap ON ap.id_airplane_type = apt.id_airplane_type
        INNER JOIN horizonte_gt.ticket t ON t.id_airplane = ap.id_airplane
        INNER JOIN horizonte_gt.wifi_purchase wp ON wp.id_ticket = t.id_ticket
        INNER JOIN horizonte_gt.wifi_price wpr ON wp.id_wifi_price = wpr.id_wifi_price
        GROUP BY apt.id_airplane_type
        ORDER BY promedio DESC
) AS tbl3 ON tbl2.id_airplane_type = tbl3.id_airplane_type) AS tbl4
INNER JOIN (
    SELECT a.id_airplane_type, COUNT(*) as conteo FROM
    horizonte_gt.airplane_type a 
    INNER JOIN horizonte_gt.airplane ap ON a.id_airplane_type =  ap.id_airplane_type
    INNER JOIN horizonte_gt.flight f ON f.id_airplane = ap.id_airplane
    GROUP BY a.id_airplane_type
) as tbl5 ON tbl5.id_airplane_type = tbl4.id_airplane_type
ORDER BY promedio DESC LIMIT 1;

-- ------------------------------
-- QUERY 5
-- ------------------------------
SELECT SUM(total) as gastos FROM (
    SELECT SUM(extra_comissions_amount) as total
    FROM horizonte_gt.flight_employee 
    UNION
    SELECT SUM(amount_salary) as total
    FROM horizonte_gt.hours_worked 
    WHERE is_paid = true
    UNION
    SELECT SUM(price) as total
    FROM horizonte_gt.movie_purchase 
    UNION
    SELECT SUM(price) as total
    FROM horizonte_gt.wifi_purchase 
    UNION
    SELECT SUM(price) as total
    FROM horizonte_gt.menu_purchase 
) AS total;

-- ------------------------------
-- QUERY 6
-- ------------------------------
SELECT
fp.id_flight_plan,
CASE
    WHEN tbl1.retrasados > 0 THEN tbl1.retrasados
ELSE 0
END atrasados, 
CASE
    WHEN tbl1.cancelados > 0 THEN tbl1.cancelados
ELSE 0
END cancelados 
FROM horizonte_gt.flight_plan fp
LEFT JOIN (
    SELECT 
    fp.id_flight_plan,
    SUM(
        CASE
            WHEN fsl.name_flight_status = 'RETRASADO' THEN 1
            ELSE 0
        END
    ) AS retrasados,
    SUM(
        CASE
            WHEN fsl.name_flight_status = 'CANCELADO' THEN 1
            ELSE 0
        END
    ) AS cancelados
    FROM horizonte_gt.flight_plan fp
    INNER JOIN horizonte_gt.flight f ON fp.id_flight_plan = f.id_flight_plan
    LEFT JOIN horizonte_gt.flight_status_logger fsl ON fsl.id_flight = f.id_flight
    WHERE (fsl.name_flight_status = 'RETRASADO' OR fsl.name_flight_status = 'CANCELADO')
    AND fsl.date BETWEEN '2010-12-12' AND '2023-12-13'
    GROUP BY fp.id_flight_plan
) AS tbl1 ON tbl1.id_flight_plan = fp.id_flight_plan;

-- ------------------------------
-- QUERY 7
-- ------------------------------

SELECT 
tbl1.id_flight, 
tbl1.equipaje,
tbl1.total_pagos,
tbl2.pasajeros 
FROM (
    SELECT f.id_flight, COUNT(l.luggage_number) as equipaje, SUM(lp.price) as total_pagos FROM horizonte_gt.flight f
    INNER JOIN horizonte_gt.ticket t ON f.id_flight = t.id_flight
    INNER JOIN horizonte_gt.luggage l ON l.id_ticket = t.id_ticket
    INNER JOIN horizonte_gt.luggage_price lp ON l.luggage_number = lp.luggage_number 
    AND l.id_luggage_type = lp.id_luggage_type
    GROUP BY f.id_flight
) AS tbl1 INNER JOIN (
    SELECT f.id_flight, COUNT(*) as pasajeros FROM horizonte_gt.flight f 
    INNER JOIN horizonte_gt.ticket t ON t.id_flight = f.id_flight
    GROUP BY f.id_flight
) AS tbl2 ON tbl1.id_flight = tbl2.id_flight
WHERE tbl1.id_flight = 30;

-- ------------------------------
-- QUERY 8
-- ------------------------------