﻿Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Space))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Space))==(Machine(Space));
  Level(Machine(Space))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Space)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Space))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Space))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Space))==(?);
  List_Includes(Machine(Space))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Space))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Space))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Space))==(?);
  Context_List_Variables(Machine(Space))==(?);
  Abstract_List_Variables(Machine(Space))==(?);
  Local_List_Variables(Machine(Space))==(?);
  List_Variables(Machine(Space))==(?);
  External_List_Variables(Machine(Space))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Space))==(?);
  Abstract_List_VisibleVariables(Machine(Space))==(?);
  External_List_VisibleVariables(Machine(Space))==(?);
  Expanded_List_VisibleVariables(Machine(Space))==(?);
  List_VisibleVariables(Machine(Space))==(?);
  Internal_List_VisibleVariables(Machine(Space))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Space))==(btrue);
  Gluing_List_Invariant(Machine(Space))==(btrue);
  Expanded_List_Invariant(Machine(Space))==(btrue);
  Abstract_List_Invariant(Machine(Space))==(btrue);
  Context_List_Invariant(Machine(Space))==(btrue);
  List_Invariant(Machine(Space))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Space))==(btrue);
  Abstract_List_Assertions(Machine(Space))==(btrue);
  Context_List_Assertions(Machine(Space))==(btrue);
  List_Assertions(Machine(Space))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Space))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Space))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Space))==(skip);
  Context_List_Initialisation(Machine(Space))==(skip);
  List_Initialisation(Machine(Space))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Space))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Space))==(btrue);
  List_Constraints(Machine(Space))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Space))==(?);
  List_Operations(Machine(Space))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Space))==(grid,asteroids,homebase,starbase);
  Inherited_List_Constants(Machine(Space))==(?);
  List_Constants(Machine(Space))==(grid,asteroids,homebase,starbase)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Space))==(?);
  Context_List_Defered(Machine(Space))==(?);
  Context_List_Sets(Machine(Space))==(?);
  List_Valuable_Sets(Machine(Space))==(?);
  Inherited_List_Enumerated(Machine(Space))==(?);
  Inherited_List_Defered(Machine(Space))==(?);
  Inherited_List_Sets(Machine(Space))==(?);
  List_Enumerated(Machine(Space))==(?);
  List_Defered(Machine(Space))==(?);
  List_Sets(Machine(Space))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Space))==(?);
  Expanded_List_HiddenConstants(Machine(Space))==(?);
  List_HiddenConstants(Machine(Space))==(?);
  External_List_HiddenConstants(Machine(Space))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Space))==(btrue);
  Context_List_Properties(Machine(Space))==(btrue);
  Inherited_List_Properties(Machine(Space))==(btrue);
  List_Properties(Machine(Space))==(grid: NAT1 <-> NAT1 & grid = {1|->1,1|->2,1|->3,1|->4,1|->5,1|->6,1|->7,2|->1,2|->2,2|->3,2|->4,2|->5,2|->6,2|->7,3|->1,3|->2,3|->3,3|->4,3|->5,3|->6,3|->7,4|->1,4|->2,4|->3,4|->4,4|->5,4|->6,4|->7,5|->1,5|->2,5|->3,5|->4,5|->5,5|->6,5|->7,6|->1,6|->2,6|->3,6|->4,6|->5,6|->6,6|->7,7|->1,7|->2,7|->3,7|->4,7|->5,7|->6,7|->7,8|->1,8|->2,8|->3,8|->4,8|->5,8|->6,8|->7,9|->1,9|->2,9|->3,9|->4,9|->5,9|->6,9|->7,10|->1,10|->2,10|->3,10|->4,10|->5,10|->6,10|->7,11|->1,11|->2,11|->3,11|->4,11|->5,11|->6,11|->7,12|->1,12|->2,12|->3,12|->4,12|->5,12|->6,12|->7} & asteroids <: grid & asteroids = {3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5} & homebase: grid & homebase/:asteroids & homebase = 1|->1 & starbase: grid & starbase/:asteroids & starbase/=homebase & starbase = 6|->4)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Space)) == (grid,asteroids,homebase,starbase | ? | ? | ? | ? | ? | ? | ? | Space);
  List_Of_HiddenCst_Ids(Machine(Space)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Space)) == (grid,asteroids,homebase,starbase);
  List_Of_VisibleVar_Ids(Machine(Space)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Space)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Space)) == (Type(grid) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(asteroids) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(homebase) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(starbase) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
