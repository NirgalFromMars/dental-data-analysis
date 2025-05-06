-- vistas para Power BI -> genera tablas resumen a utilizar para visualizar allí

-- Agrupa por tipo de proveedor y muestra el total de cada tipo de servicio (ADV, PREV, TXMT, EXAM) por año
CREATE VIEW vw_TotalServiciosPorTipoYAño AS
SELECT
    '2022' AS Año,
    PROVIDER_TYPE,
    SUM(ADV_SVC_CNT) AS Total_ADV,
    SUM(PREV_SVC_CNT) AS Total_PREV,
    SUM(TXMT_SVC_CNT) AS Total_TXMT,
    SUM(EXAM_SVC_CNT) AS Total_EXAM
FROM DentalData2022
GROUP BY PROVIDER_TYPE

UNION ALL

SELECT
    '2023' AS Año,
    PROVIDER_TYPE,
    SUM(ADV_SVC_CNT),
    SUM(PREV_SVC_CNT),
    SUM(TXMT_SVC_CNT),
    SUM(EXAM_SVC_CNT)
FROM DentalData2023
GROUP BY PROVIDER_TYPE;

-- Comparación del número total de un tipo de servicio entre 2022 y 2023, por proveedor
-- (generamos 4 vistas de estas, una por cada tipo de servicio: ADV, PREV, TXMT, EXAM)
CREATE VIEW vw_Comparativa_TXMT_Servicios AS
SELECT
    a.PROVIDER_LEGAL_NAME,
    a.PROVIDER_TYPE,
    SUM(a.TXMT_SVC_CNT) AS TXMT_2022,
    SUM(b.TXMT_SVC_CNT) AS TXMT_2023,
    100.0 * (SUM(b.TXMT_SVC_CNT) - SUM(a.TXMT_SVC_CNT)) / NULLIF(SUM(a.TXMT_SVC_CNT), 0) AS Diferencia_Porcentual
FROM DentalData2022 a
JOIN DentalData2023 b
    ON a.RENDERING_NPI = b.RENDERING_NPI
    AND a.PROVIDER_LEGAL_NAME = b.PROVIDER_LEGAL_NAME
GROUP BY a.PROVIDER_LEGAL_NAME, a.PROVIDER_TYPE;
