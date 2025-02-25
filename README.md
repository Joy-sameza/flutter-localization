# localization

A new Flutter project demonstrating advanced internationalization features, including support for English, French, and Arabic (RTL) languages.

## Web Setup and Launch Guide

Follow these steps to set up and launch this app on the web:

1. **Prerequisites**
   - **Flutter Installation:** Ensure you have Flutter installed on your system. For installation instructions, visit the [Flutter Get Started Guide](https://flutter.dev/docs/get-started/install).
   - **Enable Web Support:** Verify that Flutter web support is enabled by running:
     ```
     flutter config --enable-web
     ```
   - **Check Environment:** Run `flutter doctor` to ensure your environment is set up correctly.

2. **Project Setup**
   - **Clone or Open the Project:** Navigate to the project directory:
     ```bash
     cd ./flutter-localization
     ```
   - **Install Dependencies:** Fetch all required packages by running:
     ```
     flutter pub get
     ```

3. **Localization Generation**
   - This project uses Flutter's localization features. Ensure that the localization files are generated:
     ```
     flutter gen-l10n
     ```
   - The ARB files are located in the [lib/l10n](lib/l10n) directory.

4. **Launching on the Web**
   - **Run in Chrome:** To launch the app in a web browser (Chrome, for example), run:
     ```
     flutter run -d chrome
     ```
   - **Build for Production:** Alternatively, create a web release build by running:
     ```
     flutter build web
     ```
   - The generated build will be available in the `build/web` directory. You can serve this directory using any static server.

5. **Using Localization Features**
   - The app includes several localization features:
     - **Language Switcher:** Use the on-screen buttons to switch between English, French, and Arabic.
     - **Pluralization & Nested Placeholders:** Explore messages that dynamically adjust based on values.
     - **Context-Based Translations:** Observe context-based messages that change according to the user role.
     - **RTL Support:** When switching to Arabic, the app adjusts automatically to right-to-left layout.

6. **Troubleshooting**
   - **Console and Logs:** Check the browser console and terminal logs for any errors.
   - **Environment Check:** If issues arise, run `flutter doctor` and ensure all necessary SDKs/components are updated.

7. **Further Information**
   - For additional customization or to add more locales, refer to the [Flutter Internationalization Documentation](https://flutter.dev/docs/development/accessibility-and-localization/internationalization).

Enjoy exploring the app and its localization features!