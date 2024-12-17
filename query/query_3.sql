SELECT DISTINCT RT.RoomTypeName
FROM Customers C
JOIN Reservations Rv ON C.CustomerID = Rv.CustomerID
JOIN ReservationDetails RD ON Rv.ReservationID = RD.ReservationID
JOIN Rooms Ro ON RD.RoomID = Ro.RoomID
JOIN RoomTypes RT ON Ro.RoomTypeID = RT.RoomTypeID
WHERE C.CustomerName = '藤山';
