"Lobsters On A Plane" by Ben and Jack

The story headline is "Parboiled crustaceans at 30,000 feet".
The release number is 1.
The story creation year is 2010.
The story genre is "Disaster".

The story description is "A flying tube of riveted aluminum the length of a football field, a swarm of angry carnivorous lobsters, a seething mass of frightened mortal passengers, and traitorous wizard you are sworn to deliver to your masters. Hope you brought a bib."

The intro-text is a text that varies.  Intro-text is "There is an actinic flash. The seat belt lamp illuminates. On the overhead speakers, the pilot reassures the passengers that the minor turbulence is no cause for concern. A second, more abrupt crash and the plane lurches. Air masks drop. An overhead baggage bin flies open, and lobsters pour out. Ignoring the passengers in your section, you let the food cart topple forward, the potatoes au gratin mixing with the fettuccine and mango compote. You climb towards the lavatory and throw the latch from 'vacant' to 'occupied.' The plane revolves slowly -- pushing you towards the wall -- even as the sudden loss of altitude makes you feel lighter.[paragraph break]".

Use full-length room descriptions, american dialect and the serial comma.

Book 1 Mechanics

Chapter No More Get All
[A more efficient no more get all, suggested by Radical Al:]

After reading a command:
	if the player's command includes "all":
		say "One thing at a time, please.";
		reject the player's command.
	
Chapter Rules Modifications

[Override inherent prudeness -- allow PC to kiss anything]
The block kissing rule is not listed in any rulebook.
The kissing yourself rule is not listed in any rulebook.

Chapter Time

Time-checking is an action applying to nothing.  Understand "time" as time-checking.

Carry out time-checking:
	[consider adding a check to make sure that a time-telling device is in the room, or that the player would reasonable know the time of day.]
	say "It is [time of day + 1 minute]."
		

Section Award the Escape

[from example 135]
A room can be scored or unscored.

Carry out going to an unvisited scored room:
	adjust points by 5.

Chapter Declare Global Variables

The last mentioned thing is a thing that varies.

Muted is a truth state that varies. Muted is false.


Chapter Class Definitions

A prop is a kind of thing. It is usually portable. [If props can be carried out of their initial room, they should not be in the room description, but appear in the room contents list.]

A furniture is a kind of supporter. It is usually scenery and fixed in place. [In general, furniture descriptions should be integrated into room descriptions.] 

Size is a kind of value. The sizes are large, medium, and small.

Everything has a size. The size of something is usually medium.

Everything has some text called texture. The texture of something is usually "".

Everything has some text called scent. The scent of something is usually "". 

A thing has some text called the inscription. The inscription of something is usually "".

A fardrop is a kind of backdrop.

Conclusion is a kind of value. The conclusions are drowned, lost and won.  

Endgame is a conclusion that varies. The endgame is usually won.

Chapter General Routines
		
[borrowed from example I7 documentation, example 424 Odins:]
After printing the name of something (called the target): 
    change the last mentioned thing [quotation mark][paragraph break][quotation mark]to the target.

To say is-are: 
    if the last mentioned thing is plural-named, say "are"; 
    otherwise say "is".

To say that-those:
	if the last mentioned thing is plural-named:
		say "them";[note, this only works in this dialect]
	otherwise:
		say "that".

To say it-they:
	if the last mentioned thing is plural-named:
		say "they"; 
	otherwise:
		if the last mentioned thing is a person:
			if the last mentioned thing is male:
				say "he";
			otherwise:
				say "she";
		otherwise:
			say "it".
			
To say pronoun-accusative:
	if the last mentioned thing is plural-named:
		say "them";
	otherwise:
		if the last mentioned thing is a person:
			if the last mentioned thing is male:
				say "him";
			otherwise:
				say "her";
		otherwise:
			say "it".

To say (regular verb - some text) in correct agreement:
	say "[regular verb][if the last mentioned thing is not plural-named]s".


Chapter Adjust Points


To adjust points by (amount - a number):
	say "[bracket]Your score has just gone ";
	if amount is less than zero:
		say "down";
	otherwise:
		say "up";
	say " by [amount in words][close bracket][paragraph break]";
	change the score to the score plus amount.

Chapter Verbs

Helping is an action out of world. Understand "help" as helping.

Carry out helping:
	say "You make the sigil in the air with your wand...but nothing happens. You feel ."

Section Answering

Section Asking

Section Listening
[Listen is implemented through insteads. Override this general instead rule with more specific ones as needed]

Instead of listening:
	pick a phrase from the Table of Ambient Noise;
	say ".";
	[to avoid conflicting with some other sound-generating random event]
	change the block stage business flag to true.
	
Table of Ambient Noise
times-used		verbage
0			"You hear yourself breathing"


Section Looking Under

Instead of looking under the noun:
	try searching the noun instead.
	
Section Looking

Understand "look [a visible thing]" as examining.
['Look outside' or 'look stool' should work.]
		
Section Putting

Understand the command "place" as "put".

Section Reading
		
Understand the command "read" as something new. Reading is an action applying to one thing. Understand "read [a thing]" as reading.

Check reading:
	If the noun is a man:
		say "You've never been good at reading people." instead;
	otherwise if the inscription of the noun is "":
		say "That's not something you can read." instead.
			
Carry out reading:
	say the inscription of the noun;
	say paragraph break.
	
[
Section Showing

Rule for reaching inside a room when the current action is showing:
	allow access.
	
Instead of showing something (called the thingie) to a person (called the observer):
	if the observer is:
		-- bob:
]

Section Smelling
	
[Like listening, smelling is performed through instead rules. The generic smell rule tracks bad smells, which decay over time.]

[
Section Talking

Talking is an action applying to one thing. Understand "talk to [something]" as talking.

Rule for reaching inside a room when the current action is talking:
	allow access.

Check talking:
	if the noun is not a person:
		say "People will say you're odd if you make of habit of talking to [the noun]." instead.
		
Carry out talking:
	say "[lame talk]".
	
To say lame talk:
	say "You can ASK someone ABOUT something or SHOW something TO someone."
	]
	
Section Telling

	
Section Touch
[Touching is implemented through an after rule, which is nice in terms of making use of existing relationships about whether something is touchable or not. If an item has a texture attribute, this rule makes use of it.]

Instead of touching a fardrop:
	say "[The noun] is too far away to touch."

After touching something (called the item):
	if the item is the player:
		say "You feel normal. Nothing out of the ordinary, really.";
	otherwise:
		let the regverb be "feel";
		if the texture of the item is "":
			let the T be "[one of]unremarkable[or]as you'd expect[or]like [it-they] should[or]normal[in random order]";
		otherwise:
			let T be the texture of the item;
		if the item is part of the player:
			say "Your";
		otherwise:
			if the item is not proper-named:
				say "The";
		say " [item] [the regverb in correct agreement] [T]."
	
[So many things are smooth and possibly metallic that we'll indulge in this petty optimization. Or, at least, I think it is an optimization.]
To say smooth:
	say "smooth".
	
To say metallic:
	say "[smooth] and metallic". 
	
Section Using


Section Xyzzying

Xyzzying is an action applying to nothing.  Understand "xyzzy" as xyzzying.

The xyzzy-flag is a truth state that varies. The xyzzy-flag is false.

Carry out xyzzying:
	if the xyzzy-flag is false:
		say "Something arcanes happens, or so you think.";
		now the xyzzy-flag is true;
	otherwise:
		say "Absolutely nothing happens.".
		

Chapter General Insteads

Chapter Not Ready For Prime Time - Not for release

Section Muting

[To reduce the clutter during debugging; suppreses stage business]
Muting is an action out of world. Understand "mute" as muting.

Carry out muting:
	say "[bracket]Mute[if muted is true]Off[otherwise]On[end if][close bracket][line break]";
	if muted is true:
		change muted to false;
	otherwise:
		change muted to true;
	
Chapter Initialize

The maximum score is 100. [TODO:  change this later]

When play begins:
	say the intro-text;
	change the time of day to 09:00 AM;
        	change the left hand status line to "[location]";
        	change right hand status line to "Score: [score]/[maximum score]";
			try silently switching score notification off;
			[puts the onus on us to display messags about score updates]
		[choose row with a left of " P = Previous" in the Table of Deep Menu Status;
	Need this until parchement is patched to accomodate the default "ENTER"
	change right entry to "SPACE = Select".]

After printing the banner text:
	say "Type [quotation mark]help[quotation mark] for instructions.[paragraph break]";

	
Chapter Every Turn

Every turn:
	[avoid penalizing time for non-actions, a nuance]
	if the current action is taking inventory or the current action is looking:
		change the time of day to 1 minute before the time of day;
		[stage business]
	if muted is false:
		Consider the stage business rules;
	[unblock stage business for next turn]
	Change the block stage business flag to false.
		
Section Phrase Picker
[To select a canned phrase from a table, choosing randomly amongst the less frequently said phrases. Tables need at least two entries.]

To pick a phrase from (source - a table-name):
	let R be a number;
	sort the source in times-used order;
	repeat with N running from 2 to the number of rows in the source:
		change R to N;
		if times-used in row N of the source is greater than times-used in row 1 of the source, break;
	if R is not the number of rows in the source:
		decrease R by one;
	let T be a random number between 1 and R;
	choose row T in the source;
	increase the times-used entry by one;
	say "[verbage entry]".

Section Stage Business

[Set the block stage business flag to suppress stage business at the end of that turn sequence -- helpful for scenes with long dialogue and descriptions. To make something not come up until at least one cycle through, change the times-used to "1" in the table]

The block stage business flag is a truth state that varies. The block stage business flag is false.

The stage business rules is a rulebook.

The endgame block stage business rule is listed first in the stage business rules.

This is the endgame block stage business rule:
	if the denouement is happening or the finale is happening:
		the rule succeeds.

The block all stage business rule is listed after the endgame block stage business rule in the stage business rules. 

This is the block all stage business rule:
	if the block stage business flag is true:
		the rule succeeds.
		
The block stage business while-raising the stakes rule is listed after the endgame block stage business rule in the stage business rules.

This is the block stage business while-raising the stakes rule:
	if disaster strikes is happening and the player is not in Limbo:
		increase the stakes by one;
		if the stakes is:
			-- 2: say "Obviously, someone from the KOVYN got wind of Meretzko's presence on this flight. Apparently, you guessed wrong about them wanting to recover him alive."; 
				the rule succeeds;
			-- 3: say "Lobsters scuttle along the aisle, between seats, provoking screams of fear from the crash survivors.[paragraph break]How clichéd. This may have worked back in the day, but come on. Carnivorous lobsters? Have they no decency?";
				the rule succeeds;
			-- 4: say "You had worked your way through most of the coach and business class, but still hadn't located High Wizard Meretzko. You had assumed that he would not be so obvious as to fly first class, but this is not a good day for your assumptions."; 
				the rule succeeds;
			-- 6: say "Two years of deep cover as a stewardess. A bloody stewardess! Waiting hand and foot on these sink holes of attentions. And for what? The biggest failure of your career. If you lose Meretzko, it will be a death blow to The Circle, and nothing will be able to stop the KOVYN and their langustinian minions.";
				the rule succeeds.
			
The block stage business while-looking rule is listed after the block stage business while-raising the stakes rule in the stage business rules.

This is the block stage business while-looking rule:
	if the current action is looking:
		the rule succeeds.
	
The Environmental stage business rule is listed last in the stage business rules.

This is the Environmental stage business rule:
	if a random chance of 7 in 20 succeeds:
		pick a phrase from the Table of Environmental Stage Business;
		say ".";
		the rule succeeds.
		
Table of Environmental Stage Business
times-used		verbage
0		"You hear the clickety-clack of angry claws somewhere nearby"
0		"Some water drips onto your head from a ceiling leak somewhere"
0		"Distant screams echo from elsewhere;  the cracking of human skulls by vorpal claws"
0		"The plane shudders, then angles downward just a bit more"
0		"The lobsters scuttle and screetch in malicious glee"
0		"The smell of malevolent arthropods burns your nose"
0		"Sobs of the still-living reach your ears;  moans you cannot bear to hear"
0                                                  		"The cockpit radio crackles to life for a moment, burps static, then falls silent"
0		"The hull creaks and groans from stress.  You wonder how much time you have"
0		"A wave of nausea hits you;  the smell of human blood and melted butter"
0		"Salt water rolls down your cheek and into your mouth"
0		"How did the KOVYN located this plane so quickly?  This is way above your pay grade"
0		"Why lobsters?  Why now?  It's too much for one Retriever to handle"
0		"Time is running out.  You can hear them splashing closer"
0		"You grumble to yourself.  Perhaps this whole lobster stunt is karmic revenge for last Friday's surf-and-turf dinner"
0		"They say a man can bleed to death in three minutes, if sliced on the leg just so.  Let's not verify this"
0		"Snap, crackle, pop!  The big ones are molting.  And advancing."
0		"A lobster scuttles towards your foot, but you quickly punt it back"

Book 2 Places

Chapter Bathroom

The Lavatory is a room. The description of the lavatory is "[one of]A claustrophobic vertical coffin, lit by blue-tinted fluorescent bulbs and smelling of disinfectant. A uselessly small vestigial sink, a unisex toilet, and a mirror are the only furnishings in the room[or]A tight, poorly lit, aircraft bathroom. Ordinarily, a welcome refuge from the demanding mortal customers who need to use planes to move from one place to another, but now a safe haven from the carnivorous lobsters infesting the plane[stopping]. The [list of fixed in place things in the lavatory] are unremarkable. Your uncanny (yet invariably useful) sense of direction tells you that the tail compartment of the plane is to the west." Understand "bathroom" as the lavatory.

The sink is a container in the lavatory. The sink is fixed in place. The description of the sink is "A small metal bowl with two knobs, marked [quotation mark]hot[quotation mark] and [quotation mark]cold[quotation mark], and a faucet. The sink is bone dry." The cold knob is part of the the sink. The hot knob is part of the sink. The faucet is part of the sink. The carrying capacity of the sink is one.

Instead of inserting something (called the item) into the sink:
	if the item is not small:
		say "[The item] [is-are] too big to fit in the undersized sink.";
	otherwise:
		continue the action.

Instead of switching on or switching off something that is part of the sink:
	say "[sink-disabled]."
	
Instead of switching on or switching off the sink:
	say "[sink-disabled]."
	
To say sink-disabled:
	say "As a security precaution, the TSA has disabled in-flight use of devices involving water. If you wash your hands, the terrorists win."
	
The mirror is a furniture in the lavatory. The description of the mirror is "A small, slightly smeared mirror. In it, you see your tired self, worn down by this loathesomely boring (until the lobsters) assignment."

The toilet is a furniture in the lavatory. The description of the toilet is "A vaguely seat-like bump on the wall of the bathroom. The hole leads nowhere, of course, as toilets were banned on planes years ago as a security precaution." The hole is part of the toilet. The hole is a container. The carrying capacity of the hole is 1. Understand "unisex" as the toilet.

Instead of inserting something into the hole:
	say "Yech."

The bathroom door is a door. The bathroom door is openable and closed. The bathroom door is west from the lavatory and east from Tail Section. The description of the door is "A folding door, with a small latch." 

The latch is part of the bathroom door. The latch can be vacant or occupied. The description of the latch is "The latch reads [if the latch is vacant]VACANT[otherwise]OCCUPIED[end if]."

Instead of opening the bathroom door when the latch is not vacant:
	say "You rattle the door, but it won't open."
	
Instead of opening the latch:
	if the latch is vacant:
		say "The latch is not engaged.";
	otherwise:
		say "The latch slips to the side.";
		now the latch is vacant.
		
Instead of pushing or pulling the latch:
	say "You yank back and forth on the latch, when you realize that what you really want to do is just open or close it. Clearly, your mind is too powerful for the trivial devices that clutter the meaningless existence of mortals."

Chapter Tail Section

The Tail Section is a room.  The description of the tail section is "A cramped storage section in the rear of the plane, where, if you remember correctly, some emergency supplies are supposed to be stored. The floor slopes upward to the coach section. The emergency escape hatch is inset into the wall." The tail section is down from Coach.

The equipment bin is a closed openable container in the tail section. The description of the equipment bin is "A carbon-composite module built into the side panel of the plane. The bin is labeled [quotation mark]Emergency Equipment[quotation mark]." 

After opening the equipment bin for the first time:
	say "As you open the equipment bin, you wonder if you should have played the role of flight attendant more carefully. Following the standard procedures of the airline would have meant that you would have made sure that the emergency equipment bin was full of, well, emergency equipment.[paragraph break]A small piece of paper lies on the bottom of the bin."
	
The memo is a prop in the equipment bin. The description of the memo is "A handwritten note on TRANSGLOBAL AIRWAYS stationary." The inscription of the memo is "Flight crew: please be sure that this compartment contains the following items prior to departure:[paragraph break]* First Aid Kit[line break]* Flare Gun[line break]* Emergency Radio[line break]* Crustacean Repellent[line break]* Mountain Climbing Gear[line break]* Shark Defense Cage[line break]* Personal Jet Pack[line break]* Entertainment System, Mark V". Understand "small" and "paper" as memo.

The emergency escape hatch is a furniture in the Tail Section. The emergency escape hatch can be open. The emergency escape hatch is closed. Understand "exit" as the emergency escape hatch. "A sturdy curved door mounted on heavy internal hinges. For emergency use only, as it says."

Instead of opening the emergency escape hatch:
	say "The exit only pushes outward, but thousands of tons of ocean water hold it closed against your feeble attempts."
	
After magic-pushing the emergency escape hatch:
	change the endgame to drowned;
	end the game in death.

Chapter Coach 

Coach is a room. The description of coach is "Row after row of tightly packed seats, with minimal padding, sharp corners, and ratty seat belts. Back in Greek times, there would have been three tiers of such seats, each with an oar and chains. Ah, for the old days." Coach is down from the galley.

The movie screen is a furniture in the coach. The description of the movie screen is "A dirty gray panel mounted on the dirtier and grayer panels of the coach section. Movies are shown here to take people's minds off how very unpleasant it is to fly coach."

The cart is a supporter in coach. The cart can be jammed. The cart is jammed. The description of the cart is "A food cart, meant to be pushed Sisyphus-fashion up and down the aisles of this plane until your penance is complete.[if the cart is jammed] It appears to be tilted and solldly wedged against the seats, unmoving.[end if]"  

Instead of going up when the player is in coach:
	if the cart is in coach and the cart is jammed:
		say "The cart is wedged across the aisle, blocking your path. You can't get around it, nor will it budge.";
	otherwise:
		continue the action.


Chapter Galley

The Galley is a room. The description of the galley is "A stainless steel compartment between the self-absorbed slobs in business class up ahead and the unwashed masses and screaming babies in coach down below." The Galley is down from the business section.

The counter is a furniture in the galley. The description of the counter is "A brushed aluminum counter where you have prepared countless plasticky meals for unwitting passengers."

The microwave is a container. The carrying capacity of the microwave is one. The microwave can be open. The microwave is closed. The microwave can be switched on. The microwave is switched off. The microwave is fixed in place. The scent of the microwave is "like buttered popcorn". The description of the microwave is "A brown commercial microwave that has seen more than its fair share of activity over the years. There is a small red sticker on the microwave."

The sticker is part of the microwave. The description of the sticker is "A picture of a black cat. There is a blue circle around the cat, and a diagonal slash extends through the cat."

Chapter Business Section

The Business Section is a room. The description of the business section is "Rows of seats that are spaced the way coach seats used to be spaced about five years ago. It is enough to make the gullible mortals feel superior to those in coach, while still stripping them subtly of their humanity. It is your favorite section of the plane.[paragraph break]Northward, a narrow, spiral staircase upwards to the first class section. Just above the business section is the bulkhead that leads to the cockpit." The business section is down from the bulkhead.

Chapter Cockpit

The Cockpit is a room. The cockpit is up from the bulkhead. The description of the cockpit is "A cone-shaped room bristling with those blinking lights and other technical knick-knacks that mortals consider fancy."

The bulkhead is a door. The bulkhead is up from the business section. The bulkhead is closed and locked.

The yoke is a furniture in the cockpit. The description of the yoke is "A semicircular steering wheel mounted on a stick. You have seen the pilot move it back and forth to steer the direction of the plane."

The control panel is a furniture in the cockpit. The description of the control panel is "A flat U-shaped panel that wraps around the forward section of the aircraft and sports all kinds of controls, dials, switched and other doo-hickeys."



Chapter Staircase

The Staircase is a door. The staircase is north from the business section. The description of the staircase is "A twisty, winding staircase connects the upper class deck with the more mundane decks below."

Chapter First Class

First Class is a room. The description of first class is "A posh, nightclub-like bubble on the front of the plane. Through the transparent ceiling, green light filters down and you can see fish swimming by."

The billiards table is a furniture in first class. The description of the billiard table is "A hefty wood-paneled table, covered in dark green felt.[paragraph break]With the plane tilted at this angle, however, the balls and pool cues must have rolled off into the recesses of the room."

Meretzko is a man in first class. The description of Meretzko is "A tall man, with an intelligent look about him." Understand "wizard" as Meretzko.

Chapter Limbo

[A place for offstage stuff]

Limbo is a room. 


Book 3 Characters

Chapter Protagonist

Chapter Sidekick

Chapter Antagonist

Chapter Extras

Book 4 Tables and Boxed Text

Section Tables

Chapter Menus

Section Hints
[Note: In thinking about hint activation, remember that the set up of the extension is such that once a hint is deactivated, the activation rule will not reset it. The table row is deleted, so one doesn't need to worry about recurrent activation of a hint. Still, it's good to make the activation rules specific.]

Chapter Default Messages

Section Boxted Text

Book 5  Scenes
 
Chapter Introduction

Introduction is a scene. Introduction begins when play begins. 

The player is in the lavatory. The description of the player is "Four-hundred and eighty-six years, and you look like a supermodel. That's partly due to your inherently superior breeding, and partly attributable to the plastic surgery, cybernetic implants and magical enhancements all courtesty of The Circle."

Chapter Disaster Strikes

Disaster Strikes is a scene. Disaster strikes begins when the player is in the Tail Section.

The stakes is a value that varies. The stakes is zero.

When disaster strikes begins:
	say "The plane slams into the ocean, skipping like a rock, before sinking like one.[paragraph break]The aft section of the plane pitches downward, flipping you sideways. Water jets into the cabin from seams that are not as tight as you had hoped. Moments later, you are ankle-deep in frigid salt water."
	
	
Chapter Denouement

[using enclosure here because climbing the stool means that Rick is not in the jail cell]
Denouement is a scene. 
	
Chapter Finale

The Finale is a scene. 

Rule for printing the player's obituary:
	if the endgame is:
		-- drowned:
			say "A tidal bore of cold ocean water slams into the cabin like pile driver, smearing you on the opposite wall like a toddler with craypas in a heat wave.";
		-- lost:
			say "*** LOST ***";
		-- won:
			say "*** WON ***".
						
Rule for amusing a victorious player:
say "Amusing stuff".


Book 6 Magic


Chapter Magic Wand

The magic wand is carried by the player.  The description of the wand is "[one of]Your wand is a mid-19th century Celtic model, passed down to you on your Father's side (who used it to conjure food during the great Irish Potato Famine). It appears to be broken in the disaster, though; you'll have to take a second look.[or]Once capable of casting nearly any class-N spell, the spell-selector switch seems utterly broken. You're unsure what will happen when you USE WAND ON SOMETHING.[stopping]".  Understand "wand" as the magic wand.

Wanding at is an action applying to one visible thing.  Understand "Use wand on [something]" as wanding at.

Check wanding at:
	if the player carries the wand:
		continue the action;
	otherwise:
		say "You don't have the magic wand in hand.".


The player wears some high-heeled shoes. The description of the shoes is "Shiny, stewardess shoes." The shoes are plural-named. The indefinite article of the shoes is "a pair of".[TODO]

[The wand basically cycles through all known spells each time it is used -- it initiates one of the spell verbs. The spells are a circular queue.]
	
The wand counter is a number that varies.  The wand counter is 0.
	
Carry out wanding at something (called the target):
	Say "The wand glows with energy as you flick it... [no line break]";
	if the remainder after dividing the wand counter by 5 is:
		-- 0:  [freeze]
			say "and you quickly recognize the FREEZE spell, which magically holds things fixed in place.[paragraph break]";
			try freezing the target;
		-- 1:  [push]
			say "and you witness the PUSH spell, which sends things to limbo.[paragraph break]";
			try magic-pushing the target;
		-- 2:  [summon cod]
			say "and you realize it's the BALANCE spell, which summons elements to even out a situation.[paragraph break]";
			try cod-summoning;
		-- 3:  [knock]
			say "and you discover it's the JIGGER spell, which un-jams things.[paragraph break]";
			try unjamming the target;
		-- 4: [pop]
			say "and you watch the POP spell surface, which returns things from limbo.[paragraph break]";
			try magic-popping the target;
	increase the wand counter by one.
	

Chapter Spells

Section Freeze

A thing can be frozen.  Things are usually not frozen.

The currently-frozen-object is a thing that varies.  The currently-frozen-object is the statuette.

Freezing is an action applying to one thing.

Carry out freezing something (called the target):
	if the target is the player:
		say "Luckily, every novice mage learns to repel this effect in first year of academy.  The energy dissipates around you.";
	otherwise:
		say "A bolt of icy-blue lightning shoots from the wand towards [the target], freezing [pronoun-accusative] instantly.[paragraph break]";
		now the target is frozen;
		now the currently-frozen-object is not frozen;
		if the currently-frozen-object is visible:
			let localverb be "thaw";
			say "In response, [the currently-frozen-object] [localverb in correct agreement] out.";
		now the currently-frozen-object is the target;

Instead of doing something with something (called the item):
	if the item is not frozen:
		continue the action;
	otherwise if the current action is examining:
		let localverb be "appear";
		say "[The item] [localverb in correct agreement] to be frozen.";
	otherwise if the current action is smelling or dropping:  [or other verbs...]
		continue the action;
	otherwise:
		let localverb be "appear";
		say "You can't do that;  [the item] [localverb in correct agreement] to be frozen, and thus impervious to all interaction.".
	


Section Push-Pop

Limbo is a room. "[if unvisited]Uhoh. Not good.[paragraph break][end if]Grey mists swirl around you. You are lost somewhere between universes."

The banana is a prop in Limbo.  The description of the banana is "Quite golden."

The statuette is a prop in Limbo.  The description of the statuette is "It abstractly resembles a tornado of some sort.  On the bottom is some intricate inscription." The inscription of the statuette is "Welcome to Limbo!  You may be the unlucky target of an angry mage, but if you believe you arrived here in error, please don't hesitate to file a 951-EZ-5C report with your local dimensional constabulary. Assuming you have a popping spell to exit this place, that is. Have a great day."

Every turn when in Limbo:
	change the block stage business flag to true.

The limboed-thing is a thing that varies.  The limboed-thing is the banana.

Magic-pushing is an action applying to one thing.

The players-popped-location is a room that varies.

Carry out magic-pushing something (called the target):
	if the target is a door:
		let localverb be "flicker";
		say "[The target] [localverb in correct agreement] a moment, but nothing else happens.";
	otherwise:
		if the target is the player:
			say "You feel sick as the world suddenly turns inside-out.";
			now the players-popped-location is the location;
		otherwise:
			let localverb be "blink";
			say "[The target] suddenly [localverb in correct agreement] out of existence!";
		move the target to Limbo;
		now the limboed-thing is the target.

Magic-popping is an action applying to one thing.

Carry out magic-popping:
	if the limboed-thing is in Limbo:
		if the limboed-thing is the player:
			say "Your head reels as everything turns outside-in again.";
			move the player to the players-popped-location;
		otherwise:
			let localverb be "appear";
			say "Out of nowhere, [the limboed-thing] suddenly [localverb in correct agreement]!";
			move the limboed-thing to the location;
	otherwise:
		say "Nothing happens.".


Section Cod

The cod is an animal.  The description of the cod is "A three-foot long, reddish-brown predatory fish. You guess it weighs at least 25 pounds, and it appears fairly mean and hungry. Crustaceans are its main food."  The cod is in Limbo.

Instead of eating the cod, say "Now is not the time for sashimi. Besides, these guys are endangered."

Instead of taking the cod, say "You're sure it would snap your fingers off if you tried!".

Cod-summoning is an action applying to nothing.

Carry out cod-summoning:
	if the cod is in the location:
		say "The cod sparks a bit, but nothing happens.";
	otherwise:
		move the cod to the location;
		say "You hear a strange tingling sound; a large cod fish suddenly materializes, swimming in the water around your ankles."


Section Unjamming

A thing can be jammed.  Things are usually not jammed.

Unjamming is an action applying to one thing.

Carry out unjamming something (called the item):
	let localverb be "vibrate";
	if the item is the player:
		say "This spell certainly won't get you out of this predicament.";
	otherwise if the item is not jammed:
		say "[The item] [localverb in correct agreement] a bit, but nothing else happens.";
	otherwise:
		let localverb2 be "come";
		say "[The item] [localverb in correct agreement] for a moment, and suddenly [localverb2 in correct agreement] unstuck!";
		now the item is not jammed.
		
