/* THE ROOM, by Gamalii Andrii, Niezabitowski Jakub, Grabowski Piotr. */

/* Setting up game's starting stats and values */

:- [messages].
:- [handlers].
:- initialization(menu).
:- dynamic 
        inMenu/1,                       /* Fact that checks if player has already started the game and blocks certain actions outside of menu */
        roomNumber/1,                   /* Number of the current room (1-10) */
        sectorNumber/1,                 /* Number of the current sector (1-9) */
        rightDoor/1,                    /* The state of right door (closed or opened) */
        batteryPercentage/1,            /* The percentage left in a battery used by flashlight */
        batteriesHeld/1,                /* Number of batteries in plyer's inventory */
        keyHeld/1,                      /* Fact that is true when player holds a key and false if there's nothing in their pocket */
        actionDone/1.                    /* Fact that contains actions that were done */
:- assert(inMenu(_)).


/* These facts describe possible moves in the room */
/* path(source, direction, destination) */
path(1, d, 2). 
path(1, s, 4).
path(2, a, 1). 
path(2, d, 3). 
path(2, s, 5).
path(3, a, 2). 
path(3, s, 6).
path(4, w, 1). 
path(4, d, 5). 
path(4, s, 7).
path(5, a, 4). 
path(5, w, 2). 
path(5, d, 6). 
path(5, s, 8).
path(6, a, 5). 
path(6, w, 3). 
path(6, s, 9).
path(7, w, 4). 
path(7, d, 8).
path(8, a, 7). 
path(8, w, 5). 
path(8, d, 9).
path(9, a, 8). 
path(9, w, 6).


/* action(command, where_available, description) */
action(w,                       _, "Move up").
action(a,                       _, "Move left").
action(s,                       _, "Move down").
action(d,                       _, "Move right").
action(at,                      _, "Find yourself in a room").
action(checkBattery,            _, "Check current battery state").
action(checkKey,                _, "Check if there's a key in your pocket").
action(openDrawer,              1, "Open the drawer").
action(takeDownPainting,        2, "Take down the painting from the wall").
action(breakAquarium,           3, "Break the aquarium").
action(reachIntoAquarium,       3, "Put your hand into the aquarium").
action(openLeftDoor,            4, "Open the door").
action(rollCarpet,              5, "Roll the carpet").
action(openRightDoor,           6, "Open the door").
action(sitInChair,              7, "Sit in the chair").
action(pushChair,               7, "Push the chair").
action(layDownCouch,            8, "Lay down on the couch").
action(pushCouch,               8, "Push the couch").
action(pickUpPhone,             9, "Pick up the phone").


/* moveMsg(room_number, sector_number, message) */
moveMsg(1, 4, "  The entry door stands firmly closed, its surface cold to the touch, as if guarding the room against unseen forces lurking just beyond its frame.") .

moveMsg(2, 1, "  Unexpectedly, the commode is open, its insides exposed to the world. Within, a battery lies among the splintered wood.") .
moveMsg(2, 2, "  The painting on the wall captures a woman's head, unsettlingly reminiscent of your wife, her gaze fixed in a silent scream that seems to echo the crimson splattered across the canvas.") .
moveMsg(2, 3, "  The aquarium, now a macabre tank, is filled with blood so dense it could be mistaken for paint. A key and a multitude of disembodied human eyes float within, turning the stomach with their grotesque bobbing.") .

moveMsg(3, 2, "  An unsettlingly lifelike portrait of your child adorns the wall, eyes wide with an emotion you can't place, stirring within you a disquieting sense of urgency. Something about the way the portrait is positioned whispers the necessity of a closer look, as if it guards a secret just beyond the surface.") .

moveMsg(4, 1, "  The commode in this room stands solemn and enigmatic, its drawers sealed as if keeping its contents from the prying eyes of the world. The air around it is thick with a palpable sense of anticipation, hinting at the crucial items it guards.") .
moveMsg(4, 2, "  This part of the room is dominated by a painting, starkly black, as though it absorbed all light and life around it. Its unnerving emptiness seems to weigh heavily in the air, hinting at a darkness that's more than just visual.") .
moveMsg(4, 5, "  The carpet in this area feels uneven underfoot, betraying the presence of something concealed beneath its fibers. Its subtle irregularity hints at a secret deliberately obscured, whispering of hidden machinations in the silence of the room.") .
moveMsg(4, 8, "  In the dim recess beneath the sofa, something small and elusive is ensconced in the shadows. Its nature is obscured from sight, inviting a closer inspection to uncover what vital item might be hidden in this unassuming nook.") .

moveMsg(5, 1, "  In this room, the commode takes on a more foreboding presence. Its shadows seem deeper, almost alive, as if the dark wood itself holds breathless, unspeakable secrets. The air around it feels heavier, charged with an ancient, unspoken history.") .
moveMsg(5, 2, "  The painting depicts the fall of Adam and Eve, a timeless narrative of temptation and downfall. The vivid colors and lifelike figures seem to bleed an ominous foreboding into the very air of the room.") .
moveMsg(5, 8, "  Amidst the room's deceptive calm, a startling sight: a serpent sprawls across the sofa, its scales a sinister sheen in the scant light. It tightly enfolds a blood-red apple, a surreal and chilling tableau that grips the heart with both fear and fascination.") .

moveMsg(6, 2, "  On the painting, where the portrait of your wife is immortalized in an unsettling depiction. Tears of blood streak down her face, a visceral representation of sorrow and secrets untold. Behind this canvas of suffering, hidden from the naked eye, lies the key - a symbol of the truth that the voice on the phone alluded to, obscured by the façade of the artwork.") .

moveMsg(7, 7, "  Shrouded in gloom, the armchair seems to brood silently, its cushions disheveled as if disturbed by restless spirits. Each crease and fold in the fabric seems to hide a whisper of the past, a trace of the unseen and the unheard.") .

moveMsg(8, 5, "  The carpet sprawls across the floor with an unassuming guise, yet a subtle unease emanates from its threads. A careful observer might notice a slight disturbance in its weave, a hint of something concealed beneath its surface - a secret held close, yet yearning for discovery.") .

moveMsg(9, 3, "  The aquarium in this room, usually a symbol of tranquil aquatic life, now holds a more sinister scene. Within its glass walls, the water seems unusually still, yet charged with a silent, ominous tension. What should have been a peaceful underwater sanctuary now appears as a grave for secrets, with a key submerged within its depths - a stark symbol of the truth that refuses to stay buried, echoing the haunting words from the telephone call.") .

moveMsg(10, 3, "  The aquarium, a vessel of hidden depths, sits in this sector shrouded and sealed, its contents obscured from view. It stands as a silent testament to the beginning of a violent saga, a grim container holding more than just water. The key within lies just beyond reach, necessitating a forceful shattering of glass barriers. As the hero clenches their fist and strikes, the sound of breaking glass echoes a grim reminder of that first raised hand, the act leaving its own painful scars in a quest for hidden truths.") .

moveMsg(_, 1, "  Shadows cling to an aged commode in the corner, rumored to whisper secrets from within its dark wood, as if harboring tales from another time.").
moveMsg(_, 2, "  A haunting painting looms on the wall, its eyes seeming to follow your every move with an unsettling intensity that chills the spine.").
moveMsg(_, 3, "  An eerie glow emanates from an aquarium where ghostly fish glide silently, casting otherworldly reflections that dance across the dimly lit walls.").
moveMsg(_, 4, "  The entry door is wide open, a silent invitation from the abyss you've just stepped through.").
moveMsg(_, 5, "  A carpet with cryptic patterns sprawls at the center, muffling footsteps and perhaps the faint whispers of those who once tread here.").
moveMsg(_, 6, "  The exit door is shut tight, as though sealing in dark secrets, its handle frozen with an unspoken warning not to venture further.").
moveMsg(_, 7, "  In the gloom, an armchair sits askew, its silhouette suggesting the recent presence of someone or something but left no other trace.").
moveMsg(_, 8, "  A forlorn sofa holds the faint scent of bygone days and the indents of long-forgotten sitters who may have vanished into thin air.").
moveMsg(_, 9, "  Here rests an antique telephone, its crank a reminder of bygone days, yet poised to connect one with distant voices.").

/* keyLocation(RoomNumber, SectorNumber) */

keyLocation(2, 3).
keyLocation(3, 2).
keyLocation(4, 7).
keyLocation(5, 7).
keyLocation(6, 2).
keyLocation(7, 7).
keyLocation(8, 5).
keyLocation(9, 3).
keyLocation(10, 3).

/* keyAction(RoomNumber, Action) */
keyAction(2, reachIntoAquarium).
keyAction(2, breakAquarium).
keyAction(3, takeDownPainting).
keyAction(4, pushChair).
keyAction(5, sitInChair).
keyAction(6, takeDownPainting).
keyAction(7, sitInChair).
keyAction(8, rollCarpet).
keyAction(9, reachIntoAquarium).
keyAction(9, breakAquarium).
keyAction(10, breakAquarium).
keyAction(10, reachIntoAquarium).

/* batteryLocation(RoomNumber, SectorNumber) */
batteryLocation(2, 1).
batteryLocation(4, 8).
batteryLocation(5, 1).
batteryLocation(6, 5).
batteryLocation(8, 1).
batteryLocation(10, 8).

batteryAction(2, openDrawer).
batteryAction(4, breakAquarium).
batteryAction(5, openDrawer).
batteryAction(6, rollCarpet).
batteryAction(8, openDrawer).
batteryAction(10, layDownCouch).


checkSector(Sector) :-
        \+inMenu(_),
        sectorNumber(X),
        (Sector == X -> write("*"); write(" ")).


at :-
        \+inMenu(_),
        nl, nl,
        roomNumber(X),
        write("Room number: "),
        writeln(X),
        
        writeln("-------------"),
        write("| "), checkSector(1), write(" | "), checkSector(2), write(" | "), checkSector(3), write(" |"), nl,
        writeln("-------------"),
        write("| "), checkSector(4), write(" | "), checkSector(5), write(" | "), checkSector(6), write(" |"), nl,
        writeln("-------------"),
        write("| "), checkSector(7), write(" | "), checkSector(8), write(" | "), checkSector(9), write(" |"), nl,
        writeln("-------------"),
        nl, nl.


makeMove(Direction) :-
        \+inMenu(_),
        sectorNumber(Here),
        path(Here, Direction, There),
        retractall(sectorNumber(Here)),
        assert(sectorNumber(There)).


decreaseBattery :-
        \+inMenu(_),
        batteryPercentage(X),
        Y is X - 5,
        retractall(batteryPercentage(X)),
        assert(batteryPercentage(Y)).


checkIfBatteryDead :-
        \+inMenu(_),
        batteryPercentage(X),
        (X == 0 -> true; false).


checkIfPlayerDead :-
        \+inMenu(_),
        batteryPercentage(X),
        batteriesHeld(Z),
        (Z == 0, X == 0 -> true; false).
        

/* This rule tells how to move in a given direction. */

getMessage(Room, Sector, Message) :-
        moveMsg(Room, Sector, Message), !.
        getMessage(_, Sector, Message) :-
        moveMsg(_, Sector, Message).

go(Direction) :-
        \+inMenu(_),
        makeMove(Direction),
        decreaseBattery,
        (checkIfPlayerDead -> death; true),
        (checkIfBatteryDead -> changeBattery; true),
        !, nl, nl, walk_msg, nl, nl,
        roomNumber(RN),
        sectorNumber(SN),
        getMessage(RN, SN, Message),
        write("  "), writeln(Message), nl, nl, true.

go(_) :-
        \+inMenu(_),
        nl, nl,
        write("  The man must have been confused because he tried to go against a wall."),
        nl, nl.


/* These rules define the direction letters as calls to go/1. */

w :- \+inMenu(_), go(w).
a :- \+inMenu(_), go(a).
s :- \+inMenu(_), go(s).
d :- \+inMenu(_), go(d).


/* Checking battery percentage */

checkBattery :- 
        \+inMenu(_),
        nl, nl,
        writeln(  "The man look at the indicator on his flashlight and then checked all his pockets."), 
        nl,
        write("      >My battery is at "), 
        batteryPercentage(Percentage), 
        write(Percentage),
        write("% and I have "), 
        batteriesHeld(Batteries), 
        write(Batteries),
        writeln(" left... I hope that's enough. It's pretty dark in here..."),
        nl, nl.


changeBattery :-   
        \+inMenu(_),
        nl, nl,
        changeBattery_msg,
        retractall(batteryPercentage(_)),
        assert(batteryPercentage(100)),
        batteriesHeld(X),
        Y is X - 1,
        retractall(batteriesHeld(X)),
        assert(batteriesHeld(Y)),
        checkBattery. 


/* Checking if player has a key in his pocket */

/* No key in the pocket */
checkKey :-
        \+inMenu(_),
        \+keyHeld(_),
        nl, nl,
        writeln("  The man checked his pockets for anything interesting or useful."),
        nl,
        writeln("      >There's nothing in my pockets... except for a piece of gum..."),
        !, nl, nl.


/* Key in the pocket */
checkKey :-
        \+inMenu(_),
        keyHeld(_),
        nl, nl,
        writeln("  The man checked his pockets for anything interesting or useful."),
        nl,
        writeln("      >There's a key in my pocket..."),
        !, nl, nl.


/* Commands in sectors */

/* Set effects of the performed command */
effect(Cmd) :-
        \+inMenu(_),
        roomNumber(R),
        sectorNumber(S),
        handle(Cmd, R, S),
        (\+(Cmd == openRightDoor), \+(Cmd == pickUpPhone) -> assert(actionDone(Cmd)); true).


/* Checking if player is in  */
checkCmd(Cmd) :- 
        \+inMenu(_),
        \+actionDone(Cmd),
        sectorNumber(X),
        action(Cmd, Y, _),
        (X == Y -> true; false).


openDrawer :- 
        \+inMenu(_),
        checkCmd(openDrawer),
        effect(openDrawer).

takeDownPainting :- 
        \+inMenu(_),
        checkCmd(takeDownPainting),
        effect(takeDownPainting).

breakAquarium :- 
        \+inMenu(_),
        checkCmd(breakAquarium),
        effect(breakAquarium).

reachIntoAquarium :- 
        \+inMenu(_),
        checkCmd(reachIntoAquarium),
        effect(reachIntoAquarium).

openLeftDoor :- 
        \+inMenu(_),
        checkCmd(openLeftDoor),
        effect(openLeftDoor).

rollCarpet :- 
        \+inMenu(_),
        checkCmd(rollCarpet),
        effect(rollCarpet).

openRightDoor :- 
        \+inMenu(_),
        checkCmd(openRightDoor),
        effect(openRightDoor).

sitInChair :- 
        \+inMenu(_),
        checkCmd(sitInChair),
        effect(sitInChair).

pushChair :- 
        \+inMenu(_),
        checkCmd(pushChair),
        effect(pushChair).
pushCouch :-
        \+inMenu(_),
        checkCmd(pushCouch),
        effect(pushCouch).

layDownCouch :- 
        \+inMenu(_),
        checkCmd(layDownCouch),
        effect(layDownCouch).

pickUpPhone :-
        \+inMenu(_), 
        checkCmd(pickUpPhone),
        writeln("  The man picked up the phone with curiosity and heard:"),
        effect(pickUpPhone).


/* Player dies if they have no batteries left */

death :- 
        \+inMenu(_),
        nl, nl, death_msg, nl, nl, halt.


menu :-
        inMenu(_),
        logo,
        nl,
        menu_msg,
        nl, nl.


help :-
        \+inMenu(_),
        nl,
        sectorNumber(Here),
        writeln("========================================================="),
        foreach(
                action(ActionAvailable, Here, Description),
                ((\+actionDone(ActionAvailable) ->
                writef("%20L%w", [ActionAvailable, Description]), nl; true))
        ),
        writeln("========================================================="),
        nl, nl.


credits :-
        inMenu(_),
        shell(clear),
        logo,
        credits_msg.

back :- 
        inMenu(_),
        shell(clear),
        menu.


start :-
        retractall(inMenu(_)),
        shell(clear),
        intro,
        assert(roomNumber(1)),
        assert(sectorNumber(8)),
        retractall(rightDoor(_)),
        assert(batteryPercentage(10)), 
        assert(batteriesHeld(2)),
        assert(keyHeld(_)),
        nl.


intro :-
        \+inMenu(_),
        logo,
        intro_msg.

outro :-
        \+inMenu(_),
        nl, nl, outro_msg, nl, nl, halt.
