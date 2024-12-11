SELECT C.CustomerName, Rv.CheckInDate, Ro.RoomNumber
FROM RoomTypes RT
JOIN Rooms Ro ON RT.RoomTypeID = Ro.RoomTypeID
JOIN ReservationDetails RD ON Ro.RoomID = RD.RoomID
JOIN Reservations Rv ON RD.ReservationID = Rv.ReservationID
JOIN Customers C ON Rv.CustomerID = C.CustomerID
WHERE RT.RoomTypeName = 'シングル';
