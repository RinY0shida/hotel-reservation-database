-- RoomTypes初期データ
INSERT INTO RoomTypes VALUES('RT001', 'シングル', 8000);
INSERT INTO RoomTypes VALUES('RT002', 'ツイン', 12000);

-- Rooms初期データ
INSERT INTO Rooms VALUES('R101', 'RT001', 101);
INSERT INTO Rooms VALUES('R102', 'RT001', 102);
INSERT INTO Rooms VALUES('R201', 'RT002', 201);

-- Customers初期データ
INSERT INTO Customers VALUES('C001', '藤山', 'Fujiyama@exp.com', '080-0000-0000');
INSERT INTO Customers VALUES('C002', '大日方', 'Obinata@exp.net', '090-0000-0000');

-- Reservations初期データ
INSERT INTO Reservations VALUES('RS1001', 'C001', '2024-01-05', '2024-01-07', 16000);
INSERT INTO Reservations VALUES('RS1002', 'C002', '2024-01-10', '2024-01-12', 12000);

-- ReservationDetails初期データ
INSERT INTO ReservationDetails VALUES('RS1001', 'R101');
INSERT INTO ReservationDetails VALUES('RS1001', 'R102');
INSERT INTO ReservationDetails VALUES('RS1002', 'R201');
