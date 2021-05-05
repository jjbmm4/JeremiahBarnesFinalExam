CREATE DATABASE IF NOT EXISTS Apex_Stats;
USE Apex_Stats;

DROP TABLE IF EXISTS LegendInfo;
DROP TABLE IF EXISTS GunInfo;
DROP TABLE IF EXISTS MapInfo;
DROP TABLE IF EXISTS LocationInfo;
DROP TABLE IF EXISTS Duos;
DROP TABLE IF EXISTS Trios;
DROP TABLE IF EXISTS Ranked;
DROP TABLE IF EXISTS Arena;

CREATE TABLE LegendInfo
(Legend_ID int unsigned NOT NULL ,
Legend_Name VARCHAR(30) NOT NULL,
PRIMARY KEY (Legend_ID));

CREATE TABLE GunInfo
(Gun_ID int unsigned NOT NULL ,
Gun_Name VARCHAR(30) NOT NULL,
Gun_Ammo_Type VARCHAR(30) NOT NULL,
Gun_Class VARCHAR(30) NOT NULL,
PRIMARY KEY (Gun_ID));

CREATE TABLE MapInfo
(Map_ID int unsigned NOT NULL ,
Map_Name VARCHAR(30) NOT NULL,
Map_Type VARCHAR(30) NOT NULL,
PRIMARY KEY (Map_ID));

CREATE TABLE LocationInfo(
Location_ID int unsigned NOT NULL,
Location_Name VARCHAR(30) NOT NULL,
Location_Loot_Tier VARCHAR(30) NOT NULL,
Map_ID int unsigned NOT NULL,
PRIMARY KEY (Location_ID),
FOREIGN KEY (Map_ID) references MapInfo(Map_ID) ON DELETE RESTRICT);


/* A 2 player battle royal */
CREATE TABLE Duos(
Match_ID int NOT NULL auto_increment,
Ranking int NOT NULL,
Main_Player VARCHAR(30) NOT NULL,
Player_Two VARCHAR(30) NOT NULL,
Main_Player_Primary_Gun VARCHAR(30) NOT NULL,
Main_Player_Secondary_Gun VARCHAR(30) NOT NULL,
Map_Name VARCHAR(30) NOT NULL,
Location_Name VARCHAR(30) NOT NULL,
PRIMARY KEY (Match_ID),
FOREIGN KEY (Main_Player) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Player_Two) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Main_Player_Primary_Gun) references GunInfo(Gun_Name) ON DELETE RESTRICT,
FOREIGN KEY (Main_Player_Secondary_Gun) references GunInfo(Gun_Name) ON DELETE RESTRICT,
FOREIGN KEY (Map_Name) references MapInfo(Map_Name) ON DELETE RESTRICT,
FOREIGN KEY (Location_Name) references LocationInfo(Location_Name) ON DELETE RESTRICT);

/* A 3 player battle royal unranked */
CREATE TABLE Trios(
Match_ID int NOT NULL auto_increment,
Ranking int NOT NULL,
Main_Player VARCHAR(30) NOT NULL,
Player_Two VARCHAR(30) NOT NULL,
Player_Three VARCHAR(30) NOT NULL,
Main_Player_Primary_Gun VARCHAR(30) NOT NULL,
Main_Player_Secondary_Gun VARCHAR(30) NOT NULL,
Map_Name VARCHAR(30) NOT NULL,
Location_Name VARCHAR(30) NOT NULL,
PRIMARY KEY (Match_ID),
FOREIGN KEY (Main_Player) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Player_Two) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Player_Three) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Main_Player_Primary_Gun) references GunInfo(Gun_Name) ON DELETE RESTRICT,
FOREIGN KEY (Main_Player_Secondary_Gun) references GunInfo(Gun_Name) ON DELETE RESTRICT,
FOREIGN KEY (Map_Name) references MapInfo(Map_Name) ON DELETE RESTRICT,
FOREIGN KEY (Location_Name) references LocationInfo(Location_Name) ON DELETE RESTRICT);

/* Ranked 3 player battle royal
I'm not sure if this is just me being bad, but I think its easier to have a whole other table for ranked games, instead of normal games
That way if anything changes in the ranked gamemode, that alters it. I can alter just this table without having to separate between
trios and ranked
*/
CREATE TABLE Ranked(
Match_ID int NOT NULL auto_increment,
Ranking int NOT NULL,
RP_Earned int NOT NULL,
Main_Player VARCHAR(30) NOT NULL,
Player_Two VARCHAR(30) NOT NULL,
Player_Three VARCHAR(30) NOT NULL,
Main_Player_Primary_Gun VARCHAR(30) NOT NULL,
Main_Player_Secondary_Gun VARCHAR(30) NOT NULL,
Map_Name VARCHAR(30) NOT NULL,
Location_Name VARCHAR(30) NOT NULL,
PRIMARY KEY (Match_ID),
FOREIGN KEY (Main_Player) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Player_Two) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Player_Three) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Main_Player_Primary_Gun) references GunInfo(Gun_Name) ON DELETE RESTRICT,
FOREIGN KEY (Main_Player_Secondary_Gun) references GunInfo(Gun_Name) ON DELETE RESTRICT,
FOREIGN KEY (Map_Name) references MapInfo(Map_Name) ON DELETE RESTRICT,
FOREIGN KEY (Location_Name) references LocationInfo(Location_Name) ON DELETE RESTRICT);

/*
The new 3v3 gamemode
*/

CREATE TABLE Arena(
Match_ID int NOT NULL auto_increment,
Ranking int NOT NULL,
Main_Player VARCHAR(30) NOT NULL,
Player_Two VARCHAR(30) NOT NULL,
Player_Three VARCHAR(30) NOT NULL,
Map_Name VARCHAR(30) NOT NULL,
PRIMARY KEY (Match_ID),
FOREIGN KEY (Main_Player) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Player_Two) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Player_Three) references LegendInfo(Legend_Name) ON DELETE RESTRICT,
FOREIGN KEY (Map_Name) references MapInfo(Map_Name) ON DELETE RESTRICT);