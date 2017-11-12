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

% Recursive Case: First list still has elements.
% List1's head (an atom) onto whatever the reduced call returns as Merged will become the new merged list
% Don't care what the second list is, but pass it on down towards the base case (the string)
mergeLists([Head | Tail], List2, [Head | Merged]) :-
    mergeLists(Tail, List2, Merged).



%Definitions for reverseList(List, ReversedList)

% Base Case: Empty list; must be reversed.
reverseList([], []).

% Recursive case: List still has head and tail. Remove head, and unify it with a merged list
% Recurse on the tail
reverseList([Head | Tail], ReversedList) :-
    mergeLists(SmallerList, [Head], ReversedList),
    reverseList(Tail, SmallerList).



%insertElementIntoListEnd(El, List, NewList)
% This one is NOT recruseive itself.
% El is inserted into NewList IF NewList is the same as List with El merged at the end
insertElementIntoListEnd(El, List, NewList) :- mergeLists(List, [El], NewList).
