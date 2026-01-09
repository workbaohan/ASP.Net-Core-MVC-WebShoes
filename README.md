# ASP.Net-Core-MVC-WebShoes

## Giới thiệu

Đây là dự án WebShoes được xây dựng bằng ASP.NET Core Web API.

Hệ thống cung cấp các API cơ bản để quản lý sinh viên, khoa và các thông tin liên quan, phục vụ cho mục đích học tập và thực hành xây dựng backend.

Hệ thống bao gồm:

- Backend xây dựng bằng ASP.NET

- Frontend hiển thị giao diện người dùng

- Database sử dụng SQL Server

## Chức năng chính

- Quản lý sản phẩm (thêm, sửa, xoá, tìm kiếm)

- Quản lý khách hàng

- Quản lý đơn hàng / hóa đơn

- Tính tổng tiền tự động

- Kết nối frontend với backend thông qua API

## Công nghệ sử dụng

### Backend

- ASP.NET (MVC / Web API)

- C#

- Entity Framework

- SQL Server

- Visual Studio 2022

### Frontend

- HTML / CSS / JavaScript

### Database

- Microsoft SQL Server

## Cấu trúc thư mục

WebShoes/

│

├── Backend/ # Source code backend (ASP.NET)

├── FE_GiayDep/ # Source code frontend

├── Database/ # File SQL khởi tạo database

├── README.md

## Hướng dẫn chạy project

### Bước 1: Tạo Database
- Step 1: Mở **SQL Server Management Studio**
- Step 2: Chạy file `Database.sql` để khởi tạo bảng và dữ liệu

### Bước 2: Chạy Backend
- Step 1: Mở **Visual Studio**
- Step 2: Mở file `Backend/backend.sln`
- Step 3: Cấu hình lại chuỗi kết nối trong `appsettings.json`
- Step 4: Nhấn **Run** để chạy backend

### Bước 3: Chạy Frontend
- Step 1: Mở thư mục `FE_GiayDep` bằng **Visual Studio Code**
- Step 2: Mở Terminal trong VS Code và di chuyển vào thư mục chứa mã nguồn frontend bằng lệnh: ***cd FE***
- Step 3: Chạy lệnh: ***npm install***
- Step 4: Khởi chạy ứng dụng: ***npm start***

## Tài khoản đăng nhập thử nghiệm

### Admin
- Tài khoản: admin@gamil.com
- Mật khẩu: 123456

### User (Có thể create new account)
- Tài khoản: baohan_user@gmail.com
- Mật khẩu: 123456

## Thanh toán PayPal (Sandbox Mode)

- Email: nguyentranbaohan1005@gmail.com
- Mật khẩu: Abcdef@123
