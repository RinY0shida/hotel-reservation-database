CREATE DATABASE HotelReservationDB;
USE HotelReservationDB;

-- RoomTypesテーブル作成
CREATE TABLE RoomTypes (
  RoomTypeID    VARCHAR(10) PRIMARY KEY,
  RoomTypeName  VARCHAR(50) NOT NULL,
  StandardRate  INT NOT NULL
);

-- Roomsテーブル作成
CREATE TABLE Rooms (
  RoomID      VARCHAR(10) PRIMARY KEY,
  RoomTypeID  VARCHAR(10) NOT NULL,
  RoomNumber  INT NOT NULL,
  FOREIGN KEY (RoomTypeID) REFERENCES RoomTypes(RoomTypeID)
);

-- Customersテーブル作成
CREATE TABLE Customers (
  CustomerID    VARCHAR(10) PRIMARY KEY,
  CustomerName  VARCHAR(100) NOT NULL,
  CustomerEmail VARCHAR(100),
  CustomerPhone VARCHAR(20)
);

-- Reservationsテーブル作成
CREATE TABLE Reservations (
  ReservationID VARCHAR(10) PRIMARY KEY,
  CustomerID    VARCHAR(10) NOT NULL,
  CheckInDate   DATE NOT NULL,
  CheckOutDate  DATE NOT NULL,
  TotalAmount   INT NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- ReservationDetailsテーブル作成
CREATE TABLE ReservationDetails (
  ReservationID VARCHAR(10) NOT NULL,
  RoomID        VARCHAR(10) NOT NULL,
  PRIMARY KEY (ReservationID, RoomID),
  FOREIGN KEY (ReservationID) REFERENCES Reservations(ReservationID),
  FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);
