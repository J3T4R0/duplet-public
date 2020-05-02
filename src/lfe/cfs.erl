-module( cfs ).
-author( "Jörgen Brandt <brandjoe@hu-berlin.de>" ).

-behaviour( tract ).

%% ============================================================
%% Includes
%% ============================================================

-include( "cfs.hrl" ).

%% ============================================================
%% API Exports
%% ============================================================

-export( to/1, from/1, stage/2, and_apply/4 ).

%% ============================================================
%% Tract Exports
%% ============================================================

-export( [] ).



%% ============================================================
%% API Functions
%% ============================================================

to( LocalDir )
when is_list( LocalDir ) ->
  {to_local, LocalDir, []}.

from( LocalDir )
when is_list( LocalDir ) ->
  {from_local, LocalDir, []}.

stage( {Direction, LocalDir, NameList}, Name )
when is_atom( Direction ),
     is_list( LocalDir ),
     is_list( NameList ),
     is_list( Name ) ->
  {Direction, LocalDir, [Name|NameList]}.

commence( {Direction, LocalDir, NameList}, Precond )
when is_atom( Direction ),
     is_list( LocalDir ),
     is_list( NameList ),
     is_reference( Precond ) ->
  tract:send_replay( cfs, 
       

%% ============================================================
%% Tract Functions
%% ============================================================

