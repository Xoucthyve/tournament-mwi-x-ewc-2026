# tournament-mwi-x-ewc-2026
MWI x EWC Tournament Data Analysis using Excel, SQL & Power BI
# 🏆 MWI 2026 Analytics: Cracking The META & Performance Blueprint

[![Esports World Cup 2026](https://img.shields.io/badge/EWC-2026-gold?style=for-the-badge&logo=trophy)](https://esportsworldcup.com/)
[![MLBB Women's International](https://img.shields.io/badge/Tournament-MWI_2026-ff69b4?style=for-the-badge)](https://liquipedia.net/mobilelegends/MLBB_Women%27s_International/2026)
[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](#-dashboard-preview--features)
[![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)](#-sql-analytics-preview)
[![Dataset](https://img.shields.io/badge/Format-CSV-green?style=for-the-badge)](#-repository-structure)

---

## 📌 Executive Summary

Proyek ini menyajikan **end-to-end data analytics** untuk turnamen **Mobile Legends: Bang Bang Women's International (MWI) 2026** di ajang **Esports World Cup (EWC 2026)** yang berlangsung pada **14 – 18 Juli 2026**.

Karena data mentah turnamen belum tersedia secara publik saat kompetisi berakhi, pengumpulan data dilakukan secara **manual & terstruktur** melalui ekstraksi web **Liquipedia** serta peninjauan ulang siaran pertandingan (**YouTube VODs**). Dataset yang terkumpul kemudian dibersihkan, diolah dengan **SQL**, dan divisualisasikan dalam **Microsoft Power BI Dashboard** interaktif.

---

## 🖼️ Dashboard Preview & Features

![MWI 2026 Dashboard Preview]
**Cracking The Meta** <img width="1327" height="741" alt="Cracking The Meta" src="https://github.com/user-attachments/assets/89fd08ea-718e-413d-8c03-5fe6a17ecaa8" />
**The MVP Formula** <img width="1327" height="740" alt="The MVP Formula" src="https://github.com/user-attachments/assets/5c542446-8ac7-474c-9169-7bbfd88609de" />

**The Winning Blueprint** <img width="1323" height="742" alt="The Winning Blueprint" src="https://github.com/user-attachments/assets/4d2d473e-000e-4a8a-b044-a671aaa011a5" />


### 🎯 Fitur Utama Dashboard:
1. **Meta & Draft Page (Cracking The Meta):** Visualisasi *Total Presence by Name Hero*, *Win Rate by Side*, serta *Total Hero, Total Games & Avg Match Duration*
2. **Player Performance Page (The MVP Formula):** Evaluasi performa individu player berdasarkan KDA & *Kill Participation*.
3. **Team Combat Page (The Winning Blueprint):** Evaluasi performa team berdasarkan *Win Rate*, *KD Ratio*,& *Match Duration*.

---

## 🔥 Key Insights (Temuan Utama)

### Part 1: 🔮 Cracking The META (Draft & Meta Dynamics)

1. **87 Hero Muncul vs 46 Hero "Tidur"**
   - Dari total 133 hero di MLBB, hanya **87 hero** yang tersentuh di fase *Pick* maupun *Ban*. Mengingat MWI 2026 masih menerapkan format *Draft Pick* standar (non-Global Ban/Fearless Draft), perebutan hero sangat terkonsentrasi pada 87 hero *tier-S* yang paling efektif sesuai meta turnamen.

2. **Rata-Rata Durasi Pertandingan: 17 Menit 21 Detik (17:21)**
   - Mayoritas pertandingan berlangsung hingga fase *Mid to Late Game*. Ini menunjukkan ketatnya pertahanan *High Ground* serta kehati-hatian tim dalam melakukan *set-up Lord* tanpa terburu-buru mengakhiri game di *Early Game*.

3. **Top 5 Contest Rate Heroes (Most Priority Pick/Ban):**
   - **Marcel:** *Roamer* dengan *Crowd Control* tinggi dan mobilitas luar biasa.
   - **Karrie:** *Hard Counter* utama untuk meta *Jungler Tank* yang masih mendominasi.
   - **Belerick:** *Counter* alami untuk *Marksman Attack Speed*.
   - **Atlas:** Hero inisiator *Moment-Maker* yang sering memicu *comeback*.
   - **Esmeralda:** Hero *Zoning* tebal yang efektif menembus hero ber-*shield* (seperti Hanabi & Harith).

4. **Keunggulan Red Side (Second Pick) vs Blue Side (First Pick)**
   - *Win Rate* **Red Side (Second Pick)** lebih tinggi dibandingkan Blue Side di MWI 2026. Patch MWI 2026 tergolong cukup seimbang, sehingga mengamankan *First Pick* tidak memberikan keuntungan mutlak (kecuali mengamankan hero *priority* seperti Marcel atau Hirara). Sebaliknya, *Second Pick* memberikan keunggulan fleksibilitas **Counter-Pick** pada fase draft terakhir.

### Part 2: 🔮 The MVP Formula (Player Performance)
1. **Midlaner the MVP**
  - Berdasarkan top 5 player dengan avg KDA tertinggi diisi oleh role Midlaner dikarenakan midlaner memiliki tugas yang sangat krusial harus rotasi membantu timnya yang membutuhkan dan positioning sambil memberikan damage ataupun *crowd control* terhadap musuh bisa dibilang Midlaner role *paket lengkap*
2. **Average KDA Player tinggi tapi tidak Juara**
  - MWI 2026 dimenangkan oleh Team Vitality tapi tidak berada pada posisi Top 3 avg KDA by team itu dikarenakan Status ini berdasarkan perfomance individu dan game ini terdiri dari 5 player dalam satu tim sehingga walaupun memiliki player yang mempunyai skill individu yang bagus itu tidak bisa membuat tim tersebut otomatis juara masih banyak faktor yang mempengaruhi seperti *chemistry*, *strategi* dan lainnya.

### Part 3: 🔮 The Winning Blueprint (Team Strategy)
1. **Team Vitality**
  - Sang Juara MWI 2026 dengan *Win Rate* dan *KD Ratio* tertinggi pada turnamen kali ini dengan *avg winning duration* 17:37 dapat disimpulkan permainan Team Vitality menggunakan strategi disiplin objektif mereka menunggu objektif untuk *war* tidak tergesa - gesa sehingga *winning duration* berada pada *Mid to Lategame*
2. **Geltek Cyber Team**
  - Geltek Cyber Team diisi oleh player yang berasal dari rusia dengan *avg winning duration* 16:19 lebih cepat dari Team Vitality, tim ini cukup berani untuk mengambil objektif tower dan resource musuh sehingga mempunyai *winning duration* berada pada *Midgame* tapi ini juga bisa jadi kelemahan mereka ketika ada sedikit *miss calculation* yang berakibat fatal dan membuat mereka terkena comeback
3. **Team Rey Young**
  - Berbeda dari Geltek Cyber Team yang bermain pada *Midgame* Team Rey Young bisa dibilang sangat berhati - hati sehingga memiliki *avg winning duration* 20:12 tapi terkadang jika terlalu berhati - hati bisa membuat kita takut untuk mengambil kesempatan yang sebenarnya bisa membuat kita menang
4. **Playstyle**
  - Dari top 3 Team yang memiliki *Win Rate* dan *KD Ratio* tertinggi mereka mempunyai *playstylenya* masing - masing dan itu juga termasuk kedalam strategi team untuk mencari kemenangan.
---

## 🛠️ Tech Stack & Workflow

```text
[ Liquipedia & YouTube VODs ]
            │
            ▼  (Manual Data Collection & Structuring)
[ MWI_X_EWC_2026.csv ]
            │
            ▼  (Data Cleaning & Transformation)
[ PostgreSQL / SQL Engine ] ──► (Run mwi_2026_data_analysis.sql)
            │
            ▼  (Data Modeling & DAX Calculations)
[ Power BI Desktop ] ─────────► (Build mwi_2026_analysis_dashboard.pbix)
            │
            ▼
[ Interactive Visual Dashboard & Documentation ]
```

- **Data Collection:** Liquipedia Web Scraping & YouTube Tournament Review
- **Data Storage:** Flat CSV (`MWI_X_EWC_2026.csv`)
- **Data Analytics & Querying:** SQL (`mwi_2026_data_analysis.sql`)
- **Data Visualization & Modeling:** Microsoft Power BI (`MWI_2026_Analytics_Dashboard.pbix`)
- **Version Control & Portfolio:** GitHub

---

## 📁 Repository Structure

```text
.
├── 📄 dataset_mwi_x_ewc_2026.csv       # Raw & Cleaned Dataset (CSV Format)
├── 🗄️ mwi_2026_data_analysis.sql       # SQL Queries for Data Cleaning & Aggregation
├── 📊 mwi_2026_analysis_dashboard.pbix # Master Power BI Report File
├── 🖼️ mwi_dashboard_overview.png       # Screenshot / Preview Dashboard
└── 📝 README.md                        # Project Documentation
```

---

## 📑 Data Dictionary (Schema)

Dataset `MWI_X_EWC_2026.csv` mencakup **17 kolom utama** per baris pemain:

| Nama Kolom | Tipe Data | Deskripsi |
| :--- | :--- | :--- |
| `Date` | Date | Tanggal pertandingan berlangsung (DD-MM-YYYY) |
| `Side` | String | Posisi tim dalam draft (`Blue` / `Red`) |
| `Win/Lose` | String | Hasil pertandingan (`Win` / `Lose`) |
| `Player` | String | Nickname pemain |
| `Role` | String | Role pemain (`Goldlane`, `EXP`, `Mid`, `Roamer`, `Jungler`) |
| `Hero` | String | Hero yang digunakan pemain |
| `Hero Ban` | String | Daftar hero yang di-ban oleh tim pada game tersebut |
| `Spell` | String | Battle Spell yang digunakan pemain |
| `Team` | String | Nama tim pemain |
| `Opponent` | String | Nama tim lawan |
| `Skor Game` | String | Skor akhir seri pertandingan (misal: 2-0, 2-1) |
| `Kill` | Integer | Jumlah Kill individu pemain |
| `Death` | Integer | Jumlah Death individu pemain |
| `Assist` | Integer | Jumlah Assist individu pemain |
| `Duration` | String | Durasi pertandingan (MM:SS) |
| `Map` | String | Map yang digunakan dalam pertandingan |
| `Bracket` | String | Stage pertandingan tersebut (Group Stage & Plyaoffs) |

---

## 🗄️ SQL Analytics Preview

Berikut adalah contoh skrip SQL yang digunakan untuk mengerjakan project **Cracking The Meta** :

```sql
WITH 
-- Hitung Total Game pada Turnamen MWI 2026 --
total_tournament_games AS (
    SELECT COUNT(DISTINCT `Date`, Team, Opponent, Duration) AS total_games 
    FROM data_mwi_2026
),

-- Daftar Semua Hero pada Turnamen MWI 2026 --
master_hero_list AS (
    SELECT Hero AS hero_name FROM data_mwi_2026 WHERE Hero IS NOT NULL AND Hero <> ''
    UNION
    SELECT`Ban Hero` FROM data_mwi_2026 WHERE `Ban Hero` IS NOT NULL AND `Ban Hero` <> ''
),

-- Hitung Total Pick & Menang per Hero --
hero_picks AS (
    SELECT 
        Hero AS hero_name ,
        COUNT(*) AS total_picks,
        SUM(CASE WHEN `Win/Lose` = 'Win' THEN 1 ELSE 0 END) AS total_wins
    FROM data_mwi_2026
    WHERE Hero IS NOT NULL AND Hero <> ''
    GROUP BY Hero
),

-- Hitung Total Ban per Hero --
hero_bans AS (
    SELECT 
        `Ban Hero` AS hero_name ,
        COUNT(*) AS total_bans
    FROM data_mwi_2026
    WHERE `Ban Hero` IS NOT NULL AND `Ban Hero` <> ''
    GROUP BY `Ban Hero`
)

-- Gabungkan Data kemudian Hitung Win Rate & Presence Rate --
SELECT 
    m.hero_name,
    COALESCE(p.total_picks, 0) AS Pick,
    COALESCE(b.total_bans, 0) AS Ban,
    COALESCE(p.total_picks, 0) + COALESCE(b.total_bans, 0) AS `Total Presence`,
    
    -- Menghitung Win Rate (%) --
    ROUND(
        CASE 
            WHEN COALESCE(p.total_picks, 0) = 0 THEN 0
            ELSE (p.total_wins * 100.0) / p.total_picks
        END, 2
    ) AS `Win Rate`,
    
    -- Menghitung Presence Rate (%) Berdasarkan Total Game Turnamen
    ROUND(
        ((COALESCE(p.total_picks, 0) + COALESCE(b.total_bans, 0)) * 100.0) / tg.total_games, 2
    ) AS `Presence Rate Percentage`
FROM master_hero_list m
CROSS JOIN total_tournament_games tg
LEFT JOIN hero_picks p ON m.hero_name = p.hero_name
LEFT JOIN hero_bans b ON m.hero_name = b.hero_name
ORDER BY `Total Presence` DESC;
```

---

## 🚀 How to Use / Reproduce

1. **Clone Repository ini:**
   ```bash
   git clone https://github.com/xoucthyve/MWI-2026-Analytics.git
   ```
2. **Eksplorasi Data Mentah:** Buka file `MWI_X_EWC_2026.csv` menggunakan Excel, Python (Pandas), atau impor ke Database SQL.
3. **Jalankan Query SQL:** Impor `MWI_X_EWC_2026.csv` ke DBMS favoritmu (PostgreSQL / MySQL) lalu jalankan skrip `mwi_2026_data_analysis.sql`.
4. **Buka Dashboard Power BI:** Buka file `MWI_2026_Analytics_Dashboard.pbix` menggunakan **Power BI Desktop** untuk melihat interaksi visualisasi, model DAX, dan grafik.

---

## 👨‍💻 Author & Contact

**Hanif Ubaidah**  
*Aspiring Data Analyst | Esports Analytics Enthusiast*

- 💼 **LinkedIn:** [https://www.linkedin.com/in/hanifubaidah13](https://linkedin.com)
- 🐙 **GitHub:** [(https://github.com/Xoucthyve)](https://github.com)
- ✉️ **Email:** hanifubaidah07@gmail.com

---
*Dibuat dengan semangat untuk memajukan industri Esports Analytics di Indonesia. Mari berdiskusi! 🚀*
