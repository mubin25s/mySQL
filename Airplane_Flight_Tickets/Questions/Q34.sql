<<<<<<< HEAD
-- Question: Find airports that have direct flights to 'London'.
SELECT DISTINCT
    A.Airport_Name
FROM
    Airports A
    JOIN Flights F ON A.Airport_Code = F.Origin_Code
    JOIN Airports Dest ON F.Destination_Code = Dest.Airport_Code
WHERE
=======
-- Question: Find airports that have direct flights to 'London'.
SELECT DISTINCT
    A.Airport_Name
FROM
    Airports A
    JOIN Flights F ON A.Airport_Code = F.Origin_Code
    JOIN Airports Dest ON F.Destination_Code = Dest.Airport_Code
WHERE
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    Dest.City = 'London';