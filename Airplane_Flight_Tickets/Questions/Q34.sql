-- Question: Find airports that have direct flights to 'London'.
SELECT DISTINCT
    A.Airport_Name
FROM
    Airports A
    JOIN Flights F ON A.Airport_Code = F.Origin_Code
    JOIN Airports Dest ON F.Destination_Code = Dest.Airport_Code
WHERE
    Dest.City = 'London';