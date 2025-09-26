import java.util.Properties
import java.io.FileInputStream

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}
//val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
val hasKeyProps = keystorePropertiesFile.exists()
//if (keystorePropertiesFile.exists()) {
//    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
//}
// إذا وُجد الملف، حمّل الخصائص
val keystoreProperties = Properties().apply {
    if (hasKeyProps) load(FileInputStream(keystorePropertiesFile))
}

android {
    namespace = "com.app.dait"
    compileSdk = 36
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17

    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.app.dait"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = 36
        versionCode = 4
        versionName = "2"
    }
    signingConfigs {
//        create("release") {
//            keyAlias = keystoreProperties["keyAlias"] as String
//            keyPassword = keystoreProperties["keyPassword"] as String
//            storeFile = keystoreProperties["storeFile"]?.let { file(it) }
//            storePassword = keystoreProperties["storePassword"] as String
//        }
        // فقط لو الملف موجود ننشئ إعداد التوقيع
        if (hasKeyProps) {
            create("release") {
                keyAlias      = keystoreProperties.getProperty("keyAlias")
                    ?: throw GradleException("keyAlias مفقودة في key.properties")
                keyPassword   = keystoreProperties.getProperty("keyPassword")
                    ?: throw GradleException("keyPassword مفقودة في key.properties")
                storeFile     = file(
                    keystoreProperties.getProperty("storeFile")
                        ?: throw GradleException("storeFile مفقودة في key.properties")
                )
                storePassword = keystoreProperties.getProperty("storePassword")
                    ?: throw GradleException("storePassword مفقودة في key.properties")
            }
        }
    }
    buildTypes {
        release {

            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
//            signingConfig = signingConfigs.getByName("release")
            // إذا الملف موجود نستخدم إعداد release، وإلا نستخدم توقيع الـ debug الافتراضي
            signingConfig = if (hasKeyProps)
                signingConfigs.getByName("release")
            else
                signingConfigs.getByName("debug")

        }
    }
}

flutter {
    source = "../.."
}
