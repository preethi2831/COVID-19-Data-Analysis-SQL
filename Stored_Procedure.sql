DELIMITER //

CREATE PROCEDURE GetCountryData(IN cname VARCHAR(100))
BEGIN
    SELECT *
    FROM covid_dataset
    WHERE country = cname;
END //

DELIMITER ;
