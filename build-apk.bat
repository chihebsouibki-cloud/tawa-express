@echo off
echo === 1. Installation des dependances Capacitor ===
call npm install

echo === 2. Creation du projet Android natif ===
if not exist "android" (
  call npx cap add android
)

echo === 3. Application des permissions GPS et Camera ===
copy /Y android-permissions\AndroidManifest.xml android\app\src\main\AndroidManifest.xml
call npx cap sync android

echo === 4. Compilation de l'APK ===
cd android
call gradlew.bat assembleDebug

echo.
echo [OK] APK genere avec succes :
echo android\app\build\outputs\apk\debug\app-debug.apk
pause
