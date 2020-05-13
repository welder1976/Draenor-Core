-- Pathing for Ix'lar the Underlord Entry: 45744 'TDB FORMAT' 
SET @NPC := 175234;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2845.473,`position_y`=-4767.625,`position_z`=84.60523 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2845.473,-4767.625,84.60523,0,0,0,0,100,0),
(@PATH,2,2854.41,-4778.39,91.96474,0,0,0,0,100,0),
(@PATH,3,2862.23,-4789.15,95.09084,0,0,0,0,100,0),
(@PATH,4,2856.74,-4803.69,94.67984,0,0,0,0,100,0),
(@PATH,5,2842.84,-4805.25,97.01968,0,0,0,0,100,0),
(@PATH,6,2833.87,-4790.56,96.84133,0,0,0,0,100,0),
(@PATH,7,2825.65,-4788.4,99.6292,0,0,0,0,100,0),
(@PATH,8,2812.69,-4791.82,95.80302,0,0,0,0,100,0),
(@PATH,9,2805.72,-4798.94,90.90422,0,0,0,0,100,0),
(@PATH,10,2795.53,-4802.25,85.21287,0,0,0,0,100,0),
(@PATH,11,2783.56,-4801.21,83.14036,0,0,0,0,100,0),
(@PATH,12,2768.65,-4800.15,79.33762,0,0,0,0,100,0),
(@PATH,13,2755.91,-4794.9,76.57204,0,0,0,0,100,0),
(@PATH,14,2747,-4777.48,76.48952,0,0,0,0,100,0),
(@PATH,15,2748.14,-4746.14,76.97128,0,0,0,0,100,0),
(@PATH,16,2747.03,-4722.73,74.83576,0,0,0,0,100,0),
(@PATH,17,2750.93,-4698.12,78.95863,0,0,0,0,100,0),
(@PATH,18,2760.24,-4670.02,80.02687,0,0,0,0,100,0),
(@PATH,19,2770.4,-4660.86,86.92216,0,0,0,0,100,0),
(@PATH,20,2783.42,-4664.73,92.67192,0,0,0,0,100,0),
(@PATH,21,2797.51,-4678.94,95.49097,0,0,0,0,100,0),
(@PATH,22,2809.22,-4682.13,95.92142,0,0,0,0,100,0),
(@PATH,23,2826.65,-4680.09,90.41763,0,0,0,0,100,0),
(@PATH,24,2838.29,-4692.48,93.17684,0,0,0,0,100,0),
(@PATH,25,2853.44,-4706.6,89.93577,0,0,0,0,100,0),
(@PATH,26,2861.5,-4729.15,82.22752,0,0,0,0,100,0),
(@PATH,27,2855.89,-4746.56,81.98978,0,0,0,0,100,0);