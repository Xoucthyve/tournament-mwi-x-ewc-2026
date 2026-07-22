ALTER TABLE mwi_ewc
ADD COLUMN GameID VARCHAR(150)
GENERATED ALWAYS AS (CONCAT_WS('-', `Date`, Team, Duration)) STORED;

WITH match_player_stats AS (
    SELECT 
        Player,
        Team,
        GameID, 
        `Kill`,
        Death,
        Assist,
        
        -- Mencegah Zero-Division untuk KDA per Match --
        CASE 
            WHEN Death = 0 THEN (`Death` + Assist) * 1.0
            ELSE (`Kill` + Assist) * 1.0 / Death 
        END AS match_kda,
        
        -- Menghitung Total Kill Tim pada Turnamen --
        SUM(`Kill`) OVER(PARTITION BY GameID, Team) AS total_team_kills
    FROM mwi_ewc
)

SELECT 
    Player,
    Team,
    COUNT(DISTINCT GameID) AS total_games_played,
    SUM(`Kill`) AS total_kills,
    SUM(Death) AS total_deaths,
    SUM(Assist) AS total_assists,
    
    -- Rata-rata KDA Pemain sepanjang turnamen --
    ROUND(AVG(match_kda), 2) AS avg_kda,
    
    -- Rata-rata Kill Participation (KP%) Pemain --
    ROUND(
        CASE 
            WHEN SUM(total_team_kills) = 0 THEN 0
            ELSE (SUM(`Kill`) + SUM(Assist)) * 100.0 / SUM(total_team_kills)
        END, 2
    ) AS kill_participation_percentage

FROM match_player_stats
GROUP BY Player, Team
ORDER BY avg_kda DESC;