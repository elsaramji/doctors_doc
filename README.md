# 🩺 Doctor Doc – Healthcare Appointment and Consultation App

**Status:** 🚧 In Development – 2025  
**Repository:** [github.com/elsaramji/doctors_doc](https://github.com/elsaramji/doctors_doc)

---

## 📱 Overview

**Doctor Doc** is a cross-platform mobile application designed to simplify the process of managing medical appointments and remote consultations. The app connects patients with doctors in a seamless and secure environment.

---

## 🎯 Key Features

- 🗓️ **Appointment Management** – Book, reschedule, and cancel medical appointments.
- 📞 **Remote Consultations** – Secure video/audio consultations with medical professionals.
- 🔐 **Authentication** – Secure login via Firebase Authentication.
- 📊 **Real-time Data Sync** – Powered by Firebase Firestore.
- 🔔 **In-App Notifications** – Using FCM (Firebase Cloud Messaging).
- 👩‍⚕️ **Doctor & Patient Roles** – Role-based navigation and views.
- 🌐 **API Integration** – Connected with RESTful backend services.
- 🧪 **Test Environment Support** – Via flavors and environments.

---

## 🧱 Architecture

The app is built using **modular Clean Architecture** with a clear separation of concerns:

lib/
├── core/
│ ├── di/
│ ├── apis/
│ ├── utils/
│ ├── extensions/
│ └── constants/
├── config/
│ ├── images/
│ ├── strings/
│ ├── themes/
│ └── urls/
├── features/
│ ├── auth/
│   ├── presentation/
│   ├── data/
│   └── domain/
├── shared/
│ ├── presentation/
│ ├── data/
│ └── domain/
└── main_dev.dart
└── main_prod.dart

- **Presentation Layer** – Flutter widgets & Riverpod for state management.
- **Domain Layer** – Business logic with pure Dart.
- **Data Layer** – Repositories, API clients, and Firebase services.

---

## 🧪 Testing

- Unit testing with `flutter_test`
- Mocking for API and auth responses
- Manual QA for authentication and appointment workflows

---

## 🧰 Tools & Technologies

| Category       | Stack                                      |
|----------------|--------------------------------------------|
| Framework      | Flutter, Dart                              |
| Backend & APIs | Firebase (Auth, Firestore), RESTful APIs   |
| CI/CD          | GitHub Actions, Git, Custom Flavors        |
| UI/UX          | Figma, Material Design                     |
| Testing        | flutter_test, Mockito                      |

---

## 🚀 CI/CD Pipeline

The project uses **GitHub Actions** and **Fastlane** to automate:

- Build creation for different product flavors (`dev`, `prod`)
- Uploading APKs to Firebase App Distribution
- Notifications to testers

> All triggered automatically on push or PR events.

---

## 🧪 Firebase & Flavors

Supports multiple environments via **Android product flavors**:
- `dev`: development environment
- `prod`: production environment

Each flavor uses a separate Firebase project configuration.

---

## 🧑‍💻 Getting Started

```bash
git clone https://github.com/elsaramji/doctors_doc.git
cd doctors_doc
flutter pub get
flutter run --flavor dev -t lib/main_dev.dart
```