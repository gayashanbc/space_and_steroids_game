/* SpaceGame
 * Author: Gayashan Bombuwala | 2015047 | W1582950
 * Creation date: 12/01/18
 */
MACHINE
    Status SEES Space, Spaceship    

SETS
    SPACESHIP_LOCATION = { DOCKED_AT_STARBASE, NOT_DOCKED_AT_STARBASE };
    GAME_STATUS = { Game_WON, Game_LOST, Game_Not_Over }
    
OPERATIONS
    location, power, accidents <-- MissionStatus =
            BEGIN
                location := (current_column |-> current_row)
                ||
                power := power_units
                ||
                accidents := accident_count
            END;
            
    result <-- MissionRoute =
            BEGIN
                result := route
            END;
    
    result <-- DockedAtStarbase = 
            PRE
                result : SPACESHIP_LOCATION
            THEN
                IF ( (current_column |-> current_row) = starbase )
                THEN
                    result := DOCKED_AT_STARBASE
                ELSE
                    result := NOT_DOCKED_AT_STARBASE
                END
            END;
           
    result <-- GameStatus = 
            PRE
                result : GAME_STATUS
            THEN
                IF ( (current_column |-> current_row) = starbase )
                THEN
                    result := Game_WON
                ELSIF (power_units < collision_units)
                THEN
                    result := Game_LOST
                ELSE
                    result := Game_Not_Over
                END
            END
            
END
