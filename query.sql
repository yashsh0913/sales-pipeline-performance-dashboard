SELECT COUNT(*) AS total_leads FROM crm_funnel;
SELECT 
    COUNT(*) AS total,
    SUM(CASE WHEN Contacted = 'Yes' THEN 1 ELSE 0 END) AS contacted,
    SUM(CASE WHEN Qualified = 'Yes' THEN 1 ELSE 0 END) AS qualified,
    SUM(CASE WHEN Proposal_Sent = 'Yes' THEN 1 ELSE 0 END) AS proposals,
    SUM(CASE WHEN Closed_Won = 'Yes' THEN 1 ELSE 0 END) AS won
FROM crm_funnel;
SELECT 
    ROUND(SUM(CASE WHEN Closed_Won = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM crm_funnel;
SELECT 
    Source,
    COUNT(*) AS total,
    SUM(CASE WHEN Closed_Won = 'Yes' THEN 1 ELSE 0 END) AS won,
    ROUND(SUM(CASE WHEN Closed_Won = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM crm_funnel
GROUP BY Source
ORDER BY conversion_rate DESC;
SELECT 
    Source,
    COUNT(*) AS total,
    SUM(CASE WHEN Closed_Won = 'Yes' THEN 1 ELSE 0 END) AS won,
    ROUND(SUM(CASE WHEN Closed_Won = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM crm_funnel
GROUP BY Source
ORDER BY conversion_rate DESC;
SELECT 
    Industry,
    SUM(Revenue) AS revenue
FROM crm_funnel
WHERE Closed_Won = 'Yes'
GROUP BY Industry
ORDER BY revenue DESC;
SELECT 
    CASE 
        WHEN Lead_Score >= 80 THEN 'High'
        WHEN Lead_Score >= 50 THEN 'Medium'
        ELSE 'Low'
    END AS category,
    COUNT(*) AS total,
    SUM(CASE WHEN Closed_Won = 'Yes' THEN 1 ELSE 0 END) AS converted
FROM crm_funnel
GROUP BY category;
SELECT 
    CASE 
        WHEN Response_Time_Hours <= 2 THEN 'Fast'
        WHEN Response_Time_Hours <= 24 THEN 'Moderate'
        ELSE 'Slow'
    END AS speed,
    COUNT(*) AS total,
    SUM(CASE WHEN Closed_Won = 'Yes' THEN 1 ELSE 0 END) AS wins
FROM crm_funnel
GROUP BY speed;
SELECT 
    Lost_Reason,
    COUNT(*) AS count
FROM crm_funnel
WHERE Closed_Won = 'No'
GROUP BY Lost_Reason
ORDER BY count DESC;