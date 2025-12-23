# Antigravity Cleaner v2.1.1 🌍
### Çapraz Platform Temizleme ve Onarım Aracı | Kurulum ve Ağ Sorunlarını Düzeltin

[![Python](https://img.shields.io/badge/Made%20with-Python-blue?style=for-the-badge&logo=python)](https://python.org)
[![OS](https://img.shields.io/badge/Platform-Win%20|%20Mac%20|%20Linux-lightgrey?style=for-the-badge)](https://github.com/tawroot/antigravity-cleaner)
[![License](https://img.shields.io/badge/License-Proprietary-red?style=for-the-badge)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](http://makeapullrequest.com)

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=00BFFF&height=300&section=header&text=Antigravity%20Cleaner&fontSize=90&animation=fadeIn&fontAlignY=38&desc=Fix%20Install%20Errors%20%26%20Network%20Issues&descAlignY=51&descAlign=62" alt="Antigravity Header" />
</div>

---

## 🌐 Mevcut Diller | Available Languages

| 🇬🇧 [English](README.md) | 🇮🇷 [فارسی](README.fa.md) | 🇨🇳 [中文](README.zh.md) | 🇷🇺 [Русский](README.ru.md) |
|:---:|:---:|:---:|:---:|
| 🇹🇷 **Türkçe** | 🇪🇸 [Español](README.es.md) | 🇦🇪 [العربية](README.ar.md) | 🇵🇰 [اردو](README.ur.md) |

---

## 🌍 Çözdüğümüz Küresel Sorun

**Antigravity Cleaner** başlangıçta İranlı kullanıcılar için geliştirildi, ancak çözdüğü sorunlar **dünya çapında evrenseldir**.

### 🎯 Hangi Sorunları Çözüyoruz:

- **🚫 Bölgesel Kısıtlamalar**: Yaptırımlar nedeniyle bazı ülkelerde Google hizmetleri kullanılamıyor (İran, Küba, Suriye, Kuzey Kore, Kırım)
- **🌐 Ağ Müdahalesi**: DNS manipülasyonu, proxy çakışmaları, güvenlik duvarı kısıtlamaları
- **🔒 Bölge Kilidi Hataları**: Giriş sırasında "Bölgenizde kullanılamıyor" mesajı
- **📡 Bağlantı Sorunları**: Ağ hataları, zaman aşımları, SSL sertifika hataları
- **🔄 Kurulum Hataları**: Bozuk indirmeler, takılan işlemler, kalan dosyalar
- **🔐 Oturum Sona Ermesi**: Tekrarlanan giriş istekleri, çerez bozulması

### 👥 Bu Aracı Kimler Kullanıyor:

- **🚨 Ağır Kısıtlamalı Ağlar**: Kapsamlı internet filtrelemesi olan ülkeler (Çin, Türkmenistan, Kuzey Kore, İran)
- **⚖️ Yaptırım Uygulanan Bölgeler**: Google hizmetlerinin resmi olarak engellendiği bölgeler (İran, Küba, Suriye, Kırım)
- **🌐 Kısmen Filtrelenen Ağlar**: Seçici hizmet kısıtlamaları olan bölgeler (Rusya, Türkiye, Mısır, Pakistan)
- **🏢 Ağ Kısıtlamalı Ortamlar**: Kurumsal ağlar, eğitim kurumları, halka açık WiFi
- **✈️ Gezginler ve Gurbetçiler**: Seyahat ederken bölge kilidiyle karşılaşan kullanıcılar
- **🔧 Geliştiriciler ve BT Profesyonelleri**: Kurulum ve ağ sorunlarını çözen sistem yöneticileri

---

## 🖥️ Terminal Ekran Görüntüsü

```console
+-------------------------------------------------------------+
|               ANTIGRAVITY CLEANER v2.1.1                    |
|        Running on Windows 10 | Python 3.12.0                |
+-------------------------------------------------------------+
| Seçenekler:                                                 |
|  [1] Hızlı Temizlik  (Standart Yollar)                      |
|  [2] Derin Temizlik  (Kayıt Defteri + Temp + Cache + Ext)   |
|  [3] Ağ Sıfırlama  (DNS Flush + Winsock Reset)              |
|  [4] Tam Onarım  (Derin Temizlik + Ağ Sıfırlama)            |
|  [5] Test Modu  (Dry Run)                                   |
|  [6] Tarayıcı Giriş Yardımcısı  ⭐ YENİ                     |
|  [7] Oturum Yöneticisi  (Yedekleme/Geri Yükleme) ⭐ YENİ    |
|  [0] Çıkış                                                  |
+-------------------------------------------------------------+
```

---

## 🚀 Tek Komutla Kurulum ve Çalıştırma

### 🪟 Windows (PowerShell)
```powershell
iwr -useb https://raw.githubusercontent.com/tawroot/antigravity-cleaner/main/install.ps1 | iex
```

### 🍎 macOS / 🐧 Linux (Terminal)
```bash
curl -sL https://raw.githubusercontent.com/tawroot/antigravity-cleaner/main/install.sh | bash
```

---

## ✨ Temel Özellikler

### 🧹 Derin Temizlik
- AppData, Temp, Kayıt Defteri ve **Chrome Uzantılarından** izleri kaldırma
- Kalan dosyaların tam temizliği
- Silmeden önce otomatik yedekleme

### 🌐 Ağ Sıfırlama
- `netsh` ve `flushdns` otomatik çalıştırma
- "Ağ Hatası" veya "Bölge Kilidi" sorunlarını düzeltme
- DNS sorunlarını tespit etme ve düzeltme

### 🔧 İşlem Yönetimi
- Takılan işlemleri otomatik sonlandırma
- Çalışan hizmetleri tespit etme
- Veri kaybı olmadan güvenli temizlik

### 🌐 Tarayıcı Giriş Yardımcısı (v2.1+)

Antigravity'ye giriş sorunu mu yaşıyorsunuz? Bu özellik yardımcı olur:

**Güvenli Tarayıcı Temizliği:**
- Yalnızca Antigravity ile ilgili veriler temizlenir
- Diğer tarayıcı verileriniz dokunulmadan kalır
- Silmeden önce otomatik yedekleme
- Chrome, Edge, Brave ve Firefox desteği

**Oturum Yönetimi:**
- Başarılı girişten sonra oturum yedekleme
- Tekrarlanan girişleri önlemek için oturum geri yükleme
- Şifreli depolama (AES-256)
- 30 günlük geçerlilik

**Ağ Optimizasyonu:**
- Google hizmetlerine bağlantı testi
- DNS ve proxy sorunlarını teşhis
- SSL sertifika sorunlarını düzeltme
- Ayrıntılı teşhis raporları

---

## 📋 Tam Özellik Kılavuzu

### 1️⃣ Hızlı Temizlik (Standart Yollar)
**Ne Yapar:**
- Standart Antigravity kurulum klasörlerini tarar
- AppData ve Roaming'deki kalan dosyaları kaldırır
- Temel yapılandırma dosyalarını temizler

**Ne Zaman Kullanılır:**
- Normal Antigravity kaldırmasından sonra
- Rutin temizlik için
- Hızlı ve güvenli temizlik istediğinizde

**Güvenlik:** ✅ Çok güvenli - yalnızca Antigravity dosyaları

---

### 2️⃣ Derin Temizlik (Agresif Tarama)
**Ne Yapar:**
- Hızlı Temizlikteki her şey, artı:
- Windows Kayıt Defterini Antigravity girişleri için tarama
- Geçici kurulum dosyalarını kaldırma
- Antigravity ile ilgili tarayıcı uzantılarını temizleme
- Gizli önbellek dosyalarını arama

**Ne Zaman Kullanılır:**
- Hızlı Temizlik sorunu çözmediğinde
- Temiz yeniden kurulumdan önce
- İnatçı kurulum hatalarınız olduğunda

**Güvenlik:** ✅ Güvenli - silmeden önce yedek oluşturur

---

### 3️⃣ Ağ Sıfırlama
**Ne Yapar:**
- DNS önbelleğini temizleme
- Windows ağ yığınını sıfırlama
- TCP/IP ayarlarını sıfırlama

**Ne Zaman Kullanılır:**
- Girişte "Ağ Hatası"
- Bağlantı zaman aşımı sorunları
- VPN/proxy değişikliklerinden sonra

**Güvenlik:** ⚠️ Yeniden başlatma gerektirir - ancak tamamen güvenli

---

### 4️⃣ Tam Onarım
**Ne Yapar:**
- Derin Temizliği çalıştırır (seçenek 2)
- Ardından Ağ Sıfırlamayı çalıştırır (seçenek 3)
- Tam sistem temizliği ve ağ düzeltmesi

**Ne Zaman Kullanılır:**
- Maksimum temizlik gerektiğinde
- Birden fazla başarısız kurulum denemesi
- Hem dosya hem ağ sorunları

**Güvenlik:** ✅ Güvenli - iki güvenli işlemin kombinasyonu

---

### 5️⃣ Test Modu (Dry Run)
**Ne Yapar:**
- "Test modunu" etkinleştirir
- Gerçekte silmeden neyin silineceğini gösterir
- Tüm işlemleri önizlemenize olanak tanır

**Ne Zaman Kullanılır:**
- Aracı ilk kez kullanırken
- Neyin temizleneceğini görmek istediğinizde
- Gerçek temizlikten önce test

**Güvenlik:** ✅ Tamamen güvenli - gerçek değişiklik yok

---

### 6️⃣ Tarayıcı Giriş Yardımcısı ⭐ YENİ

**Seçenek 1: Tarayıcıdaki Antigravity İzlerini Temizle (Güvenli)**
- Chrome, Edge, Brave ve Firefox'u tarar
- Yalnızca Antigravity ile ilgili çerez/önbellek bulur
- Takılan giriş verilerini kaldırır
- Silmeden önce otomatik yedekleme

**Seçenek 2: Giriş için Ağı Optimize Et**
- DNS önbelleğini temizler
- Google hizmetlerine bağlantı testi
- Proxy çakışmalarını düzeltir

**Seçenek 3: Ağ Teşhis Raporu**
- Google sunucularına bağlantı testi
- DNS çözünürlüğü kontrolü
- Proxy/VPN sorunlarını tespit
- SSL sertifikalarını doğrulama

**Seçenek 4: Tam Giriş Onarımı**
- Seçenek 1, 2 ve 3'ü birleştirir
- Tam tarayıcı ve ağ düzeltmesi

**Desteklenen Tarayıcılar:**
- ✅ Google Chrome
- ✅ Microsoft Edge
- ✅ Brave Browser
- ✅ Mozilla Firefox

---

### 7️⃣ Oturum Yöneticisi ⭐ YENİ

**Seçenek 1: Mevcut Oturumu Yedekle**
- Mevcut giriş oturumunuzu kaydeder
- Çerezleri AES-256 ile şifreler
- `~/.antigravity-cleaner/sessions/` içinde güvenli şekilde saklar

**Seçenek 2: Kayıtlı Oturumu Geri Yükle**
- Önceden kaydedilmiş oturumu geri yükler
- Kimlik bilgilerinin yeniden girilmesini önler
- Otomatik giriş

**Seçenek 3: Tüm Kayıtlı Oturumları Listele**
- Tüm yedeklenmiş oturumları gösterir
- Oturum yaşını ve durumunu görüntüler

**Seçenek 4: Eski Oturumları Sil**
- Süresi dolmuş oturumları siler (30 günden eski)
- Disk alanını boşaltır

**Güvenlik:**
- 🔒 AES-256-GCM şifreleme
- 🔒 Yalnızca yerel depolama (bulut yok)
- 🔒 30 günde otomatik süre dolumu
- 🔒 Kısıtlayıcı dosya izinleri

---

## 🔗 Faydalı Bağlantılar

- **Google Bölge Kontrolü**: "Bölgenizde kullanılamıyor" sorununuz varsa:
  [Google Ülke İlişkilendirme Formu](https://policies.google.com/country-association-form)

- **Proje Web Sitesi**: [tawroot.github.io/antigravity-cleaner](https://tawroot.github.io/antigravity-cleaner)

- **Sorun Bildirin**: [GitHub Issues](https://github.com/tawroot/antigravity-cleaner/issues)

---

## 🛡️ Güvenlik Özellikleri

### Otomatik Yedekleme
- ✅ Her silmeden önce yedekleme
- ✅ Zaman damgalı yedekleme dosyaları
- ✅ Gerektiğinde kolay geri alma
- ✅ `~/.antigravity-cleaner/backups/` içinde depolama

### Test Modu
- ✅ Tüm işlemleri önizleme
- ✅ Gerçek değişiklik yok
- ✅ Güvenli test
- ✅ `python src/main.py --dry-run` ile etkinleştirme

### Seçici Silme
- ✅ Yalnızca Antigravity ile ilgili veriler
- ✅ Diğer tarayıcı verileri güvende
- ✅ Yer işaretleri korunur
- ✅ Şifreler korunur

### Şifreleme
- 🔒 Oturumlar için AES-256-GCM
- 🔒 Endüstri standardı güvenlik
- 🔒 Yalnızca yerel depolama
- 🔒 Bulut aktarımı yok

---

## 🛠️ Manuel Kurulum (Geliştiriciler)

```bash
git clone https://github.com/tawroot/antigravity-cleaner.git
cd antigravity-cleaner
pip install -r src/requirements.txt
python src/main.py
```

---

## 🔍 SEO Anahtar Kelimeler

<details>
<summary>Anahtar kelimeleri görüntülemek için tıklayın</summary>

**Kurulum ve Hatalar:**
antigravity IDE düzeltme, antigravity kaldırma, temiz yeniden kurulum, kurulum hatası, indirme başarısız, bozuk kurulum, takılı işlem, kalan dosyalar, kayıt defteri temizleyici

**Ağ ve Bağlantı:**
ağ hatası antigravity, google giriş düzeltme, bölge kilidi düzeltme, yaptırım uygulanan ülkeler google, DNS temizleme aracı, ağ sıfırlama, proxy çakışması, SSL sertifika hatası

**Oturum ve Tarayıcı:**
tarayıcı oturum yöneticisi, çerez yedekleme, oturum geri yükleme, şifreli oturum depolama, chrome profil yöneticisi

**Bölgesel ve Erişim:**
kısıtlı ağlar aracı, bölge kilidi açma, google hesabı bölge değiştirme, VPN alternatifi, sansür aşma, internet özgürlüğü aracı

**Teknik:**
windows temizleyici, macos temizleyici, linux temizleyici, python script, çapraz platform aracı, otomasyon aracı

</details>

---

<div align="center">
  <b>Açık Kaynak Proje</b><br>
  <i>Açık kaynak araçlarla kullanıcıları güçlendirme</i><br><br>
  <a href="https://github.com/tawroot/antigravity-cleaner">⭐ GitHub'da Yıldız Verin</a>
</div>
