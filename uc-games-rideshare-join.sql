CREATE DATABASE rideshare_DB;
USE rideshare_DB;

-- Check data was uploaded
SELECT * FROM uc_games2;

SELECT * FROM rideshare_arrival_to_uc;




CREATE VIEW ride_cost_home_away5 AS SELECT uc_games2.Vs AS "Home/Away", COUNT(Vs) AS "# of Rides", ROUND(AVG(rideshare_arrival_to_uc.Fare), 2) AS "Avg Ride Cost"
FROM rideshare_arrival_to_uc
INNER JOIN uc_games2 ON uc_games2.Date = rideshare_arrival_to_uc.arrival_date
GROUP BY Vs;



SELECT * FROM ride_cost_home_away5;