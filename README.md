# BMI Calculator 📱

A simple and elegant **Body Mass Index (BMI) Calculator** built using **Flutter**. This app helps users quickly determine their BMI based on their weight (kg) and height (cm) and provides appropriate health category feedback.

## 📸 Screenshots

(Add your screenshots here to showcase the UI)

## 🚀 Features
- **Beautiful UI** with a modern, minimalistic design
- **Instant BMI Calculation** based on user input
- **Health classification** (Underweight, Normal, Overweight)
- **Lightweight & Fast** app performance

## 🛠️ Technologies Used
- **Flutter** (Dart)
- **Material Design Components**

## 📥 Installation

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/yourusername/bmi-calculator.git
cd bmi-calculator
```

### 2️⃣ Install Dependencies
```bash
flutter pub get
```

### 3️⃣ Run the App
To run the app on an emulator or physical device:
```bash
flutter run
```

### 4️⃣ Build APK
To generate a release APK:
```bash
flutter build apk --release
```
The APK will be available at:
```
build/app/outputs/flutter-apk/app-release.apk
```

## 🎨 UI Preview
- **Input Screen:** Users enter their weight and height
- **Result Screen:** Displays BMI value and category

## 🧮 How BMI is Calculated?
BMI Formula:
```math
BMI = weight (kg) / (height (m) * height (m))
```

- **BMI < 18** → Underweight 🟡
- **BMI 18-24** → Normal ✅
- **BMI > 24** → Overweight 🔴
