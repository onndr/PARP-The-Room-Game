:- [messages].

:- dynamic
    batteryAcquired/1.

getKey :- 
    assert(keyHeld(_)),
    nl, nl, write("  [The man got a key!]  "), nl, nl.

getBattery :-
    batteriesHeld(B),
    Y is B + 1,
    retractall(batteriesHeld(B)),
    assert(batteriesHeld(Y)),
    assert(batteryAcquired(_)),
    nl, nl, write("  [The man got a battery!]  "), nl, nl.

goNextRoom(R, S) :-
    Nr is R + 1,
    retractall(roomNumber(R)),
    retractall(sectorNumber(S)),
    assert(roomNumber(Nr)),
    assert(sectorNumber(4)),
    retractall(keyHeld(_)),
    retractall(batteryAcquired(_)),
    retractall(actionDone(_)),
    nl, nl, write("  The man opened the door and immediately, the incessant ring of a telephone echoed from the room he entered, an unrelenting reminder of the unresolved mysteries that lay within."), nl, nl.

showMsg(Trigger, R) :-
    msg(R, Trigger, Msg), !,
    nl, nl, write(Msg), nl, nl.

handle(Cmd, R, S) :- 
    (Cmd == breakAquarium -> assert(actionDone(reachIntoAquarium)); true),
    (\+keyHeld(_), keyLocation(R, S), keyAction(R, Cmd) -> getKey; true),
    (\+batteryAcquired(_), batteryLocation(R, S), batteryAction(R, Cmd) -> getBattery; true),
    (\+keyHeld(_), Cmd == openRightDoor -> writeln("  The man does not have key to this door. He needs to look around...  "); true),
    (keyHeld(_), S == 6, Cmd == openRightDoor -> goNextRoom(R, S); true),
    (showMsg(Cmd, R) -> true; true),
    (roomNumber(X), (X == 11) -> outro; true).
