# Tawa Express — Génération du fichier APK Android

Un environnement web ne peut pas compiler directement un binaire `.apk` signé sans le SDK Android. Ce kit contient votre application complète (`www/index.html`) déjà configurée avec **Capacitor** et les permissions Android (**GPS temps réel**, **Caméra**, **Wake Lock**).

---

## Option 1 : Générer l'APK sans installer Android Studio (via GitHub Actions — gratuit)

1. Créez un dépôt gratuit sur **GitHub.com** et téléversez le contenu de ce dossier ZIP.
2. Ouvrez l'onglet **Actions** de votre dépôt GitHub.
3. Le workflow **Build Tawa Express APK** compile automatiquement le projet Android dans le cloud en ~3 minutes.
4. Téléchargez l'artifact **Tawa-Express-APK** (`app-debug.apk`) et installez-le sur vos téléphones Android.

---

## Option 2 : Générer l'APK en 3 minutes via PWABuilder (sans code)

1. Déployez le fichier `www/index.html` sur **Vercel** ou **Netlify** (glisser-déposer gratuit, HTTPS automatique).
2. Copiez l'URL `https://...` obtenue et collez-la sur **[pwabuilder.com](https://www.pwabuilder.com)**.
3. Cliquez sur **Package for Stores → Android** : PWABuilder détecte automatiquement le `manifest.json` intégré dans `index.html` et vous fournit un fichier `.apk` prêt à installer.

---

## Option 3 : Compilation locale sur votre PC (Node.js + Android Studio)

- **Windows :** double-cliquez sur `build-apk.bat`
- **Mac / Linux :** exécutez `./build-apk.sh`

Le fichier final sera généré ici :
`android/app/build/outputs/apk/debug/app-debug.apk`
