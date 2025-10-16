# HỆ THỐNG QUẢN LÝ BỆNH VIỆN TƯ NHÂN

Hệ thống quản lý thông tin bệnh nhân, lịch làm việc của bác sĩ, lịch hẹn khám, và hồ sơ khám bệnh cho Bệnh viện tư nhân Ánh Sáng.

## Tính năng chính

### 1. Quản lý Bệnh nhân
- Thêm, tìm kiếm, cập nhật, xóa thông tin bệnh nhân
- Lưu trữ lịch sử khám bệnh
- Quản lý thông tin liên hệ và bảo hiểm

### 2. Quản lý Bác sĩ
- Thông tin cá nhân và chuyên môn
- Lịch làm việc và trạng thái hoạt động
- Thống kê hiệu suất làm việc

### 3. Quản lý Phòng khám
- Thông tin phòng và thiết bị
- Trạng thái sẵn sàng và bảo trì
- Phân loại theo khoa và chức năng

### 4. Đặt lịch hẹn
- Kiểm tra trùng lịch bác sĩ và phòng
- Quản lý độ ưu tiên và loại hẹn
- Xử lý hủy và dời lịch

### 5. Hồ sơ khám bệnh
- Ghi nhận quá trình khám và chẩn đoán
- Liên kết với đơn thuốc và xét nghiệm
- Theo dõi thanh toán và bảo hiểm

### 6. Quản lý Thuốc
- Danh mục thuốc và thông tin chi tiết
- Theo dõi tồn kho và giá cả
- Phân loại theo nhóm và nhà sản xuất

### 7. Đơn thuốc
- Kê đơn điện tử
- Kiểm tra tương tác thuốc
- Theo dõi tuân thủ điều trị

### 8. Xét nghiệm
- Quản lý yêu cầu và kết quả
- Theo dõi tiến độ thực hiện
- Lưu trữ và tra cứu lịch sử

### 9. Hình ảnh y khoa
- Quản lý chỉ định và kết quả
- Lưu trữ file hình ảnh
- Đọc và diễn giải kết quả

### 10. Báo cáo và Thống kê
- Thống kê hoạt động bệnh viện
- Báo cáo theo bác sĩ, khoa, thời gian
- Ước tính doanh thu

## Công nghệ sử dụng

- **Ngôn ngữ**: Java 11+
- **Database**: MongoDB
- **Driver**: MongoDB Java Driver 3.12.10
- **IDE hỗ trợ**: NetBeans, VSCode

## Cấu trúc dự án

```
src/com/benhvientunhan/
├── app/
│   └── App.java                 # Ứng dụng chính
├── config/
│   ├── MongoProvider.java       # Kết nối MongoDB
│   └── DbInit.java             # Khởi tạo database
├── models/
│   ├── Patient.java            # Model Bệnh nhân
│   ├── Doctor.java             # Model Bác sĩ
│   ├── Room.java               # Model Phòng khám
│   ├── Appointment.java        # Model Lịch hẹn
│   ├── Visit.java              # Model Hồ sơ khám
│   ├── Medicine.java           # Model Thuốc
│   ├── Prescription.java       # Model Đơn thuốc
│   ├── Test.java               # Model Xét nghiệm
│   └── MedicalImage.java       # Model Hình ảnh y khoa
├── dao/
│   ├── PatientDao.java         # DAO Bệnh nhân
│   ├── DoctorDao.java          # DAO Bác sĩ
│   ├── RoomDao.java            # DAO Phòng khám
│   ├── AppointmentDao.java     # DAO Lịch hẹn
│   ├── VisitDao.java           # DAO Hồ sơ khám
│   ├── MedicineDao.java        # DAO Thuốc
│   ├── PrescriptionDao.java    # DAO Đơn thuốc
│   ├── TestDao.java            # DAO Xét nghiệm
│   └── MedicalImageDao.java    # DAO Hình ảnh y khoa
└── utils/
    └── ReportUtils.java        # Utilities báo cáo
```

## Yêu cầu hệ thống

- Java 11+ (đã test với Java 17)
- MongoDB Server (chạy trên localhost:27017)
- RAM: tối thiểu 512MB
- Ổ cứng: 100MB trống

## Cách chạy ứng dụng

### Cách chạy nhanh:

#### Windows:
chạy file `run-gui.bat`
Đảm bảo MongoDB đang chạy trên localhost:27017

### Cách chạy thủ công:

#### 1. Khởi động MongoDB Server
Đảm bảo MongoDB đang chạy trên localhost:27017

#### 2. Compile project:
```bash
# Windows
javac -cp "lib\mongo-java-driver-3.12.10.jar" -d build\classes src\com\benhvientunhan\app\App.java src\com\benhvientunhan\models\*.java src\com\benhvientunhan\dao\*.java src\com\benhvientunhan\config\*.java src\com\benhvientunhan\utils\*.java

# Linux/Mac
javac -cp "lib/mongo-java-driver-3.12.10.jar" -d build/classes src/com/benhvientunhan/app/App.java src/com/benhvientunhan/models/*.java src/com/benhvientunhan/dao/*.java src/com/benhvientunhan/config/*.java src/com/benhvientunhan/utils/*.java
```

#### 3. Chạy ứng dụng:
```bash
# Windows
java -cp "lib\mongo-java-driver-3.12.10.jar;build\classes" com.benhvientunhan.app.App

# Linux/Mac
java -cp "lib/mongo-java-driver-3.12.10.jar:build/classes" com.benhvientunhan.app.App
```

### Chạy trong NetBeans:
1. Mở project trong NetBeans
2. Đảm bảo MongoDB Server đang chạy
3. Nhấn F6 hoặc Run > Run Project

### Chạy trong VSCode:
1. Mở thư mục project trong VSCode
2. Cài đặt Extension Pack for Java
3. Đảm bảo MongoDB Server đang chạy
4. Mở file App.java và nhấn Run

## Hướng dẫn sử dụng

1. **Khởi động ứng dụng**: Chạy một trong các script trên
2. **Menu chính**: Chọn chức năng từ 0-11
3. **Quản lý dữ liệu**: Sử dụng các menu con để thêm/sửa/xóa/tìm kiếm
4. **Báo cáo**: Chọn menu 11 để xem các thống kê

## Lưu ý

- Database sẽ được tự động tạo khi chạy lần đầu
- Dữ liệu mẫu có thể được thêm thông qua menu
- Backup database thường xuyên để tránh mất dữ liệu
- Kiểm tra kết nối MongoDB trước khi sử dụng

## Tác giả

Hệ thống được phát triển theo yêu cầu đề bài quản lý bệnh viện tư nhân.
