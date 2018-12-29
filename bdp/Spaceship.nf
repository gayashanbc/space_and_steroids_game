Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Spaceship))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Spaceship))==(Machine(Spaceship));
  Level(Machine(Spaceship))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Spaceship)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Spaceship))==(Space)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Spaceship))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Spaceship))==(?);
  List_Includes(Machine(Spaceship))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Spaceship))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Spaceship))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Spaceship))==(?);
  Context_List_Variables(Machine(Spaceship))==(?);
  Abstract_List_Variables(Machine(Spaceship))==(?);
  Local_List_Variables(Machine(Spaceship))==(accident_count,power_units,route,current_column,current_row,current_location);
  List_Variables(Machine(Spaceship))==(accident_count,power_units,route,current_column,current_row,current_location);
  External_List_Variables(Machine(Spaceship))==(accident_count,power_units,route,current_column,current_row,current_location)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Spaceship))==(?);
  Abstract_List_VisibleVariables(Machine(Spaceship))==(?);
  External_List_VisibleVariables(Machine(Spaceship))==(?);
  Expanded_List_VisibleVariables(Machine(Spaceship))==(?);
  List_VisibleVariables(Machine(Spaceship))==(?);
  Internal_List_VisibleVariables(Machine(Spaceship))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Spaceship))==(btrue);
  Gluing_List_Invariant(Machine(Spaceship))==(btrue);
  Expanded_List_Invariant(Machine(Spaceship))==(btrue);
  Abstract_List_Invariant(Machine(Spaceship))==(btrue);
  Context_List_Invariant(Machine(Spaceship))==(btrue);
  List_Invariant(Machine(Spaceship))==(current_location: grid & current_row: NAT1 & current_row<=7 & current_column: NAT1 & current_column<=12 & route: seq(grid) & power_units: NAT & power_units<=initial_power_units & accident_count: NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Spaceship))==(btrue);
  Abstract_List_Assertions(Machine(Spaceship))==(btrue);
  Context_List_Assertions(Machine(Spaceship))==(btrue);
  List_Assertions(Machine(Spaceship))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Spaceship))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Spaceship))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Spaceship))==(current_location,current_row,current_column,route,power_units,accident_count:=homebase,1,1,[homebase],initial_power_units,0);
  Context_List_Initialisation(Machine(Spaceship))==(skip);
  List_Initialisation(Machine(Spaceship))==(current_location:=homebase || current_row:=1 || current_column:=1 || route:=[homebase] || power_units:=initial_power_units || accident_count:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Spaceship))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Spaceship),Machine(Space))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Spaceship))==(btrue);
  List_Constraints(Machine(Spaceship))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Spaceship))==(MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,MissionRoute);
  List_Operations(Machine(Spaceship))==(MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,MissionRoute)
END
&
THEORY ListInputX IS
  List_Input(Machine(Spaceship),MoveUp)==(?);
  List_Input(Machine(Spaceship),MoveDown)==(?);
  List_Input(Machine(Spaceship),MoveForward)==(?);
  List_Input(Machine(Spaceship),MoveBackward)==(?);
  List_Input(Machine(Spaceship),EngageWarpDrive)==(new_position);
  List_Input(Machine(Spaceship),MissionStatus)==(?);
  List_Input(Machine(Spaceship),MissionRoute)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Spaceship),MoveUp)==(result);
  List_Output(Machine(Spaceship),MoveDown)==(result);
  List_Output(Machine(Spaceship),MoveForward)==(result);
  List_Output(Machine(Spaceship),MoveBackward)==(result);
  List_Output(Machine(Spaceship),EngageWarpDrive)==(result);
  List_Output(Machine(Spaceship),MissionStatus)==(location,power,accidents);
  List_Output(Machine(Spaceship),MissionRoute)==(result)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Spaceship),MoveUp)==(result <-- MoveUp);
  List_Header(Machine(Spaceship),MoveDown)==(result <-- MoveDown);
  List_Header(Machine(Spaceship),MoveForward)==(result <-- MoveForward);
  List_Header(Machine(Spaceship),MoveBackward)==(result <-- MoveBackward);
  List_Header(Machine(Spaceship),EngageWarpDrive)==(result <-- EngageWarpDrive(new_position));
  List_Header(Machine(Spaceship),MissionStatus)==(location,power,accidents <-- MissionStatus);
  List_Header(Machine(Spaceship),MissionRoute)==(result <-- MissionRoute)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Spaceship),MoveUp)==(result: MOVEMENT_RESULT & current_column|->current_row/=starbase);
  List_Precondition(Machine(Spaceship),MoveDown)==(result: MOVEMENT_RESULT & current_column|->current_row/=starbase);
  List_Precondition(Machine(Spaceship),MoveForward)==(result: MOVEMENT_RESULT & current_column|->current_row/=starbase);
  List_Precondition(Machine(Spaceship),MoveBackward)==(result: MOVEMENT_RESULT & current_column|->current_row/=starbase);
  List_Precondition(Machine(Spaceship),EngageWarpDrive)==(result: MOVEMENT_RESULT & current_column|->current_row/=starbase & new_position: grid & new_position/=(current_column|->current_row));
  List_Precondition(Machine(Spaceship),MissionStatus)==(location: grid & location/:asteroids & power: NAT & power<=initial_power_units & accidents: NAT);
  List_Precondition(Machine(Spaceship),MissionRoute)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Spaceship),MissionRoute)==(btrue | result:=route);
  Expanded_List_Substitution(Machine(Spaceship),MissionStatus)==(location: grid & location/:asteroids & power: NAT & power<=initial_power_units & accidents: NAT | location,power,accidents:=current_column|->current_row,power_units,accident_count);
  Expanded_List_Substitution(Machine(Spaceship),EngageWarpDrive)==(result: MOVEMENT_RESULT & current_column|->current_row/=starbase & new_position: grid & new_position/=(current_column|->current_row) | power_units>=warp_units ==> (new_position: grid ==> (new_position/:asteroids ==> result,power_units,current_column,current_row:=WARP_DRIVE_SUCCESS,power_units-warp_units,prj1(NAT1,NAT1)(new_position),prj2(NAT1,NAT1)(new_position) [] not(new_position/:asteroids) ==> result,power_units,accident_count:=MOVE_FAILED_ASTEROID_COLLISION,power_units-collision_units,accident_count+1) [] not(new_position: grid) ==> result:=MOVE_FAILED_OUT_OF_BOUNDARY) [] not(power_units>=warp_units) ==> result:=MOVE_FAILED_OUT_OF_POWER);
  Expanded_List_Substitution(Machine(Spaceship),MoveBackward)==(result: MOVEMENT_RESULT & current_column|->current_row/=starbase | power_units>=collision_units ==> (current_column-1|->current_row: grid ==> (current_column-1|->current_row/:asteroids ==> result,power_units,current_column:=BACKWARD_MOVE_SUCCESS,power_units-move_units,current_column-1 [] not(current_column-1|->current_row/:asteroids) ==> result,power_units,accident_count:=MOVE_FAILED_ASTEROID_COLLISION,power_units-collision_units,accident_count+1) [] not(current_column-1|->current_row: grid) ==> result:=MOVE_FAILED_OUT_OF_BOUNDARY) [] not(power_units>=collision_units) ==> result:=MOVE_FAILED_OUT_OF_POWER);
  Expanded_List_Substitution(Machine(Spaceship),MoveForward)==(result: MOVEMENT_RESULT & current_column|->current_row/=starbase | power_units>=collision_units ==> (current_column+1|->current_row: grid ==> (current_column+1|->current_row/:asteroids ==> result,power_units,current_column:=FORWARD_MOVE_SUCCESS,power_units-move_units,current_column+1 [] not(current_column+1|->current_row/:asteroids) ==> result,power_units,accident_count:=MOVE_FAILED_ASTEROID_COLLISION,power_units-collision_units,accident_count+1) [] not(current_column+1|->current_row: grid) ==> result:=MOVE_FAILED_OUT_OF_BOUNDARY) [] not(power_units>=collision_units) ==> result:=MOVE_FAILED_OUT_OF_POWER);
  Expanded_List_Substitution(Machine(Spaceship),MoveDown)==(result: MOVEMENT_RESULT & current_column|->current_row/=starbase | power_units>=collision_units ==> (current_column|->current_row-1: grid ==> (current_column|->current_row-1/:asteroids ==> result,power_units,current_row:=DOWN_MOVE_SUCCESS,power_units-move_units,current_row-1 [] not(current_column|->current_row-1/:asteroids) ==> result,power_units,accident_count:=MOVE_FAILED_ASTEROID_COLLISION,power_units-collision_units,accident_count+1) [] not(current_column|->current_row-1: grid) ==> result:=MOVE_FAILED_OUT_OF_BOUNDARY) [] not(power_units>=collision_units) ==> result:=MOVE_FAILED_OUT_OF_POWER);
  Expanded_List_Substitution(Machine(Spaceship),MoveUp)==(result: MOVEMENT_RESULT & current_column|->current_row/=starbase | power_units>=collision_units ==> (current_column|->current_row+1: grid ==> (current_column|->current_row+1/:asteroids ==> result,power_units,current_row,route:=UP_MOVE_SUCCESS,power_units-move_units,current_row+1,current_column|->current_row->route [] not(current_column|->current_row+1/:asteroids) ==> result,power_units,accident_count:=MOVE_FAILED_ASTEROID_COLLISION,power_units-collision_units,accident_count+1) [] not(current_column|->current_row+1: grid) ==> result:=MOVE_FAILED_OUT_OF_BOUNDARY) [] not(power_units>=collision_units) ==> result:=MOVE_FAILED_OUT_OF_POWER);
  List_Substitution(Machine(Spaceship),MoveUp)==(IF power_units>=collision_units THEN IF current_column|->current_row+1: grid THEN IF current_column|->current_row+1/:asteroids THEN result:=UP_MOVE_SUCCESS || power_units:=power_units-move_units || current_row:=current_row+1 || route:=current_column|->current_row->route ELSE result:=MOVE_FAILED_ASTEROID_COLLISION || power_units:=power_units-collision_units || accident_count:=accident_count+1 END ELSE result:=MOVE_FAILED_OUT_OF_BOUNDARY END ELSE result:=MOVE_FAILED_OUT_OF_POWER END);
  List_Substitution(Machine(Spaceship),MoveDown)==(IF power_units>=collision_units THEN IF current_column|->current_row-1: grid THEN IF current_column|->current_row-1/:asteroids THEN result:=DOWN_MOVE_SUCCESS || power_units:=power_units-move_units || current_row:=current_row-1 ELSE result:=MOVE_FAILED_ASTEROID_COLLISION || power_units:=power_units-collision_units || accident_count:=accident_count+1 END ELSE result:=MOVE_FAILED_OUT_OF_BOUNDARY END ELSE result:=MOVE_FAILED_OUT_OF_POWER END);
  List_Substitution(Machine(Spaceship),MoveForward)==(IF power_units>=collision_units THEN IF current_column+1|->current_row: grid THEN IF current_column+1|->current_row/:asteroids THEN result:=FORWARD_MOVE_SUCCESS || power_units:=power_units-move_units || current_column:=current_column+1 ELSE result:=MOVE_FAILED_ASTEROID_COLLISION || power_units:=power_units-collision_units || accident_count:=accident_count+1 END ELSE result:=MOVE_FAILED_OUT_OF_BOUNDARY END ELSE result:=MOVE_FAILED_OUT_OF_POWER END);
  List_Substitution(Machine(Spaceship),MoveBackward)==(IF power_units>=collision_units THEN IF current_column-1|->current_row: grid THEN IF current_column-1|->current_row/:asteroids THEN result:=BACKWARD_MOVE_SUCCESS || power_units:=power_units-move_units || current_column:=current_column-1 ELSE result:=MOVE_FAILED_ASTEROID_COLLISION || power_units:=power_units-collision_units || accident_count:=accident_count+1 END ELSE result:=MOVE_FAILED_OUT_OF_BOUNDARY END ELSE result:=MOVE_FAILED_OUT_OF_POWER END);
  List_Substitution(Machine(Spaceship),EngageWarpDrive)==(IF power_units>=warp_units THEN IF new_position: grid THEN IF new_position/:asteroids THEN result:=WARP_DRIVE_SUCCESS || power_units:=power_units-warp_units || current_column:=prj1(NAT1,NAT1)(new_position) || current_row:=prj2(NAT1,NAT1)(new_position) ELSE result:=MOVE_FAILED_ASTEROID_COLLISION || power_units:=power_units-collision_units || accident_count:=accident_count+1 END ELSE result:=MOVE_FAILED_OUT_OF_BOUNDARY END ELSE result:=MOVE_FAILED_OUT_OF_POWER END);
  List_Substitution(Machine(Spaceship),MissionStatus)==(location:=current_column|->current_row || power:=power_units || accidents:=accident_count);
  List_Substitution(Machine(Spaceship),MissionRoute)==(result:=route)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Spaceship))==(initial_power_units,move_units,collision_units,warp_units);
  Inherited_List_Constants(Machine(Spaceship))==(?);
  List_Constants(Machine(Spaceship))==(initial_power_units,move_units,collision_units,warp_units)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Spaceship),MOVEMENT_RESULT)==({FORWARD_MOVE_SUCCESS,BACKWARD_MOVE_SUCCESS,UP_MOVE_SUCCESS,DOWN_MOVE_SUCCESS,WARP_DRIVE_SUCCESS,MOVE_FAILED_OUT_OF_BOUNDARY,MOVE_FAILED_OUT_OF_POWER,MOVE_FAILED_ASTEROID_COLLISION});
  Context_List_Enumerated(Machine(Spaceship))==(?);
  Context_List_Defered(Machine(Spaceship))==(?);
  Context_List_Sets(Machine(Spaceship))==(?);
  List_Valuable_Sets(Machine(Spaceship))==(?);
  Inherited_List_Enumerated(Machine(Spaceship))==(?);
  Inherited_List_Defered(Machine(Spaceship))==(?);
  Inherited_List_Sets(Machine(Spaceship))==(?);
  List_Enumerated(Machine(Spaceship))==(MOVEMENT_RESULT);
  List_Defered(Machine(Spaceship))==(?);
  List_Sets(Machine(Spaceship))==(MOVEMENT_RESULT)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Spaceship))==(?);
  Expanded_List_HiddenConstants(Machine(Spaceship))==(?);
  List_HiddenConstants(Machine(Spaceship))==(?);
  External_List_HiddenConstants(Machine(Spaceship))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Spaceship))==(btrue);
  Context_List_Properties(Machine(Spaceship))==(grid: NAT1 <-> NAT1 & grid = {1|->1,1|->2,1|->3,1|->4,1|->5,1|->6,1|->7,2|->1,2|->2,2|->3,2|->4,2|->5,2|->6,2|->7,3|->1,3|->2,3|->3,3|->4,3|->5,3|->6,3|->7,4|->1,4|->2,4|->3,4|->4,4|->5,4|->6,4|->7,5|->1,5|->2,5|->3,5|->4,5|->5,5|->6,5|->7,6|->1,6|->2,6|->3,6|->4,6|->5,6|->6,6|->7,7|->1,7|->2,7|->3,7|->4,7|->5,7|->6,7|->7,8|->1,8|->2,8|->3,8|->4,8|->5,8|->6,8|->7,9|->1,9|->2,9|->3,9|->4,9|->5,9|->6,9|->7,10|->1,10|->2,10|->3,10|->4,10|->5,10|->6,10|->7,11|->1,11|->2,11|->3,11|->4,11|->5,11|->6,11|->7,12|->1,12|->2,12|->3,12|->4,12|->5,12|->6,12|->7} & asteroids <: grid & asteroids = {3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5} & homebase: grid & homebase/:asteroids & homebase = 1|->1 & starbase: grid & starbase/:asteroids & starbase/=homebase & starbase = 6|->4);
  Inherited_List_Properties(Machine(Spaceship))==(btrue);
  List_Properties(Machine(Spaceship))==(initial_power_units: NAT1 & initial_power_units = 50 & move_units: NAT1 & move_units = 5 & collision_units: NAT1 & collision_units = 10 & warp_units: NAT1 & warp_units = 20 & MOVEMENT_RESULT: FIN(INTEGER) & not(MOVEMENT_RESULT = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Spaceship),Machine(Space))==(?);
  Seen_Context_List_Enumerated(Machine(Spaceship))==(?);
  Seen_Context_List_Invariant(Machine(Spaceship))==(btrue);
  Seen_Context_List_Assertions(Machine(Spaceship))==(btrue);
  Seen_Context_List_Properties(Machine(Spaceship))==(btrue);
  Seen_List_Constraints(Machine(Spaceship))==(btrue);
  Seen_List_Operations(Machine(Spaceship),Machine(Space))==(?);
  Seen_Expanded_List_Invariant(Machine(Spaceship),Machine(Space))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Spaceship),MoveUp)==(?);
  List_ANY_Var(Machine(Spaceship),MoveDown)==(?);
  List_ANY_Var(Machine(Spaceship),MoveForward)==(?);
  List_ANY_Var(Machine(Spaceship),MoveBackward)==(?);
  List_ANY_Var(Machine(Spaceship),EngageWarpDrive)==(?);
  List_ANY_Var(Machine(Spaceship),MissionStatus)==(?);
  List_ANY_Var(Machine(Spaceship),MissionRoute)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Spaceship)) == (initial_power_units,move_units,collision_units,warp_units,MOVEMENT_RESULT,FORWARD_MOVE_SUCCESS,BACKWARD_MOVE_SUCCESS,UP_MOVE_SUCCESS,DOWN_MOVE_SUCCESS,WARP_DRIVE_SUCCESS,MOVE_FAILED_OUT_OF_BOUNDARY,MOVE_FAILED_OUT_OF_POWER,MOVE_FAILED_ASTEROID_COLLISION | ? | accident_count,power_units,route,current_column,current_row,current_location | ? | MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,MissionRoute | ? | seen(Machine(Space)) | ? | Spaceship);
  List_Of_HiddenCst_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Spaceship)) == (initial_power_units,move_units,collision_units,warp_units);
  List_Of_VisibleVar_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Spaceship)) == (?: ?);
  List_Of_Ids(Machine(Space)) == (grid,asteroids,homebase,starbase | ? | ? | ? | ? | ? | ? | ? | Space);
  List_Of_HiddenCst_Ids(Machine(Space)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Space)) == (grid,asteroids,homebase,starbase);
  List_Of_VisibleVar_Ids(Machine(Space)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Space)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Spaceship)) == (Type(MOVEMENT_RESULT) == Cst(SetOf(etype(MOVEMENT_RESULT,0,7))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Spaceship)) == (Type(FORWARD_MOVE_SUCCESS) == Cst(etype(MOVEMENT_RESULT,0,7));Type(BACKWARD_MOVE_SUCCESS) == Cst(etype(MOVEMENT_RESULT,0,7));Type(UP_MOVE_SUCCESS) == Cst(etype(MOVEMENT_RESULT,0,7));Type(DOWN_MOVE_SUCCESS) == Cst(etype(MOVEMENT_RESULT,0,7));Type(WARP_DRIVE_SUCCESS) == Cst(etype(MOVEMENT_RESULT,0,7));Type(MOVE_FAILED_OUT_OF_BOUNDARY) == Cst(etype(MOVEMENT_RESULT,0,7));Type(MOVE_FAILED_OUT_OF_POWER) == Cst(etype(MOVEMENT_RESULT,0,7));Type(MOVE_FAILED_ASTEROID_COLLISION) == Cst(etype(MOVEMENT_RESULT,0,7));Type(initial_power_units) == Cst(btype(INTEGER,?,?));Type(move_units) == Cst(btype(INTEGER,?,?));Type(collision_units) == Cst(btype(INTEGER,?,?));Type(warp_units) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Spaceship)) == (Type(accident_count) == Mvl(btype(INTEGER,?,?));Type(power_units) == Mvl(btype(INTEGER,?,?));Type(route) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(current_column) == Mvl(btype(INTEGER,?,?));Type(current_row) == Mvl(btype(INTEGER,?,?));Type(current_location) == Mvl(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Spaceship)) == (Type(MissionRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(EngageWarpDrive) == Cst(etype(MOVEMENT_RESULT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MoveBackward) == Cst(etype(MOVEMENT_RESULT,?,?),No_type);Type(MoveForward) == Cst(etype(MOVEMENT_RESULT,?,?),No_type);Type(MoveDown) == Cst(etype(MOVEMENT_RESULT,?,?),No_type);Type(MoveUp) == Cst(etype(MOVEMENT_RESULT,?,?),No_type));
  Observers(Machine(Spaceship)) == (Type(MissionRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
