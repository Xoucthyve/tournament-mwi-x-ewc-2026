WITH team_match_aggr AS (
    SELECT 
        Team,
        Opponent,
        -- Mengubah teks durasi "MM:SS" menjadi total detik untuk pengelompokkan strategi --
        CAST(SUBSTRING_INDEX(Duration, ':', 1) AS UNSIGNED) * 60 + 
        CAST(SUBSTRING_INDEX(Duration, ':', -1) AS UNSIGNED) AS duration_seconds,
        
        -- Deteksi Menang/Kalah --
        CASE WHEN `Win/Lose` = 'Win' THEN 1 ELSE 0 END AS is_win,
        
        -- Ambil data kill dan death tim pada turnamen --
        `Kill`,
        Death
    FROM mwi_ewc
)

SELECT 
    Team,
    COUNT(*) AS total_matches,
    SUM(is_win) AS total_wins,
    
    --  Win Rate Tim % --
    ROUND(SUM(is_win) * 100.0 / COUNT(*), 2) AS team_win_rate,
    
    -- Team Kill to Death Ratio (K/D Ratio) --
    ROUND(SUM(`Kill`) * 1.0 / CASE WHEN SUM(Death) = 0 THEN 1 ELSE SUM(Death) END, 2) AS team_kd_ratio,
    
    -- Rata-rata Durasi Pertandingan Tim --
    ROUND(AVG(duration_seconds) / 60.0, 2) AS avg_match_duration_minutes,
    
    -- Analisis Karakter Tim --
    ROUND(AVG(CASE WHEN is_win = 1 THEN duration_seconds ELSE NULL END) / 60.0, 2) AS avg_winning_duration

FROM team_match_aggr
GROUP BY Team
ORDER BY team_win_rate DESC;