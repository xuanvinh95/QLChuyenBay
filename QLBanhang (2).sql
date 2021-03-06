IF DB_ID('QLChuyenBayvaVeMayBay') IS NULL 
	CREATE DATABASE QLBanHang
GO

USE QLBanHang
GO
CREATE TABLE [dbo].[Admin](
	[Username] [nvarchar](8) NOT NULL,
	[Password] [nvarchar](8) NULL,
	[ChucVu]  [nvarchar](30) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[DoiTraVe](
	[MaLP] [Number](50) NOT NULL,
	[MaVe] [nvarchar](8) NULL,
	[LePhi] [Number] (50) NULL,
 CONSTRAINT [PK_DoiTraVe] PRIMARY KEY CLUSTERED 
(
	[MaLP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[HangVe](
	[MaHang] [nvarchar](8) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[Heso] [nvarchar](8) NULL,
 CONSTRAINT [PK_HangVe] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



CREATE TABLE [dbo].[MayBay](
	[MaMB] [nvarchar](8) NOT NULL,
	[TenMB] [nvarchar](50) NULL,
	[LoaiMB] [nvarchar](12) NULL,
	[SoGheTG] [nvarchar](50) NULL,
	[SoGhePT] [nvarchar](50) NULL,
	[TongSoGhe] [nvarchar](50) NULL,
 CONSTRAINT [PK_MayBay] PRIMARY KEY CLUSTERED 
(
	[MaMB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



CREATE TABLE [dbo].[LoaiVe](
	[MaLoai] [nvarchar](8) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[Heso] [nvarchar](8) NULL,
 CONSTRAINT [PK_LoaiVe] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[HanhTrinh](
	[MaHT] [nvarchar](8) NOT NULL,
	[DiemDi] [nvarchar](50) NOT NULL,
	[DiemDen] [nvarchar](50) NULL,
	[GiaGoc] [Number](50) NULL,
 CONSTRAINT [PK_HanhTrinh] PRIMARY KEY CLUSTERED 
(
	[MaHT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[ChuyenBay](
	[MaCB] [nvarchar](8) NOT NULL,
	[MaHT] [nvarchar](8) NOT NULL,
	[MaMB] [nvarchar](8) NULL,
	[GioBay] [Date/time] NULL,
 CONSTRAINT [PK_ChuyenBay] PRIMARY KEY CLUSTERED 
(
	[MaCB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[HanhKhach](
	[MaHK] [nvarchar](8) NOT NULL,
	[MaVe] [nvarchar](8) NOT NULL,
	[HoHK] [nvarchar](30) NULL,
	[TenHK] [nvarchar](30) NULL,
	[SoCMND] [nvarchar](12) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](12) NULL,
 CONSTRAINT [PK_HanhKhach] PRIMARY KEY CLUSTERED 
(
	[MaHK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[LichBay](
	[MaCB] [nvarchar](8) NOT NULL,
	[MaMB] [nvarchar](8) NOT NULL,
	[MaHT] [nvarchar](30) NULL,
	[GioBay] [Date/Time] NULL,
	[NgayBay] [Date/Time] NULL,
	[VeBan] [Yes/No] NULL,
 CONSTRAINT [PK_LichBay] PRIMARY KEY CLUSTERED 
(
	[MaCB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Ve](
	[MaVe] [nvarchar](8) NOT NULL,
	[MaHK] [nvarchar](8) NOT NULL,
	[MaCB] [nvarchar](8) NULL,
	[HangVe] [nvarchar](8) NULL,
	[LoaiVe] [nvarchar](8) NULL,
	[GioBay] [Date/Time] NULL,
	[NgayBay] [Date/Time] NULL,
	[GioBan] [Date/Time] NULL,
	[NgayBan] [Date/Time] NULL,
	[NoiBan] [nvarchar] (50) NULL,
	[Gia] [Number] (50) NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]







ALTER TABLE [dbo].[HanhTrinh]  WITH CHECK ADD  CONSTRAINT [FK_HanhTrinh_ChuyenBay] FOREIGN KEY([MaHT])
REFERENCES [dbo].[ChuyenBay] ([MaHT])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[HanhTrinh] CHECK CONSTRAINT [FK_HanhTrinh_ChuyenBay]
GO


ALTER TABLE [dbo].[ChuyenBay]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenBay_MayBay] FOREIGN KEY([MaMB])
REFERENCES [dbo].[MayBay] ([MaMB])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ChuyenBay] CHECK CONSTRAINT [FK_ChuyenBay_MayBay]

GO

ALTER TABLE [dbo].[MayBay]  WITH CHECK ADD  CONSTRAINT [FK_MayBay_LichBay] FOREIGN KEY([MaMB])
REFERENCES [dbo].[LichBay] ([MaMB])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[MayBay] CHECK CONSTRAINT [FK_MayBay_LichBay]


GO

ALTER TABLE [dbo].[HangVe]  WITH CHECK ADD  CONSTRAINT [FK_HangVe_Ve] FOREIGN KEY([MaHang])
REFERENCES [dbo].[Ve] ([HangVe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[HangVe] CHECK CONSTRAINT [FK_HangVe_Ve]
GO

ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_LoaiVe] FOREIGN KEY([LoaiVe])
REFERENCES [dbo].[LoaiVe] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_SanPham]

INSERT INTO LoaiSP([MaLoaiSP],[TenLoaiSP])VALUES(1, N'Rượu')
INSERT INTO LoaiSP([MaLoaiSP],[TenLoaiSP])VALUES(2, N'Bia')
INSERT INTO LoaiSP([MaLoaiSP],[TenLoaiSP])VALUES(3, N'Nước ngọt')
INSERT INTO LoaiSP([MaLoaiSP],[TenLoaiSP])VALUES(4, N'Điện máy')
INSERT INTO LoaiSP([MaLoaiSP],[TenLoaiSP])VALUES(5, N'Viết')

INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('Bb12',N'Bia Bến thành',N'Chai',10080,2,'~/images/biabenthanhchai.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('BH01',N'Bia Heineken',N'Chai',20000,2,'~/images/biaheinekenchai.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('BS01',N'Bia Sapporo',N'Chai',25000,2,'~/images/biasapporochai.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('Bs14',N'Bia Sài gòn',N'Chai',15000,2,'~/images/biasaigonchai.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('BS15',N'Bia 333',N'Thùng',215000,2,'~/Images/bia33thung.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('BT04',N'Beer Tiger',N'Thùng',255000,2,'~/images/biatigerthung.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('CC06',N'Coca Cola',N'Thùng',115000,3,'~/images/cocacolathung.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('CH07',N'Cassette Sharp 100W',N'Cái',2250000,4,'~/images/cassetsharp.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('CH08',N'Cassette Sharp 500W',N'Cái',4250000,4,'~/images/cassetsharp500w.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('PC01',N'But chi den',N'Cái',2000,5,'~/images/butchiden.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('PL02',N'But long kim',N'Cái',50000,5,'~/images/butlongkim.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('PS05',N'But sap',N'Hộp',60000,5,'~/Images/butsap.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('PS15',N'Pepsi',N'Thùng',150000,3,'~/images/pepsithung.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('RC17',N'Ruou chat do',N'Chsi',110000,1,'~/images/ruouchatdo.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('RC19',N'Ruou Champagne',N'Chai',160000,1,'~/images/ruouchampagne.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('RN01',N'Rượu nếp Gò đen',N'Chai',15000,1,'~/images/ruounepgoden.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('RN02',N'Rượu Napoleon ',N'Chai',3100000,1,'~/images/ruounapoleon.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('RX01',N'Rượu XO',N'Chai',1160000,1,'~/images/ruouoxo.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('RX12',N'Rượu Xuân Thạnh',N'Chai',12000,1,'~/images/ruouxuanthanh.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('TL25',N'Tu lanh Sanyo 100 lit',N'Cái',5310000,4,'~/images/tulanhsanyo.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('TS01',N'Tivi Sharp 14"',N'Cái',1600000,4,'~/images/tivisharp.jpg')
INSERT INTO SanPham([MaSP],[TenSP],[Donvitinh],[Dongia],[MaLoaiSP],[HinhSP])
    VALUES ('TS21',N'Tivi Sony 20"',N'Cái',1310000,4,'~/images/tivisony.jpg')
    
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH01',N'Anh Hang',N'120 Ha Ton Quyen','8171717','084088171717')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH02',N'Bong Hong',N'24 Ky Con','','084088800256')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH03',N'Em Anh',N'6 Ky Hoa','','084088852258')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH04',N'Ho Han',N'8 Pham van Khoe','8430156','084088430156')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH05',N'Koko Company',N'90 An Duong Vuong','8250102','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH06',N'Queen Cozinha',N'891 An Duong Vuong','','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH07',N'Quoc Cuong',N'10 Tan Da','8950203','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH08',N'Suoi Tra',N'2817 Minh Phung','8356210','084088356210')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH09',N'Song Trang',N'187 Lao Tu','9450210','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH10',N'Vinh Vien',N'45 Su Van hanh','','084088654790')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH11',N'TRần Vĩnh Viễn',N'87 Trần Hưng Đạo','8855464','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH12',N'Lý Văn Trung',N'123 Tân Tẩn','','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH13',N'Cty Minh Hằng',N'456 Công Hòa','','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH14',N'Cty Nghĩa Đường',N'12 Lý chính Thắng','9874564','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH15',N'Minh Anh',N'15/1 Hậu Giang','6548797','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH16',N'Trần Tùng',N'12/15 Hậu Nghĩa','6547898','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH17',N'Cty Vĩnh Lợi',N'1812 TRần Quang Khải','','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH18',N'Cty Thái Bình Dương',N'145 Nguyễn Huệ','6548797','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH19',N'Cty Thần Tài',N'14 Lê Lợi','6523154','')
INSERT INTO [KhachHang]([MaKH],[TenKH],[DiaChi],[DienThoai],[Fax])
     VALUES ('KH20',N'Cty Trần Văn Thời',N'45 Nguyễn Thị Minh Khai','4561234','')
     
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Lê văn',N'Tâm',N'45 Trần Phú',N'8663447')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Trần thị',N'An',N'15 Nguyễn Trãi',N'')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Tạ Thành',N'Tâm',N'20 Võ thị Sáu',N'8565666')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Ngô Thành',N'Sơn',N'122 Trần Phú',N'')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Lê thị',N'Thuỷ',N'25 Ngô Quyền',N'9767677')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Nguyễn Hữu',N'An',N'12 Lê Thánh Tôn',N'')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Thái Chí',N'An',N'97 Võ văn Tần',N'')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Trần Văn',N'Thanh',N'25 Trần Văn Đang',N'0918158')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Nguyễn Dũng',N'Nghi',N'65 Trần Văn Thời',N'')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Lê Thế',N'Bảo',N'12 Lê Quý Đôn',N'')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Lê Dũng',N'Nguyễn',N'321 Lê Lợi',N'6987456')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Nguyễn Thị',N'Thủy',N'654 Nguyễn Huệ',N'9998745')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Nguyễn Thu',N'Hồng',N'987 Lê Lợi',N'9874561')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Trần Thị Thủy',N'Tiên',N'6543 Nguyễn Huệ',N'')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Lê Thị',N'Hiền',N'654 Mai Xuân Thời',N'')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Trần Văn',N'Thanh',N'Tân Bình',N'123456')
INSERT INTO [Nhanvien]([HoNV] ,[Ten] ,[Diachi],[Dienthoai])
     VALUES  (N'Trần Văn',N'Thành',N'Tân Bình',N'12345')
 
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD001','KH01',4,'2000-02-26 00:00:00.000','2000-07-02 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD002','KH08',7,'2001-12-15 00:00:00.000','2001-12-15 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD003','KH10',8,'2001-02-02 00:00:00.000','2001-12-12 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD004','KH09',7,'2000-08-04 00:00:00.000','2000-08-06 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD005','KH05',1,'2000-08-05 00:00:00.000','2000-08-10 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD006','KH03',15,'2003-12-15 00:00:00.000','2003-12-16 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD007','KH10',12,'2002-04-04 00:00:00.000','2002-04-15 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD008','KH09',1,'2000-10-21 00:00:00.000','2000-10-30 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD009','KH06',10,'2002-06-06 00:00:00.000','2002-12-06 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD010','KH04',9,'2001-08-08 00:00:00.000','2001-12-08 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD011','KH03',3,'2001-02-16 00:00:00.000','2001-03-12 00:00:00.000')
INSERT INTO [HoaDon]([MaHD],[MaKH],[MaNV],[NgayLapHD],[NgayGiaoHang])
     VALUES ('HD012','KH08',4,'2002-09-09 00:00:00.000','2002-12-09 00:00:00.000')
     
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD001','Bb12',10,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD001','BH01',12,0.5)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD001','BS01',4,0.5)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD001','Bs14',100,0.2)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD002','BS15',4,1)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD002','BT04',10,0.1)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD002','CC06',2,0.3)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD004','CH07',2,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD004','CH08',3,0.8)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD005','PC01',100,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD005','PS05',32,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD005','PL02',25,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD006','PS15',50,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD006','RC17',9,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD006','RC19',5,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD007','RN01',10,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD007','RN02',8,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD008','RX01',7,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD008','RX12',6,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD009','TL25',2,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD009','TS01',30,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD009','TS21',20,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD010','TS21',10,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD010','TS01',5,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD010','RX12',5,0.4)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD011','BH01',10,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD011','BS01',21,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD011','Bs14',12,0)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD012','PC01',34,0.5)
INSERT INTO [CTHD] ([MaHD] ,[MaSP],[Soluong] ,[Giamgia])
     VALUES ('HD012','PL02',20,0)