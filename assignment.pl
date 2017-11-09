%Definitions for isElementInList(El, List)
% Base Case: El is the head of List
isElementInList(El, [El | _]).
% Recursive Case: List is reduced to everything except the head of the list
% I.e. Element is in the list if element is in the tail of the list...somewhere!
isElementInList(El, [_ | Tail]) :- isElementInList(El, Tail).

%Definitions for reverseList(List, ReversedList)

%insertElementIntoListEnd(El, List, NewList)

%Definitions for mergeLists(List1, List2, Merged)

