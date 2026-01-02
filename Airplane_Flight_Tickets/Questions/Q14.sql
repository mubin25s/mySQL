-- Question: Count how many passengers are from each country.
SELECT Country, COUNT(*) FROM Passengers GROUP BY Country;