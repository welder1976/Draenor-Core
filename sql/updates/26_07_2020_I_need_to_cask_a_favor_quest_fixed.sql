-- I need to Cask a Favor Quest Fix                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=5159 LIMIT 1;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
-- Script ----
DELETE FROM `smart_scripts` WHERE `entryorguid`=5159;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5159, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 33, 53574, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Daryl Riknussun on Gossip Hello - Give quest 29356 Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5159, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 99493, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Daryl Riknussun on Gossip Hello - Remove Aura');
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
-- Condition ---
DELETE FROM `conditions` WHERE `SourceGroup`=1 AND `SourceEntry`=5159;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 5159, 0, 0, 9, 0, 29356, 6, 0, 0, 0, '', 'Daryl Riknussun Quest Condition');                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
-- Creature Template ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=42465;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=43809;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
                                                                           