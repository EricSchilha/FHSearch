DROP TABLE Stats;

CREATE TABLE Stats
(
	-- Rank,Player,Age,Team,Position,GP,G,A,PTS,+/-,PIM,PS,EV,PP,SH,GW,EV,PP,SH,S,S%,TOI,ATOI,BLK,HIT,FOW,FOL,FO%
 Rank integer,
 Player character varying,
 Age integer,
 Team character varying(3),
 Position character varying(2),
 GamesPlayed integer,
 Goals integer,
 Assists integer,
 Points integer,
 PlusMinus integer,
 PIM integer,
 PointShares real,
 EVGoals integer,
 PPGoals integer,
 SHGoals integer,
 GWGoals integer,
 EVAssists integer,
 PPAssists integer,
 SHAssists integer,
 Shots integer,
 ShootingPercentage real,
 TOI integer,
 ATOI varchar(5),
 Blocks integer,
 Hits integer,
 FaceoffWins integer,
 FaceoffLosses integer,
 FaceoffWinPercentage real
);

SELECT *
FROM Stats