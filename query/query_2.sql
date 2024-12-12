SELECT Rv.ReservationID, C.CustomerName, Rv.TotalAmount, Rv.CheckOutDate
FROM Reservations Rv
JOIN Customers C ON Rv.CustomerID = C.CustomerID
WHERE Rv.CheckOutDate >= '2024-01-01';
