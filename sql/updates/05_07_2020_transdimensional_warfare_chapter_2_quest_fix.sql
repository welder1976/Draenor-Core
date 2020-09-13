
-- 27513 Transdimensional Warfare: Chapter II

DELETE FROM `spell_area` WHERE `spell`=59073 AND `area`=233 AND `quest_start`=27513 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES (59073, 233, 27513, 27518, 0, 0, 2, 1, 74, 11);

-- 45752 Ambermill Dimensional Portal
DELETE FROM `gossip_menu_option` WHERE `menu_id`=12054 AND `id`=1;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(12054, 1, 0, 'Use the Ambermill dimensional Portal', 1, 1, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE (`entryorguid`=45752 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(45752, 0, 0, 1, 62, 0, 100, 0, 12054, 1, 0, 0, 75, 59073, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On Quest Accept - Add Aura Phase 2"),
(45752, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -133.259, 785.617, 67.3825, 0.235228, "On Link - Teleport Player");

-- 45781 Ambermill Mage
UPDATE `creature_template` SET `faction` = 76, `AIName` = 'SmartAI' WHERE `entry` = 45781;
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` = 45781;

DELETE FROM `smart_scripts` WHERE (`entryorguid`=45781 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(45781, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 33, 45756, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, "Ambermill Mage - On Death - Give Killed Credit To Invoker Party");



DELETE FROM `creature` WHERE `id`=45781;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneid`, `areaid`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `WorldEffectID`, `isActive`, `protec_anti_doublet`) VALUES
(457810, 45781, 0, 130, 233, 1, 2, 0, 0, -106.482, 783.29, 66.0233, 2.95663, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457811, 45781, 0, 130, 233, 1, 2, 0, 0, -108.633, 791.759, 66.0233, 3.76166, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457812, 45781, 0, 130, 233, 1, 2, 0, 0, -125.579, 842.661, 63.254, 1.66072, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457813, 45781, 0, 130, 233, 1, 2, 0, 0, -133.994, 842.072, 63.0173, 1.9199, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457814, 45781, 0, 130, 233, 1, 2, 0, 0, -154.356, 820.805, 64.1622, 5.50524, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457815, 45781, 0, 130, 233, 1, 2, 0, 0, -163.199, 781.856, 64.7508, 1.4251, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457816, 45781, 0, 130, 233, 1, 2, 0, 0, -165.724, 779.317, 69.7957, 1.1345, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457817, 45781, 0, 130, 233, 1, 2, 0, 0, -86.7195, 825.543, 63.9404, 4.17792, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457818, 45781, 0, 130, 233, 1, 2, 0, 0, -110.536, 815.344, 63.6888, 2.10446, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457819, 45781, 0, 130, 233, 1, 2, 0, 0, -73.6768, 805.057, 64.8906, 5.33638, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457820, 45781, 0, 130, 233, 1, 2, 0, 0, -172.853, 865.579, 64.2683, 3.14512, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457821, 45781, 0, 130, 233, 1, 2, 0, 0, -176.032, 888.415, 64.6136, 1.31907, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457822, 45781, 0, 130, 233, 1, 2, 0, 0, -175.544, 929.284, 65.5415, 1.87278, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457823, 45781, 0, 130, 233, 1, 2, 0, 0, -198.191, 915.148, 66.6871, 0.659337, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457824, 45781, 0, 130, 233, 1, 2, 0, 0, -189.473, 919.484, 71.4597, 3.16083, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457825, 45781, 0, 130, 233, 1, 2, 0, 0, -146.446, 942.978, 66.9039, 0.678971, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457826, 45781, 0, 130, 233, 1, 2, 0, 0, -174.098, 979.613, 64.9429, 2.30867, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457827, 45781, 0, 130, 233, 1, 2, 0, 0, -210.733, 970.086, 72.0284, 0.258783, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457828, 45781, 0, 130, 233, 1, 2, 0, 0, -189.596, 998.536, 65.5499, 0.639701, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457829, 45781, 0, 130, 233, 1, 2, 0, 0, -136.82, 1013.58, 68.0598, 5.84689, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457830, 45781, 0, 130, 233, 1, 2, 0, 0, -141.891, 977.214, 67.6539, 4.48031, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457831, 45781, 0, 130, 233, 1, 2, 0, 0, -123.428, 954.842, 67.4892, 5.4542, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457832, 45781, 0, 130, 233, 1, 2, 0, 0, -106.34, 915.049, 66.4358, 5.48562, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457833, 45781, 0, 130, 233, 1, 2, 0, 0, -84.6531, 898.275, 65.5499, 5.42279, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457834, 45781, 0, 130, 233, 1, 2, 0, 0, -82.2203, 852.198, 62.5439, 5.21073, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457835, 45781, 0, 130, 233, 1, 2, 0, 0, -49.8904, 871.996, 65.7839, 2.59928, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457836, 45781, 0, 130, 233, 1, 2, 0, 0, -75.4285, 881.569, 67.2349, 2.83882, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457837, 45781, 0, 130, 233, 1, 2, 0, 0, -79.4175, 936.377, 68.8934, 1.32693, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457838, 45781, 0, 130, 233, 1, 2, 0, 0, -66.0997, 958.291, 67.5963, 0.565095, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457839, 45781, 0, 130, 233, 1, 2, 0, 0, -65.9151, 973.457, 67.2191, 3.81272, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457840, 45781, 0, 130, 233, 1, 2, 0, 0, -53.5371, 992.58, 68.0191, 0.00354129, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457841, 45781, 0, 130, 233, 1, 2, 0, 0, -84.863, 1015.94, 65.4411, 2.32439, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457842, 45781, 0, 130, 233, 1, 2, 0, 0, -120.014, 1029.07, 67.4527, 2.91737, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457843, 45781, 0, 130, 233, 1, 2, 0, 0, -117.29, 1005.1, 66.9396, 5.03401, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457844, 45781, 0, 130, 233, 1, 2, 0, 0, -100.855, 981.141, 68.5397, 5.28534, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457845, 45781, 0, 130, 233, 1, 2, 0, 0, -71.9185, 1056.18, 64.2545, 1.32693, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457846, 45781, 0, 130, 233, 1, 2, 0, 0, -34.4488, 1075.81, 64.2735, 0.620075, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457847, 45781, 0, 130, 233, 1, 2, 0, 0, -101.987, 1067.84, 64.2908, 3.06266, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457848, 45781, 0, 130, 233, 1, 2, 0, 0, -166.93, 1059.43, 66.4029, 4.20934, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457849, 45781, 0, 130, 233, 1, 2, 0, 0, -196.168, 1043.46, 61.7053, 3.58103, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457850, 45781, 0, 130, 233, 1, 2, 0, 0, -218.456, 1017.53, 70.056, 4.59419, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457851, 45781, 0, 130, 233, 1, 2, 0, 0, -195.531, 941.95, 65.6859, 4.99474, 300, 0, 0, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457852, 45781, 0, 130, 233, 1, 2, 0, 0, -221.46, 843.592, 72.0679, 3.79702, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457853, 45781, 0, 130, 233, 1, 2, 0, 0, -218.723, 811.416, 75.4188, 2.62285, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457854, 45781, 0, 130, 233, 1, 2, 0, 0, -236.253, 799.749, 73.9436, 4.29967, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(457855, 45781, 0, 130, 233, 1, 2, 0, 0, -254.043, 835.951, 76.6233, 1.82959, 300, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `id`=45781;