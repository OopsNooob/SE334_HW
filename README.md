# SE334 - Software Engineering Course Materials

## 📱 Calculator Project

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

