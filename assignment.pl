%Definitions for isElementInList(El, List)

% Base Case: El is the head of List
isElementInList(El, [El | _]).
% Other Base Case: List is reduced to the empty list. This should be false. In Prolog, nonexistance == false

% Recursive Case: List is reduced to everything except the head of the list
% I.e. Element is in the list if element is in the tail of the list...somewhere!
isElementInList(El, [_ | Tail]) :-
    isElementInList(El, Tail).



%Definitions for mergeLists(List1, List2, Merged)

% Base Case: First list is now mepty. Second list is the basis of the new, merged list
mergeLists([], List2, List2).

% Recursive Case: First list still has elements. It's head (atom) onto whatever the reduced call returns as Merged will become the new merged list
% Don't care what the second list is, but pass it on down towards the base case (the string)
mergeLists([Head | Tail], List2, [Head | Merged]) :-
    mergeLists(Tail, List2, Merged).



%Definitions for reverseList(List, ReversedList)

% Base Case: Empty list. Only necessary to support reverseList([], X).
reverseList([], []).

% Recursive case: List still has head and tail. Remove head, and unify it with a merged list
reverseList([Head | Tail], ReversedList) :-
    mergeLists(SmallerList, [Head], ReversedList),
    reverseList(Tail, SmallerList).



%insertElementIntoListEnd(El, List, NewList)

