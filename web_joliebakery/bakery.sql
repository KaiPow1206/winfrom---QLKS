﻿USE Master
GO
IF EXISTS (SELECT * FROM sysdatabases WHERE name='Jolie_bakery')
    DROP DATABASE Jolie_bakery
GO
CREATE DATABASE Jolie_bakery
GO
USE Jolie_bakery
GO

CREATE TABLE TBL_SANPHAM
(
    IDSP INT IDENTITY PRIMARY KEY,
    MASP VARCHAR(100) NOT NULL,
    TENSP NVARCHAR(200) NOT NULL,
	NOIDUNG NVARCHAR(4000) NOT NULL,
	THOIGIAN TIME DEFAULT CAST(GETDATE() AS TIME(0)),
    GIATIEN FLOAT NOT NULL,
    GIACU FLOAT,
    SO_LUONG_TON_TRONG_KHO INT,
    HINH_DAI_DIEN NVARCHAR(100), 
    HINH_CHI_TIET_1 NVARCHAR(100),
    HINH_CHI_TIET_2 NVARCHAR(100),
    HINH_CHI_TIET_3 NVARCHAR(100),
    HINH_CHI_TIET_4 NVARCHAR(100)
)
GO

CREATE TABLE TBL_HOADON
(
    IDHD INT IDENTITY PRIMARY KEY,
    MAHD VARCHAR(100),
    TEN_KHACH_HANG NVARCHAR(100) NOT NULL,
    SDT VARCHAR(20) NOT NULL,
    DIA_CHI_GIAO_HANG NVARCHAR(500),
	GHICHU NVARCHAR(4000),
    TONG_THANH_TIEN FLOAT,
    TRANG_THAI INT NOT NULL
)
GO

CREATE TABLE TBL_HOADON_CHITIET
(
    IDCTHD INT IDENTITY PRIMARY KEY,
    MAHD VARCHAR(100) NOT NULL,
    MASP VARCHAR(100) NOT NULL,
    TENSP NVARCHAR(200) NOT NULL,
    SOLUONG INT NOT NULL,
    GIATIEN FLOAT NOT NULL,
    THANH_TIEN FLOAT NOT NULL
	/*MAHD FR
	MASP FR
	(MAHD,MASP)
	*/
)
GO
Create table TAIKHOAN
(
	EMAIL nvarchar(100) NOT NULL primary key,
	PASSWORD nvarchar(200) NOT NULL,
	PASSWORDSALT nvarchar(200) NOT NULL,
	ACCESS int NULL
)
GO

CREATE TABLE Orders (
    Id INT PRIMARY KEY IDENTITY,
	Loai NVARCHAR(100) NOT NULL,
    Name NVARCHAR(100) NOT NULL,
    PhoneNumber NVARCHAR(15) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    CakeName NVARCHAR(100) NOT NULL,
    Birthday DATE NOT NULL,
    MessageCake NVARCHAR(255) NOT NULL,
    CakeType NVARCHAR(50) NOT NULL,
    CakeTaste NVARCHAR(50) NOT NULL,
    AnotherTaste NVARCHAR(100)
);
GO



INSERT INTO TBL_SANPHAM (MASP, TENSP, NOIDUNG, GIATIEN, GIACU, SO_LUONG_TON_TRONG_KHO, HINH_DAI_DIEN, HINH_CHI_TIET_1, HINH_CHI_TIET_2, HINH_CHI_TIET_3, HINH_CHI_TIET_4)
VALUES ('BC-01', N'Birday Cake Cinnamoroll','THIS IS INFO ABOUT CAKE', 700000, 0, 10, '/Content/img/anhbanhkem.jpg', '/Content/img/anhbanhkem.jpg', '/Content/img/anhbanhkem.jpg', '/Content/img/anhbanhkem.jpg', '/Content/img/anhbanhkem.jpg');

INSERT INTO TBL_SANPHAM (MASP, TENSP, NOIDUNG, GIATIEN, GIACU, SO_LUONG_TON_TRONG_KHO, HINH_DAI_DIEN, HINH_CHI_TIET_1, HINH_CHI_TIET_2, HINH_CHI_TIET_3, HINH_CHI_TIET_4)
VALUES ('BC-02', N'Birday Cake For Sweetie','THIS IS INFO ABOUT CAKE', 500000, 0, 10, '/Content/img/anhbanhkem2.jpg', '/Content/img/anhbanhkem2.jpg', '/Content/img/anhbanhkem2.jpg', '/Content/img/anhbanhkem2.jpg', '/Content/img/anhbanhkem2.jpg');

INSERT INTO TBL_SANPHAM (MASP, TENSP, NOIDUNG, GIATIEN, GIACU, SO_LUONG_TON_TRONG_KHO, HINH_DAI_DIEN, HINH_CHI_TIET_1, HINH_CHI_TIET_2, HINH_CHI_TIET_3, HINH_CHI_TIET_4)
VALUES ('BC-03', N'Birday Cake We Bare Bears','THIS IS INFO ABOUT CAKE', 650000, 0, 10, '/Content/img/anhbanhkem3.jpg', '/Content/img/anhbanhkem3.jpg', '/Content/img/anhbanhkem3.jpg', '/Content/img/anhbanhkem3.jpg', '/Content/img/anhbanhkem3.jpg');

INSERT INTO TBL_SANPHAM (MASP, TENSP, NOIDUNG, GIATIEN, GIACU, SO_LUONG_TON_TRONG_KHO, HINH_DAI_DIEN, HINH_CHI_TIET_1, HINH_CHI_TIET_2, HINH_CHI_TIET_3, HINH_CHI_TIET_4)
VALUES ('BC-04', N'Birday Cake Shaun The Sheep','THIS IS INFO ABOUT CAKE', 600000, 0, 10, '/Content/img/anhbanhkem4.jpg', '/Content/img/anhbanhkem4.jpg', '/Content/img/anhbanhkem4.jpg', '/Content/img/anhbanhkem4.jpg', '/Content/img/anhbanhkem4.jpg');

INSERT INTO TAIKHOAN (EMAIL, PASSWORD, PASSWORDSALT, ACCESS) 
VALUES (N'admin@gmail.com', N'7j1RowzqFBxv0e9MRKQGq06BLhhmuoRjyydgv+zOqy2X+KFHE8+gzGFLfDF5729zrXl8//4UN8QNHFXu2PIGug==', 
N'100000.w5nRV8DRQOO18sVum0ZD6Cg0SH0U0817kpTPvyG0Y5TmVw==', 0)



USE Jolie_bakery
ALTER TABLE TBL_HOADON
ADD NGAYBAN DATETIME

Select *
From TBL_SANPHAM

Select *
From TBL_HOADON

Select *
From TBL_HOADON_CHITIET

Select * 
From TAIKHOAN

Select * 
From Orders