/* Spaceship
 * Author: Gayashan Bombuwala | 2015047 | W1582950
 * Creation date: 11/29/18
 */
MACHINE
    Spaceship SEES Space
    
SETS
    MOVEMENT_RESULT = {
        FORWARD_MOVE_SUCCESS, BACKWARD_MOVE_SUCCESS, UP_MOVE_SUCCESS, DOWN_MOVE_SUCCESS,
        WARP_DRIVE_SUCCESS, MOVE_FAILED_OUT_OF_BOUNDARY, MOVE_FAILED_OUT_OF_POWER,
        MOVE_FAILED_ASTEROID_COLLISION     
    }
    
CONSTANTS
    initial_power_units, move_units, collision_units, warp_units
    
PROPERTIES
    initial_power_units : NAT1 & initial_power_units = 50
    &
    move_units : NAT1 & move_units = 5
    &
    collision_units : NAT1 & collision_units = 10
    &
    warp_units : NAT1 & warp_units = 20
    
VARIABLES
    current_row, current_column, route, power_units, accident_count
    
INVARIANT
    current_row : NAT1 & current_row <=7
    &
    current_column : NAT1 & current_column <=12
    &
    route : seq(grid)
    &
    power_units : NAT & power_units <= initial_power_units
    &
    accident_count : NAT
    
INITIALISATION
    current_row := 1
    ||
    current_column := 1
    ||
    route := [ homebase ]
    ||
    power_units := initial_power_units
    ||
    accident_count := 0
    
OPERATIONS
    result <-- MoveUp = 
            PRE
                result : MOVEMENT_RESULT & (current_column |-> current_row) /= starbase
            THEN
                IF (power_units >= collision_units)
                THEN
                    IF ( (current_column |-> current_row + 1) : grid )
                    THEN
                        IF ( (current_column |-> current_row + 1) /: asteroids )
                        THEN
                            result := UP_MOVE_SUCCESS
                            ||
                            power_units := power_units - move_units
                            ||
                            current_row := current_row + 1
                            ||
                            route := route <- (current_column |-> current_row + 1)
                        ELSE
                            result := MOVE_FAILED_ASTEROID_COLLISION
                            ||
                            power_units := power_units - collision_units
                            ||
                            accident_count := accident_count + 1
                        END
                    ELSE
                        result := MOVE_FAILED_OUT_OF_BOUNDARY
                    END
                ELSE
                    result := MOVE_FAILED_OUT_OF_POWER
                END
            END;
            
    result <-- MoveDown = 
            PRE
                result : MOVEMENT_RESULT & (current_column |-> current_row) /= starbase
            THEN
                IF (power_units >= collision_units)
                THEN
                    IF ( (current_column |-> current_row - 1) : grid )
                    THEN
                        IF ( (current_column |-> current_row - 1) /: asteroids )
                        THEN
                            result := DOWN_MOVE_SUCCESS
                            ||
                            power_units := power_units - move_units
                            ||
                            current_row := current_row - 1
                            ||
                            route := route <- (current_column |-> current_row - 1)
                        ELSE
                            result := MOVE_FAILED_ASTEROID_COLLISION
                            ||
                            power_units := power_units - collision_units
                            ||
                            accident_count := accident_count + 1
                        END
                    ELSE
                        result := MOVE_FAILED_OUT_OF_BOUNDARY
                    END
                ELSE
                    result := MOVE_FAILED_OUT_OF_POWER
                END
            END;
            
    result <-- MoveForward = 
            PRE
                result : MOVEMENT_RESULT & (current_column |-> current_row) /= starbase
            THEN
                IF (power_units >= collision_units)
                THEN
                    IF ( (current_column + 1 |-> current_row) : grid )
                    THEN
                        IF ( (current_column + 1 |-> current_row) /: asteroids )
                        THEN
                            result := FORWARD_MOVE_SUCCESS
                            ||
                            power_units := power_units - move_units
                            ||
                            current_column := current_column + 1
                            ||
                            route := route <- (current_column + 1 |-> current_row)
                        ELSE
                            result := MOVE_FAILED_ASTEROID_COLLISION
                            ||
                            power_units := power_units - collision_units
                            ||
                            accident_count := accident_count + 1
                        END
                    ELSE
                        result := MOVE_FAILED_OUT_OF_BOUNDARY
                    END
                ELSE
                    result := MOVE_FAILED_OUT_OF_POWER
                END
            END;
            
    result <-- MoveBackward = 
            PRE
                result : MOVEMENT_RESULT & (current_column |-> current_row) /= starbase
            THEN
                IF (power_units >= collision_units)
                THEN
                    IF ( (current_column - 1 |-> current_row) : grid )
                    THEN
                        IF ( (current_column - 1 |-> current_row) /: asteroids )
                        THEN
                            result := BACKWARD_MOVE_SUCCESS
                            ||
                            power_units := power_units - move_units
                            ||
                            current_column := current_column - 1
                            ||
                            route := route <- (current_column - 1 |-> current_row)
                        ELSE
                            result := MOVE_FAILED_ASTEROID_COLLISION
                            ||
                            power_units := power_units - collision_units
                            ||
                            accident_count := accident_count + 1
                        END
                    ELSE
                        result := MOVE_FAILED_OUT_OF_BOUNDARY
                    END
                ELSE
                    result := MOVE_FAILED_OUT_OF_POWER
                END
            END;
            
    result <-- EngageWarpDrive ( new_position ) = 
            PRE
                result : MOVEMENT_RESULT & (current_column |-> current_row) /= starbase
                & 
                new_position : grid & new_position /= (current_column |-> current_row)
            THEN
                IF (power_units >= warp_units)
                THEN
                    IF ( new_position : grid )
                    THEN
                        IF ( new_position /: asteroids )
                        THEN
                            result := WARP_DRIVE_SUCCESS
                            ||
                            power_units := power_units - warp_units
                            ||
                            current_column := prj1(NAT1, NAT1)(new_position)
                            ||
                            current_row := prj2(NAT1, NAT1)(new_position)
                            ||
                            route := route <- new_position
                        ELSE
                            result := MOVE_FAILED_ASTEROID_COLLISION
                            ||
                            power_units := power_units - collision_units
                            ||
                            accident_count := accident_count + 1
                        END
                    ELSE
                        result := MOVE_FAILED_OUT_OF_BOUNDARY
                    END
                ELSE
                    result := MOVE_FAILED_OUT_OF_POWER
                END
            END           
    
END
