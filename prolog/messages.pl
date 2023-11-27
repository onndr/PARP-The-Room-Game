logo :-
        nl,
        writeln("  _______ _    _ ______   _____   ____   ____  __  __ "),
        writeln(" |__   __| |  | |  ____| |  __ \\ / __ \\ / __ \\|  \\/  |"),
        writeln("    | |  | |__| | |__    | |__) | |  | | |  | | \\  / |"),
        writeln("    | |  |  __  |  __|   |  _  /| |  | | |  | | |\\/| |"),
        writeln("    | |  | |  | | |____  | | \\ \\| |__| | |__| | |  | |"),
        writeln("    |_|  |_|  |_|______| |_|  \\_\\\\____/ \\____/|_|  |_|"),
        nl. 


menu_msg :-
        writeln("Choose an option:"),
        writeln("start.         - start the game"),
        writeln("help.          - check possible actions                - ONLY AVAILABLE IN-GAME"),
        writeln("credits.       - check authors' information            - ONLY AVAILABLE IN THE MENU"),
        writeln("halt.          - quit the game (progress will not be saved)").    


credits_msg :-
        nl,
        writeln("by:"),
        writeln("Gamalii Andrii            (323665)"), 
        writeln("Grabowski Piotr           (304262)"), 
        writeln("Niezabitowski Jakub       (304082)"), 
        nl, nl,
        writeln("Type 'back.' to get back to the menu."),
        nl.


intro_msg :-
        nl,
        writeln("  *Dring, dring, dring…*"),
        nl,
        writeln("      >Ugh…Where the hell am I?…What's going on?"),
        nl,       
        writeln("  A man wakes up to the sound of a ringing phone. Still a bit nauseous he rubs his eyes but the darkness doesn't go away."),
        writeln("  He has no idea where he is nor how he got here. All he sees is darkness. He blindly checks his surroundings to find a long, metal tube."),
        writeln("  It was a flashlight. Fortunately, the battery was still working. He sat on the couch he woke up on and turned the flashlight on."),
        writeln("  A beam of light unveiled a dark, creepy room filled with just a few pieces of furniture."),
        writeln("  Right next to him, on his left, there was a small armchair. Judging by its look no one sat in there for a very long time."),
        writeln("  Across the room he saw a chest of drawers, a dirty aquarium and a disturbing painting of a crying woman hung up on the wall."),
        writeln("  On the floor there was an old, dirty carpet."),
        nl,
        writeln("      >Where am I?...What is this place?"),
        nl,
        writeln("  He asked himself and went silent for a second as if he was waiting for an answer."),
        writeln("  The phone on his right kept ringing. The man looked at the phone and got up."),
        writeln("  He started searching his pockets and found an old key and a diary with his name on it."),
        nl,
        writeln("      >What's this?...and what is this place?...AND WHO THE HELL KEEPS CALLING?"),
        nl, nl.


death_msg :-
        nl,
        writeln("  All of a sudden the battery died. The man was drowned in darkness and silence. That's the end of a road for a man like him."),
        nl,
        writeln("  GAME OVER - Thanks for playing!").


changeBattery_msg :-
        writeln("  The flashlight started to blink. The battery was almoast dead. The man reached to his pocket for a new battery."),
        writeln("  Once he found one he smoothly changed the battery and the flashlight started working again. He looked at it and said:"),
        nl,
        writeln("      >That should help...").


walk_msg :-
        writeln("  The wooden floor creaked as the man took another step in this creepy room.").

/* Messages as the effect of perfoming actions in different rooms */
/* msg(room, action/event, msg_text)  */

msg(2, reachIntoAquarium, "  As the man's hand delved into the cool waters of the aquarium, his fingers brushed against something unexpectedly solid. Clasped between his fingers, he pulled out a key, dripping with secrets as much as water.").
msg(2, breakAquarium, "  With a resounding crash, the aquarium shattered, revealing its true secret. Amongst the shards and spilled water, there lay a key, once submerged, now glaringly conspicuous.").

msg(3, takeDownPainting, "  As the man removed the painting, a sudden chill gripped him. Behind the canvas, a key was hanging, as if it had been secretly watching from its concealed hideout all along.").

msg(4, pushChair, "  As the man pushed the chair aside, a clinking sound echoed hollowly off the bare floor. There, where the chair once stood, a key lay exposed, as if it had been waiting for the light of discovery.").

msg(5, sitInChair, "  The moment the man sat in the chair, a discomfort pricked at him. Shifting to find the cause, his hand brushed against a key, cunningly concealed in the chair's deceptive softness. Yes, it was the very key").

msg(6, takeDownPainting, "  As the man removed the painting, a sudden chill gripped him. Behind the canvas, a key was hanging, as if it had been secretly watching from its concealed hideout all along.").

msg(7, sitInChair, "  The moment the man sat in the chair, a discomfort pricked at him. Shifting to find the cause, his hand brushed against a key, cunningly concealed in the chair's deceptive softness. Yes, it was the very key").

msg(8, rollCarpet, "  Unfurling the carpet unveiled more than mere floorboards. Tucked beneath its fabric, a key lay silently, harboring secrets in its quiet vigil.").

msg(9, reachIntoAquarium, "  As the man's hand delved into the cool waters of the aquarium, his fingers brushed against something unexpectedly solid. Clasped between his fingers, he pulled out a key, dripping with secrets as much as water.").
msg(9, breakAquarium, "  With a resounding crash, the aquarium shattered, revealing its true secret. Amongst the shards and spilled water, there lay a key, once submerged, now glaringly conspicuous.").

msg(10, breakAquarium, "  With a resounding crash, the aquarium shattered, revealing its true secret. Amongst the shards and spilled water, there lay a key, once submerged, now glaringly conspicuous.").
msg(10, reachIntoAquarium, "  As the man's hand delved into the cool waters of the aquarium, his fingers brushed against something unexpectedly solid. Clasped between his fingers, he pulled out a key, dripping with secrets as much as water.").

msg(2, openDrawer, "The man found the battery among other suspicious items.").
msg(4, pushCouch, "He found the battery in the couch's previous place").
msg(5, openDrawer, "The man found the battery among other suspicious items.").
msg(6, rollCarpet, "He rolled the carpet and unexpectedly found battery.").
msg(8, openDrawer, "The man found the battery among other suspicious items.").
msg(10, layDownCouch , "He found the battery on the couch's previous place").

/* msg(_, layDownCouch, "   As the man reclined on the couch, a strange unevenness beneath the cushions caught his attention. Probing further, his hand encountered a cold, hard object. Pulling it out, he found a key, cunningly hidden."). */
/* msg(_, openDrawer, "  As the man cautiously opened the drawer, a glint of metal caught his eye. Nestled among the shadows, a key lay in wait, its presence almost mocking the emptiness around it."). */

msg(_, openDrawer, "  The man opened the drawer. There was nothing in it.").
msg(_, takeDownPainting, "  The man took down the painting. Yet he didn't find anything.").
msg(_, breakAquarium, "  The man broke the aquarium. Nothing interesting was in there.").
msg(_, reachIntoAquarium, "  The man reached his hand into the aquarium. He felt nothing.").
msg(_, openLeftDoor, "  The man tried to open the door. It was locked.").
msg(_, rollCarpet, "  The man rolled the carpet. Nothing interesting there.").
msg(_, sitInChair, "  The man sat in the chair. It was soft.").
msg(_, pushChair, "  The man pushed the chair. Bare floor... What did he expect to find?").
msg(_, layDownCouch, "  The man laid down on the couch. He didn't notice anything unusual.").
msg(_, movedNextRoom, "  The man moved next room. ").
msg(_, pushCouch, "  The man pushed the couch. Bare floor... What did he expect to find?").

msg(1, pickUpPhone, "  Ah, you're awake. Your choices have led you here, to this moment of truth. Will you stay trapped in this room forever, or will you sacrifice the one you love the most? The decision is yours. Remember, every choice has its consequence.").
msg(2, pickUpPhone, "  A painting that whispers of loss, and an aquarium that holds more than water. Within its depths, a key awaits, shadowed by remnants of forgotten stories. Will you seek what lies beneath the surface, where memories and secrets are?").
msg(3, pickUpPhone, "  In this room, you face the ultimate test of survival. The key lies behind the innocence of youth, but at what cost? Are you prepared to stain your hands with blood that's dear to you? Your answer will determine your fate.").
msg(4, pickUpPhone, "  This place holds more than meets the eye. Beneath the surface, beneath the dust and shadows, lies your path forward. But beware, the key is not the only thing hidden here. Listen to the whispers of the past and let the cries guide you. As the silence falls, the faint sound of a child's cry echoes.").
msg(5, pickUpPhone, "  The forbidden fruit beckons, guarded by a serpent of old. The key to your escape lies within its grasp. Will you dare to challenge the serpent and seize what everyone desires yet fears to touch? Choose wisely, for this battle is not just of strength, but of wits.").
msg(6, pickUpPhone, "  Sometimes, the truth we hide can cause the deepest pain, even tears of blood. Look beyond the facade, behind the image of sorrow, and you might find what you seek. Remember, not all is as it seems.").
msg(7, pickUpPhone, "  The truth is not always comfortable. Sometimes, it's a nagging presence, an uncomfortable sensation. The child's absence no longer troubles you, but its echoes might hold the key. Will you dare to embrace the discomfort to find your way?").
msg(8, pickUpPhone, "  What's the difference between a body and the truth? You can bury a body, but the truth... it always finds its way back to the surface. Look beneath what's hidden, under the layers of deception, for the key to your escape.").
msg(9, pickUpPhone, "  I know you tried to drown the truth, to submerge it in the depths of oblivion. But like all buried secrets, it resurfaces, gasping for air. Dive into the depths of your past actions to retrieve what you need.").
msg(10, pickUpPhone, "  This is where it all began. The first act of violence, the first fist raised. Thankfully, your hand wasn't made of glass. But now, you must shatter the barrier to your past to move forward. Be prepared, for some truths hurt more than others.").

outro_msg :-
        nl,
        writeln("  As the man pulled the knob he felt extreme cold. Chills went through his whole body. He opened the door all the way and saw nothing."),
        writeln("  The darkness was so overwhelming that even his flashlight was not enough to light up the room."),
        nl,
        writeln("      >I've come too far to give up now..."),
        nl,
        writeln("  Said the man and plunged into the darkness. The door behind him closed immediately. Now there was no turning back. The man went forward."),
        writeln("  Even though he could not see anything he had a feeling that he's not in the same room anymore. The silence was deafening."),
        writeln("  All of a sudden, a man heard light footsteps heading towards him. As he turned back the footsteps fell silent."),
        writeln("  He kept forward but could not shake the feeling that he's not alone here."),
        writeln("  It took him only a few more steps to start hearing creaking floor again. He nervously turned back again."),
        nl,
        writeln("      >Who's there!?!"),
        nl,
        writeln("  The man madly asked."),
        nl,
        writeln("      >I won't ask again..."),
        nl,
        writeln("  He didn't get an answer...but as he turned around he saw..."),
        nl,
        writeln("      >Emily? Charlie? Sarah?"),
        nl,
        writeln("  The man couldn't believe it. After all this nightmare there they were - his whole family standing right in front of him."),
        writeln("  He couldn't hold back the tears."),
        nl,
        writeln("      >I'm sorry, I never wanted to do that to you. I'm so sorry."),
        nl,
        writeln("  The man was sobbing but the guilt and sadness quickly turned into fear as he pointed his flashlight at his family."),
        writeln("  They were walking corpses. Still fairly fresh yet  started to deteriorate."),
        nl,
        writeln("      ~It's okay honey. Just come. Join us."),
        nl,
        writeln("  Said his 'wife' Emily. The man took a few slow steps backwards but fell to the floor. He started screaming as his 'family' was approaching him."),
        nl,
        writeln("      >Please, leave me alone!!!"),
        nl,
        writeln("  His screams were echoing the room. His 'family' wanted only one thing - for him to join them in the Afterworld."),
        writeln("  As the got close they started tearing him apart. The man was in agony but that was his end."),
        nl,
        writeln("TORN APART BY HIS OLD MISTAKES!!!"),
        nl, nl,
        writeln(" _______ _    _ ______   ______ _   _ _____  "),
        writeln("|__   __| |  | |  ____| |  ____| \\ | |  __ \\ "),
        writeln("   | |  | |__| | |__    | |__  |  \\| | |  | |"),
        writeln("   | |  |  __  |  __|   |  __| | . ` | |  | |"),
        writeln("   | |  | |  | | |____  | |____| |\\  | |__| |"),
        writeln("   |_|  |_|  |_|______| |______|_| \\_|_____/ "), nl.