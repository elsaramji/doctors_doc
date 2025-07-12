plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    // stop it to work flovers packag name
    /*
    please remove this comment start by << 
    when you  use  firebase app distribution or firebase service or build release app.
    See Bug 
    ///////////////
    * What went wrong:
    Execution failed for task ':app:processProductionReleaseGoogleServices'.
    > No matching client found for package name 'com.example.doctors_doc.production'
    ///////////////
    */
    //<< id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.doctors_doc"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.doctors_doc"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
     flavorDimensions += "default"
    productFlavors {
        create("development") {
            dimension = "default"
            resValue(
                type = "string",
                name = "app_name",
                value = "Doctors Doc Dev")
                applicationIdSuffix = ".dev"
        }
        create("production") {
            dimension = "default"
             resValue(
                type = "string",
                name = "app_name",
                value = "Doctors Doc")
        }
}
}

flutter {
    source = "../.."
}
