# SE334 - Software Engineering Course Materials

## � Mục lục
1. [Calculator - Ứng dụng Android](#-calculator---ứng-dụng-android)
2. [Fortran - Các chương trình tính toán](#-fortran---các-chương-trình-tính-toán)
3. [Snake - Trò chơi Snake](#-snake---trò-chơi-snake)

---

## 📱 Calculator - Ứng dụng Android

### Thông Tin Chung
- **Tên ứng dụng:** Calculator
- **Package Name:** com.uit.calculator
- **Min SDK:** 21
- **Target SDK:** 36
- **Version:** 1.0
- **Ngôn ngữ:** Java

### Mô tả
Ứng dụng Calculator là một máy tính cấu cơ bản cho Android, cho phép người dùng thực hiện các phép tính toán học. Ứng dụng hỗ trợ giao diện tối giản và có tính năng thay đổi chủ đề (Theme).

### Tính năng chính
- 🧮 Thực hiện các phép tính cơ bản (cộng, trừ, nhân, chia)
- 🎨 Hỗ trợ thay đổi chủ đề (ChangeThemeActivity)
- 📐 Sử dụng thư viện MathParser.org-mXparser v6.1.0 để xử lý các biểu thức toán học
- 📱 Giao diện responsive với ConstraintLayout

### Cấu trúc Dự án
```
Calculator/
├── app/                              # Module ứng dụng chính
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/                # Source code Java
│   │   │   ├── res/                 # Resources (layout, drawable, values, etc.)
│   │   │   └── AndroidManifest.xml  # Manifest file
│   │   ├── test/                    # Unit tests
│   │   └── androidTest/             # Instrumented tests
│   └── build.gradle.kts             # Dependencies & build config
├── gradle/                          # Gradle configuration
├── build.gradle.kts                 # Root build config
├── settings.gradle.kts              # Project settings
└── gradlew                          # Gradle wrapper
```

### Công nghệ sử dụng
- **Framework:** Android SDK 36
- **Build System:** Gradle (Kotlin DSL)
- **Layout:** ConstraintLayout
- **UI Components:** Material Design
- **Math Parser:** MathParser.org-mXparser v6.1.0
- **Testing:** JUnit, Espresso

### Hoạt động chính
- **MainActivity:** Màn hình chính của ứng dụng
- **ChangeThemeActivity:** Màn hình để thay đổi chủ đề ứng dụng

### Cách chạy
1. Clone project từ repository
2. Mở project trong Android Studio
3. Đảm bảo có Android SDK 36 được cài đặt
4. Nhấn Run để build và chạy ứng dụng trên emulator hoặc thiết bị thực

### Yêu cầu
- Android Studio (bản mới nhất)
- Java 11 hoặc cao hơn
- Android SDK 21 (Min) - 36 (Target)

---

## 🔢 Fortran - Các chương trình tính toán

### Thông Tin Chung
- **Ngôn ngữ:** Fortran 90
- **Loại:** Các chương trình console tính toán cơ bản
- **Mục đích:** Học tập các thuật toán và kỹ năng lập trình Fortran

### Danh sách các bài lab

#### 1. Binary Search (Tìm kiếm nhị phân)
- **File:** `1-binary-search/binarySearch.f90`
- **Mô tả:** Cài đặt thuật toán tìm kiếm nhị phân để tìm phần tử trong mảng đã sắp xếp
- **Tính năng:** Tìm kiếm nhanh với độ phức tạp O(log n)

#### 2. Bubble Sort (Sắp xếp nổi bọt)
- **File:** `2-bubble-sort/bubbleSort.f90`
- **Mô tả:** Cài đặt thuật toán sắp xếp nổi bọt
- **Tính năng:** Sắp xếp mảng với độ phức tạp O(n²)

#### 3. Class of Students (Quản lý lớp học)
- **File:** `3-class-of-students/classStudent.f90`
- **Module:** `student_module.mod`
- **Mô tả:** Quản lý danh sách sinh viên trong một lớp học
- **Tính năng:** Lưu trữ, tìm kiếm, và xử lý dữ liệu sinh viên

#### 4. Matrix Operations (Các phép toán ma trận)
- **File:** `4-matrix_operations/matrixOperations.f90`
- **Mô tả:** Thực hiện các phép toán cơ bản trên ma trận
- **Tính năng:** Cộng, trừ, nhân ma trận, tính định thức, v.v.

#### 5. Prime Numbers (Các số nguyên tố)
- **File:** `5-prime_numbers/primeNumber.f90`
- **Mô tả:** Tìm và kiểm tra các số nguyên tố
- **Tính năng:** Sử dụng các thuật toán hiệu quả để phát hiện số nguyên tố

### Cách chạy
1. Sử dụng trình biên dịch Fortran (gfortran)
2. Chạy lệnh: `gfortran [filename].f90 -o [filename]`
3. Thực thi: `.\\[filename].exe` (hoặc `./[filename]` trên Linux/Mac)

### Yêu cầu
- Trình biên dịch Fortran (GCC Fortran hoặc tương đương)

---

## 🎮 Snake - Trò chơi Snake

### Thông Tin Chung
- **Tên trò chơi:** Snake Game
- **Ngôn ngữ:** Java
- **Loại:** Ứng dụng Desktop (Swing)
- **Version:** 1.0

### Mô tả
Snake là trò chơi cổ điển được cài đặt bằng Java. Người chơi điều khiển một con rắn để ăn thức ăn và tránh va chạm với tường hoặc chính mình.

### Tính năng chính
- 🐍 Điều khiển rắn bằng phím mũi tên
- 🍎 Ăn thức ăn để tăng điểm
- 📊 Hiển thị điểm số
- ⚡ Tốc độ tăng dần theo mức độ khó
- 🎮 Kiểm soát va chạm và kết thúc trò chơi

### Cấu trúc Dự án
```
Snake/
├── src/                              # Source code
│   ├── App.java                      # Entry point của ứng dụng
│   └── SnakeGame.java                # Logic trò chơi chính
├── bin/                              # Compiled class files
├── lib/                              # External libraries
└── .vscode/                          # VS Code configuration
    └── settings.json                 # Cài đặt VS Code
```

### Lớp chính

#### App.java
- Entry point của ứng dụng
- Khởi tạo và chạy trò chơi

#### SnakeGame.java
- Chứa logic trò chơi chính
- **Lớp Tile (Inner Class):** Đại diện cho một ô trong grid
- Xử lý vẽ giao diện
- Xử lý sự kiện từ bàn phím
- Cập nhật trạng thái trò chơi

### Công nghệ sử dụng
- **Framework:** Java Swing
- **Kiến trúc:** OOP (Object-Oriented Programming)
- **Pattern:** Game Loop

### Cách chạy
1. Mở project trong VS Code hoặc IDE Java
2. Chạy lệnh compile: `javac -d bin src/*.java`
3. Chạy ứng dụng: `java -cp bin App`
4. Hoặc sử dụng nút Run trong VS Code

### Điều khiển
- **Mũi tên lên:** Rắn đi lên
- **Mũi tên xuống:** Rắn đi xuống
- **Mũi tên trái:** Rắn đi trái
- **Mũi tên phải:** Rắn đi phải

### Yêu cầu
- Java Runtime Environment (JRE) 8 hoặc cao hơn
- VS Code với Extension Java (hoặc IDE Java khác)

---

## 📋 Tóm tắt

| Dự án | Ngôn ngữ | Loại | Mục đích |
|-------|----------|------|---------|
| Calculator | Java | Android App | Máy tính di động |
| Fortran | Fortran 90 | Console Programs | Học tập thuật toán & Fortran |
| Snake | Java | Desktop Game | Trò chơi cổ điển |

---

