# Antigravity Cleaner Pro Wiki
Welcome to the official documentation.

## 📖 Table of Contents
1. [Installation Guide](Installation-Guide)
2. [Session Management](Session-Management)
3. [Troubleshooting](Troubleshooting)
4. [Safety & Security](Safety-Security)

---

## 🛠 Installation Guide
### Windows (Portable)
1. Download `AntigravityCleaner.exe`.
2. Move it to a folder where you have write permissions.
3. Run. No installation needed.

### macOS & Linux
Run the one-liner:
`curl -sSL https://raw.githubusercontent.com/tawroot/antigravity-cleaner/main/install.sh | bash`

---

## 💾 Session Management
### Why Backup?
Google sessions expire. By using our **Encrypted Session Manager**, you can save a "snapshot" of your login state. If you ever get logged out by Antigravity, simply `Restore` your session.

### How to use:
1. Go to the **Sessions** tab.
2. Select your browser (Chrome/Edge/Brave etc.).
3. Click `Backup Current Session`.
4. Your data is stored locally in `data/sessions` with AES-256 encryption.

---

## ❓ Troubleshooting
### "App not signed" warning on Windows
Since this is an open-source tool, you may see a "Windows Protected your PC" message.
**Fix:** Click `More Info` -> `Run Anyway`.
*Self-signing guide: See BUILDING.md*

### Browser not detected
Ensure your browser is installed in the default location. We support 8+ major browsers.

---

## 🔐 Safety & Security
Antigravity Cleaner Pro **never** sends your data to any server.
- All cleaning is local.
- All backups are encrypted with a key derived from your system's unique HWID.
- Open source means you can verify every line of code.
