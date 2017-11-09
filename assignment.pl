%Definitions for isElementInList(El, List)
% Base Case: El is the head of List
isElementInList(El, [El | _]).
% Recursive Case: List is reduced to everything except the head of the list
% I.e. Element is in the list if element is in the tail of the list...somewhere!
isElementInList(El, [_ | Tail]) :- isElementInList(El, Tail).

%Definitions for mergeLists(List1, List2, Merged)
% Base Case: First list is now mepty. Second list is the basis of the new, merged list
mergeLists([], List2, List2).
% Recursive Case: First list still has elements. Don't care what the second list is, but
mergeLists([Head | Tail], List2, [Head | Merged]) :- mergeLists(Tail, List2, Merged).


% Base Case: Both lists are empty, and Merged is already a list
%mergeLists([], [], Merged) :- Merged = [_ | _].
%% Recursive Case: First list still has elements, but second list is empty
%mergeLists([Head | Tail], [], SmallerList) :- mergeLists(Tail, [], [Head | SmallerList]).
%% Recursive Case: Second list still has elements, but first list is empty
%mergeLists([], [Head | Tail], SmallerList) :- mergeLists([], Tail, [Head | SmallerList]).
%% Recursive Case: Neither list is empty?!???


%% Base case: Both inputs are empty
%mergeLists([], [], ).
%% Recursive case: First input is empty, but second input still has elements
%mergeLists([], [Head | Tail], NewList) :- mergeLists([], Tail, [Head | NewList]).
%% Recursive case: First input still has elements
%mergeLists([Head | Tail], List2, NewList) :- mergeLists(Tail, List2, [Head | NewList]).

%mergeLists(List1, List2, Merged) :- Merged = [List1 | List2].


%insertElementIntoListEnd(El, List, NewList)

%Definitions for reverseList(List, ReversedList)
% Base Case: Empty list. Only necessary to support reverseList([], X).
reverseList([], []).
% Base Case: Only one element left in list.
%reverseList([El], [El]). % TODO: need to use (El, [El|[])??
% Recursive Case: List head is removed, and head now is on the end of the new list
reverseList([Head | Tail], NewList) :-
    NewList = [ReversedList | Head], % merge the lists somehow?
    reverseList(Tail, ReversedList).
