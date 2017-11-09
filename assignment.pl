%Definitions for isElementInList(El, List)
% Base Case: El is the head of List
isElementInList(El, [El | _]).
% Recursive Case: List is reduced to everything except the head of the list
% I.e. Element is in the list if element is in the tail of the list...somewhere!
isElementInList(El, [_ | Tail]) :- isElementInList(El, Tail).

%Definitions for reverseList(List, ReversedList)
% Base Case: Empty list. Only necessary to support reverseList([], X).
reverseList([], []).
% Base Case: Only one element left in list.
%reverseList([El], [El]). % TODO: need to use (El, [El|[])??
% Recursive Case: List head is removed, and head now is on the end of the new list
reverseList([Head | Tail], NewList) :-
    NewList = [ReversedList | Head],
    reverseList(Tail, ReversedList).

%insertElementIntoListEnd(El, List, NewList)

%Definitions for mergeLists(List1, List2, Merged)

