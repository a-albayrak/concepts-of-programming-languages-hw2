path(Start, Exit, Obstacles, Path) :-
    pathFinder(Start, Exit, Obstacles, [Start], ReversedPath),
    reverse(ReversedPath, Path).

pathFinder(Exit, Exit, _, Path, Path).
pathFinder(Current, Exit, Obstacles, Visited, Path) :-
    nextStep(Current, Next, Obstacles, Visited),
    pathFinder(Next, Exit, Obstacles, [Next | Visited], Path).

nextStep(Current, Next, Obstacles, Visited) :-
    move(Current, Next),
    isValidMove(Next, Obstacles, Visited).

isValidMove((NR, NC), Obstacles, Visited) :-
    isWithinBounds((NR, NC)),
    \+ member((NR, NC), Visited),
    \+ member((NR, NC), Obstacles).

possibleMoves([(-1, 0), (1, 0), (0, -1), (0, 1)]).

move((R, C), (NR, NC)) :-
    possibleMoves(Moves),
    member((DR, DC), Moves),
    NR is R + DR,
    NC is C + DC.

isWithinBounds((1, C)) :- member(C, [1, 2, 3, 4, 5]).
isWithinBounds((2, C)) :- member(C, [1, 2, 3, 4, 5]).
isWithinBounds((3, C)) :- member(C, [1, 2, 3, 4, 5]).
isWithinBounds((4, C)) :- member(C, [1, 2, 3, 4, 5]).
isWithinBounds((5, C)) :- member(C, [1, 2, 3, 4, 5]).
