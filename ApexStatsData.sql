/* HEREOS*/
INSERT INTO legendinfo(Legend_Id, Legend_Name)
VALUES
(0 , "Bloodhound"),
(1 , "Gibraltar"),
(2 , "Lifeline"),
(3 , "Pathfinder"),
(4 , "Wraith"),
(5 , "Bangalore"),
(6 , "Caustic"),
(7 , "Mirage"),
(8 , "Octane"),
(9 , "Wattson"),
(10 , "Crypto"),
(11 , "Revenant"),
(12 , "Loba"),
(13 , "Rampart"),
(14 , "Horizon"),
(15 , "Valkyrie"),
(16, "MISSINGHERO");

/* Im undecided if i want to break ammo type, and gun class into children feilds just because we refrence them so much.*/
INSERT INTO GunInfo(Gun_ID,Gun_Name, Gun_Ammo_Type, Gun_Class)
VALUES	
(0, "HAVOC Rifle" , "Energy" , "Assult Rifle"),
(1, "VK-47 Flatline" , "Heavy" , "Assult Rifle"),
(2, "Hemlok Burst AR" , "Heavy" , "Assult Rifle"),
(3, "R-301 Carbine" , "Light" , "Assult Rifle"),
(4, "Devotion LMG" ,"Energy" ,"LMG"),
(5, "L-STAR EMG" ,"Energy" ,"LMG"),
(6, "M600 Spitfire","Heavy","LMG"),
(7, "Bocek Compound Bow","Arrows","Marksman"),
(8, "30-30 Repeater","Heavy","Marksman"),
(9, "G7 Scout","Light","Marksman"),
(10, "Triple Take","Special","Marksman"),
(11, "Wingman","Heavy","Pistol"),
(12, "RE-45 Auto", "Light" , "Pistol"),
(13, "P2020", "Light", "Pistol"),
(14, "Mozambique Shotgun","Shotgun","Pistol"),
(15, "EVA-8 Auto", "Shotgun","Shotgun"),
(16, "Peacekeeper","Shotgun","Shotgun"),
(17, "Volt SMG", "Energy", "SMG"),
(18, "Alternator SMG", "Light", "SMG"),
(19, "R-99 SMG","Light","SMG"),
(20, "Prowler Burst PDW","Special","SMG"),
(21,"Charge Rifle","Sniper","Sniper"),
(22,"Longbow DMR","Sniper","Sniper"),
(23,"Sentinel","Sniper","Sniper"),
(24,"Kraber .50-Cal Sniper","Special","Sniper"),
(25,"Unarmed","Special","None");

INSERT INTO MapInfo(Map_ID,Map_Name,Map_Type)
VALUES
(0,"Kings Canyon" , "Battle Royal"),
(1,"Worlds Edge", "Battle Royal"),
(2,"Olympus","Battle Royal"),
(3,"Party Crasher","Arenas"),
(4,"Phase Runner","Arenas"),
(5,"Artillery","Arenas"),
(6,"Thermal Station","Arenas"),
(7, "Golden Gardens", "Arenas");

INSERT INTO LocationInfo(Location_ID, Location_Name, Location_Loot_Tier, Map_ID)
VALUES
(0,"ARES Capacitor","Mid",0),
(1,"Broken Coast Overlook","Mid",0),
(2,"Cage","Mid",0),
(3,"Capacitor Overlook","Mid",0),
(4,"Creature Containment","Mid",0),
(5,"Destroyed Cascades","Mid",0),
(6,"Hillside Outpost","Mid",0),
(7,"Lagoon Crossing","Mid",0),
(8,"Marketplace","Mid",0),
(9,"Octane's Gauntlet","Mid",0),
(10,"Reclaimed Forest","Mid",0),
(11,"River Center","Mid",0),
(12,"Singh Labs","Mid",0),
(13,"Two Spines","Mid",0),
(14,"Two Spines Outpost","Mid",0),
(15,"Verdant Crossing","Mid",0),
(16,"Airbase","High",0),
(17,"Artillery Battery","High",0),
(18,"Bunker Pass","High",0),
(19,"Caustic Treatment","High",0),
(20,"Crashed Ship","High",0),
(21,"Crash Site","High",0),
(22,"Crypto's Map Room","High",0),
(23,"High Desert","High",0),
(24,"Interstellar Relay","High",0),
(25,"Offshore Rig","High",0),
(26,"Repulsor","High",0),
(27,"Runoff","High",0),
(28,"Skull Salvage","High",0),
(29,"Singh Labs Interior","High",0),
(30,"Spotted Lake","High",0),
(31,"Swamps","High",0),
(32,"The Pit","High",0),
(33,"Watchtower North","High",0),
(34,"Watchtower South","High",0),
(35,"Bloodhound's Trials","High",1),
(36,"Countdown","High",1),
(37,"Fragment East","High",1),
(38,"Harvester","High",1),
(39,"Launch Site","High",1),
(40,"Lava City","High",1),
(41,"Lava Fissuire","High",1),
(42,"Overlook","High",1),
(43,"Refinery","High",1),
(44,"Staging","High",1),
(45,"Skyhook","High",1),
(46,"Sorting Factory","High",1),
(47,"Storage Room","High",1),
(48,"Survey Camp","High",1),
(49,"Thermal Station","High",1),
(50,"The Dome","High",1),
(51,"The Epicente","High",1),
(52,"The Geyser","High",1),
(53,"The Tree","High",1),
(54,"The Train Yard","High",1),
(55,"Fragment West","Mid",1),
(56,"Spring's End","Mid",1),
(57,"Autum Estates","High",2),
(58,"Arcadia Supercarrier","High",2),
(59,"Docks","High",2),
(60,"Elysium","High",2),
(61,"Energy Depot","High",2),
(62,"Hydroponics","High",2),
(63,"Orbital Cannon Test Site","High",2),
(64,"Pathfinder's Fight Night","High",2),
(65,"Rift Aftermath","High",2),
(66,"Research Basin","High",2),
(67,"The Reverie Lounge","High",2),
(68,"Bonsai Plaza","Mid",2),
(69,"Central Turbine","Mid",2),
(70,"Grow Towers","Mid",2),
(71,"Golden Gardens","Mid",2),
(72,"Hammond Labs","Mid",2),
(73,"Primary Power Grid","Mid",2),
(74,"Solar Array","Mid",2),
(75,"Velvet Oasis","Mid",2),
(76,"IDK","none",0),
(77,"IDK","none",1),
(78,"IDK","none",2),
(79,"IDK","none",3),
(80,"IDK","none",4),
(81,"IDK","none",5);

INSERT INTO Duos( Ranking, Main_Player, Player_Two, Main_Player_Primary_Gun, Main_Player_Secondary_Gun, Map_Name, Location_Name)
VALUES
( 2, "Bloodhound" , "Wraith" , "P2020","P2020" , "Worlds Edge" , "IDK");

INSERT INTO Trios( Ranking, Main_Player, Player_Two, Player_Three, Main_Player_Primary_Gun, Main_Player_Secondary_Gun, Map_Name, Location_Name)
VALUES
( 2, "Bloodhound" , "Wraith" , "Pathfinder", "P2020","P2020" , "Golden Gardens" , "Grow Towers");

INSERT INTO Ranked( Ranking, RP_Earned, Main_Player, Player_Two, Player_Three, Main_Player_Primary_Gun, Main_Player_Secondary_Gun, Map_Name, Location_Name)
VALUES
( 2, 5, "Bloodhound" , "Wraith" , "Pathfinder", "P2020","P2020" , "Golden Gardens" , "Grow Towers");

INSERT INTO Arena( Ranking,  Main_Player, Player_Two, Player_Three,  Map_Name)
VALUES
( 2, "Bloodhound" , "Wraith" , "Pathfinder", "Golden Gardens" );



