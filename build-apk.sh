#!/usr/bin/env bash
set -e
echo "=== 1. Installation des dépendances Capacitor ==="
npm install

echo "=== 2. Création du projet Android natif ==="
if [ ! -d "android" ]; then
  npx cap add android
fi

echo "=== 3. Application des permissions GPS & Caméra ==="
cp android-permissions/AndroidManifest.xml android/app/src/main/AndroidManifest.xml
npx cap sync android

echo "=== 4. Compilation de l'APK ==="
cd android
chmod +x gradlew
./gradlew assembleDebug

echo ""
echo "✅ APK généré avec succès :"
echo "android/app/build/outputs/apk/debug/app-debug.apk"
