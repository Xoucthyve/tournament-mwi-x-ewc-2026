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