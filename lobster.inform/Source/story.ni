"Lobsters On A Plane" by Ben and Jack

The story headline is "Parboiled crustaceans at 30,000 feet".
The release number is 3.
The story creation year is 2010.
The story genre is "Disaster".

The story description is "A flying tube of riveted aluminum the length of a football field, a swarm of angry carnivorous lobsters, a seething mass of frightened mortal passengers, and a renowned High Wizard who you sworn to protect. Hope you brought a bib."

The intro-text is a text that varies.  Intro-text is "There is an actinic flash. The seat belt signs illuminate. On the overhead speakers, the pilot mechanically reassures the passengers that the minor turbulence is no cause for concern. A second, more abrupt crash and the plane lurches. Air masks drop. An overhead baggage bin flies open, and lobsters pour out. Ignoring the passengers in your section, you let the food cart topple forward, the potatoes au gratin mixing with the fettuccine and mango compote. You climb towards the lavatory and throw the latch from 'vacant' to 'occupied.' The plane revolves slowly -- pushing you towards the wall -- even as the sudden loss of altitude makes you feel lighter.[paragraph break]".

Use scoring, full-length room descriptions, american dialect and the serial comma.

Release along with cover art ("A lobster surfs a jumbo jet above Boston") and a file of "Walkthrough" called "walkthrough.txt".



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

[To allow pushing up and down:]
The can't push vertically rule is not listed in any rulebook.

Chapter Time

Time-checking is an action applying to nothing.  Understand "time" as time-checking.

Carry out time-checking:
	[consider adding a check to make sure that a time-telling device is in the room, or that the player would reasonable know the time of day.]
	say "It is [time of day + 1 minute]."
	
Chapter Logically Negate

To logically negate (the boolean - a truth state):
	if the boolean is true:
		now the boolean is false;
	otherwise:
		now the boolean is true.
		

Section Award the Escape

[from example 135]
A room can be scored or unscored.

Carry out going to an unvisited scored room:
	adjust points by 5.

Chapter Declare Global Variables

The last mentioned thing is a thing that varies.

Muted is a truth state that varies. Muted is false.

Debug mode is a truth state that varies. Debug mode is false.
[This relates to the fake debugging verbs that are used.]

Rules-active is a truth state that varies. Rules-active is false.

Greeted-flag is a truth state that varies. Greeted-flag is false. 
[Wanted to make this a property of Steve Meretzky, but having compiler issues doing so.]

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

Everything can be jammed. Things are usually not jammed.

Everything can be immune. Things are usually not immune.
[immune items cannot be magic-pushed]

A room can be either wet or dry. A room is usually dry.

The blocked direction is a direction that varies. The blocked direction is usually up.

Chapter General Routines
		
[borrowed from example I7 documentation, example 424 Odins:]
After printing the name of something (called the target): 
    now the last mentioned thing [quotation mark][paragraph break][quotation mark]is the target.

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
	now the score is the score plus amount.

Chapter Verbs

Helping is an action out of world. Understand "help" as helping.

Carry out helping:
	say "You make the sigil in the air with your wand... but nothing happens. It's like there is no resistance at all in the ethereal fabric. You are cut off. On your own.[paragraph break]Except for the carnivorous lobsters."

Section Answering

Section Asking

Instead of asking someone about something:
	say "[Talking is Cheaper]."
	
Section Attacking
[effectively, just replaces the existing library message with a slightl less banal one]

Instead of attacking:
	say "Violence may not be the answer, but it feels good."

Section Attacking it with

Attacking it with is an action applying to two things. Understand "attack [something] with/using [something preferably held]" as attacking it with.

Understand "hit [something] with/using [something preferably held]" as attacking it with.

Check attacking it with:
	if the player does not carry the second noun:
		try taking the second noun.

Carry out attacking it with:
	if the second noun is not the banjo:
		now the last mentioned thing is the second noun;
		say "[The second noun] [is-are] not a very effective weapon. [The noun] is not impressed.";
	otherwise:
		try attacking the noun.

Section Fake Debugging

Treeing is an action applying to nothing. 

Carry out treeing:
	let N be 44;
	say "compass (6)[line break]
  the north[line break]
  the northeast[line break]
  the northwest[line break]
  the south[line break]
  the southeast[line break]
  the southwest[line break]
  the east[line break]
  the west[line break]
  the up[line break]
  the down[line break]
  the inside[line break]
  the outside[line break]
(LibraryMessages) (7) [line break]
(darkness object) (8) [line break]
(Inform Parser) (9) [line break]
(Inform Library) (10) [line break]
(property_numberspace_forcer) (11) [line break]
(ValuePropertyHolder) (31) [line break]";
	say "[Location] ([N])[line break]";
	repeat with outeritem running through things in the location:
		say "  [outeritem][line break]";
		increase N by one;
		repeat with inneritem running through the things enclosed by the outeritem:
			say "    [inneritem][line break]";
			increase N by one;
	repeat with J running from 1 to a random number between 5 and 10:
		pick a phrase from the Table of Fake Places;
		say " ([N]) [line break]";
		increase N by one;
		repeat with K running from 1 to a random number between 1 and 5:
			say "  ";
			pick a phrase from the Table of Fake Furnishings;
			say line break;
			increase N by one.
		
Table of Fake Furnishings
times-used		verbage
0		"cantalope (half eaten)"
0		"shotgun"
0		"can of depilatory cream (empty)"
0		"garden weasel"
0		"extension cord"
0		"barbeque tongs"
0		"pail (empty)"
0		"small bird"
0		"anvil"
0		"Madagascar Dragon Tree"
0		"eight drachma"
0		"wad of chewing gum"
0		"fish tank tubing"
0		"men at work sign"
0		"dental floss"
0		"personal jet pack"
0		"ivory key"
0		"swivel-mount grommet adapter"
0		"ballista"
0		"corn cob pipe"
0		"rod of atomic devastation"
0		"kinky outfit"
0		"drink coasters"
0		"miniature pink umbrella"
0		"swizzle stick"
0		"pH paper"
0		"cocktail shaker"
0		"one time pad"
0		"accordion of gold"
0		"bobby pin"
0		"potion of Freakish Strength"
0		"Orcish pie"
0		"kitchen apron"
0		"ice cream scoop"
0		"bottle opener"
0		"ancient leather-covered book"
0		"can of beans"
0		"harmonica"
0		"Paving Stone of Good Intention"
0		"caving gear"
0		"Helmet of Total Information Awareness"
0		"escape pod"
0		"optical gyroscope"
0		"lasso"
0		"soap-on-a-rope"
0		"glaive"
0		"17th century Portugese blunderbuss"
0		"unicycle"
0		"crowbar"
0		"waffle iron"
0		"wedding ring"
0		"staple gun"
0		"irony detector"
0		"fuzzy dice"
0		"scroll of Rock to Cheese"
0		"device of warranty inactivation"
0		"potion of chicken splendor"
0		"lotion of petrification"
0		"mandolin of mango ripening"
0		"triangle of canine obedience"
0		"glockenspiel of prismatic monkey"
0		"bootlaces of trap detection"
0		"suspenders of disbelief"
0		"goggles of alchemy"
0		"earmuffs of stealth"
0		"leather breeches of etiquette"
0		"rune stones of recent acquaintance"
0		"beanstalk seeds"
0		"stovied totties"
0		"theatrical handcuffs"
0		"pith helmet"
0		"diving helmet"
0		"escargot forks"


Table of Fake Places
times-used	verbage
0		"Truck Stop"
0		"Aft Cargo Bay"
0		"Sheriff's Office"
0		"Changing Room"
0		"Copying Room"
0		"The Lodge"
0		"Locker Room"
0		"Underground Crypt"
0		"Aunt Murna's Apartment in Topeka"
0		"Death Star, Command Deck"
0		"The Gallows"
0		"Mineshaft"
0		"Lava Chamber"
0		"Abandoned Warehouse"
0		"Toyota Dealership"
0		"Sector 3, Quadrant A4"
0		"Driveway"
0		"Attic"
0		"Tundra"
0		"Goblin's Lair"
0		"The Garden"
0		"Footbridge"
0		"The Temple of Katallakh"
0		"Aix-la-Chapelle"
0		"Inner Sanctum"
0		"Bletchley Park, 1943"
0		"The Khan's Pleasure Suite"
0		"Ambassadorial Shuttle"
0		"Sound Booth One"
0		"Castle Ramparts"
0		"Trash-strewn Alley"
0		"Projector Room"
0		"Major Appliances"
0		"Ambulance"
0		"Alcove"
0		"Parlour"
0		"Corn Field"
0		"Workshop"

Gonearing is an action applying to nothing.

Carry out gonearing:
	say "Your teleport spell fizzles."

Purloining is an action applying to nothing.. 

Carry out purloining:
	say "You are too old-school for that -- purloining would offend your Lawful Good alignment. You resist the brief wave of kleptomania."

Showmeing is an action applying to nothing..

Carry out showmeing:
	say "Your powers of observation seem to have been affected by whatever spell hit the plane." 

Actioning is an action applying to nothing. 

Carry out actioning:
	say "[bracket]the actions action - succeeded[close bracket]."
	
Ruling is an action applying to nothing.  

Carry out ruling:
	If rules-active is true:
		now rules-active is false;
	otherwise:
		now rules-active is true.
		
Report Ruling:
	Say "Rules tracing now switched [quotation mark][if rules-active is true]on[otherwise]off[end if][quotation mark]. Type [quotation mark]rules[quotation mark] to switch it [if rules-active is true]off[otherwise]on[end if] again."
	
Table of Rulings
times-used	verbage
0		"don't mention things that haven't happened or aren't really likely to happen"
0		"don't mention things that could be disturbing or create anxiety"
0		"offer to write a paragraph about something, but don't really mean it"
0		"offer support to supporters, if they seem to need it"
0		"consider the moral alternatives versus the pragmatic outcomes"
0		"flip a coin to determine the ultimate fate of the character"
0		"ignore things that are difficult and just do the easy stuff"
0		"vague generalizations may have some non-specific effect or not"
0		"set pronouns to [one of]stun[or]vaporize[or]kill[or]decapitate[or]liquify[or]obliterate[or]exterminate[or]gender-neutralized[at random]"
0		"make snap judgement based on initial appearances"
0		"don't mention items that are at odds with your world view"
0		"spawn killer [one of]monkey[or]ninja[or]leprechaun[or]robot[or]pirate[or]toddler[at random] daemon"
0		"don't mention scenery if it is inconvenient"
0		"allow the player to do something that really shouldn't be permitted"
0		"check is in the mail"
0		"random waterfowl disambiguation"
0		"things that man should not know"
0		"instead of doing the right thing"
0		"ponder the imponderable"
0		"re-initialize self-destruct timer"
0		"random vapor pressure"
0		"ignite flammable liquids"
0		"determine why the ceiling is visible"
0		"don't mess with stuff that is beyond the ken of science"
0		"angels on head of pin must not exceed pin head capacity"
0		"conservation of energy"
0		"Pauli exclusion principle"
0		"Heisenburg uncertainty principle for objects other than cats"
0		"exclude objects that are not conceivable"
0		"defer resolution of circular logic"
0		"can't do that thing that you really wanted to do"


Scening is an action applying to nothing.

Carry out scening:
	say "Scene [apostrophe]Entire Game[apostrophe] playing (for [turn count] mins now)[line break]";
	repeat with N running from 1 to a random number between 2 and 4:
		say "Scene [apostrophe]";
		pick a phrase from the Table of Scenic Items;
		say "[apostrophe] playing (for [a random number from 1 to turn count] mins now)[line break]";
		

Table of Scenic Items
times-used		verbage
0					"Mrs. Harper meets the spider queen"
0					"Into the frying pan"
0					"Player death scene"
0					"Monkey is my uncle"
0					"Undersea kingdom"
0					"Invasion of the zombie surf dudes"
0					"Mandlebrot"
0					"Reinitialize"
0					"Alternate ending"
0					"Bridging dialogue"
0					"Something interesting"
0					"Filler"
0					"I wrote this at midnight"
0					"Escapades in g-minor"
0					"Always a woman to me"
0					"Thirty ways to die"
0					"Molybdenum is not edible"
0					"Passionate Nymph Intro"
0					"Gone Fishing"
0					"Up the creek"
	

After reading a command when the debug mode is false:
	let T be indexed text;
	let T be the player's command;
	if T matches the regular expression "^tree":
		try treeing;
		the rule succeeds;
	otherwise if T matches the regular expression "^gonear":
		try gonearing;
		the rule succeeds;
	otherwise if T matches the regular expression "^purloin":
		try purloining;
		the rule succeeds;
	otherwise if T matches the regular expression "^showme":
		try showmeing;
		the rule succeeds;
	otherwise if T matches the regular expression "^(action|actions)":
		try actioning;
		the rule succeeds;
	otherwise if T matches the regular expression "^(rule|rules)":
		try ruling;
		the rule succeeds;
	otherwise if T matches the regular expression "^(scene|scenes)":
		try scening;
		the rule succeeds.

Section Flushing

Flushing is an action applying to one thing. Understand "flush [something]" as flushing.

Check Flushing:
	if the noun is not the toilet:
		say "You can't flush [a noun]." instead;
	otherwise:
		say "The designers never anticipated that anyone would want to flush this toilet." instead.
		
Section Listening
[Listen is implemented through insteads. Override this general instead rule with more specific ones as needed]

Instead of listening:
	pick a phrase from the Table of Ambient Noise;
	say ".";
	[to avoid conflicting with some other sound-generating random event]
	now the block stage Business flag is true.
	
Table of Ambient Noise
times-used		verbage
0			"You hear yourself breathing"
0			"In the distace you hear singing"

Section Looking Under

Instead of looking under the noun:
	try searching the noun instead.
	
Section Looking

Understand "look [a visible thing]" as examining.
['Look outside' or 'look stool' should work.]

Section Navigating

Navigating is an action applying to nothing. Understand "port" or "starboard" or "aft" or "abaft" or "fore" as navigating.

Carry out navigating:
	say "You remember hearing all that fancy direction talk when you were training for this mission. Maybe you should have taken notes, but with your absolute sense of direction, you just couldn't be bothered to learn all that mortal jargon."

Section Opening

Understand "slide [something]" as opening.

Section Playing

[Override to play specific items]

Playing is an action applying to one thing. Understand "play [something preferably held]" as playing.

Carry out playing:
	say "You never learned how to play [the noun]."

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
	
Section Repairing

Repairing is an action applying to one thing. Understand "fix [something]" as repairing. Understand "repair [something]" as repairing.

Carry out repairing:
	say "You are a Guardian of the People's Republic of IF -- not a repairwoman. Besides, you always end up with more parts than you start."

Section Smelling
	
[Like listening, smelling is performed through instead rules. The generic smell rule tracks bad smells, which decay over time.]

Section Talking

SimpleTalking is an action applying to nothing. Understand "talk" as SimpleTalking.

Check SimpleTalking:
	say "[Talking is Cheaper]."

[Implement talking to specific objects by overriding]

Talking to is an action applying to one thing. Understand "talk to [thing]" or "talk [thing]" as talking to.

Check talking to:
	if the noun is the player:
		say "You mumble to yourself." instead;
	if the noun is not a person:
		say "Talking to [the noun] may be therapeutic, but don't expect an answer." instead.
		
Carry out talking to:
	say "[The noun] listens politely, but is too distracted by all the goings-on to really pay attention to you."
	
Section Telling

Instead of telling someone about something:
	say "[Talking is Cheaper]."
	
To say Talking is Cheaper:
	say "Try TALK to SOMEONE".
	
	
Section Touch
[Touching is implemented through an after rule, which is nice in terms of making use of existing relationships about whether something is touchable or not. If an item has a texture attribute, this rule makes use of it.]

Instead of touching a fardrop:
	say "[The noun] is too far away to touch."

After touching something (called the item):
	if the item is the player:
		say "You feel normal. Nothing out of the ordinary, really.";
	otherwise:
		let T be "";
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
		say "Unfortunately, you are too drained to cast this word of power.";
		now the xyzzy-flag is true;
	otherwise:
		say "Absolutely nothing happens.".
		

Chapter General Insteads

Chapter Not Ready For Prime Time - Not for release

Section Fake Debugging

Debugging is an action applying to nothing. Understand "debug" as debugging.

Carry out Debugging:
	If the debug mode is true:
		now the debug mode is false;
	otherwise:
		now the debug mode is true.
		
Report Debugging:
	Say "The debug mode is now [if debug mode is true]Activated. Debugging verbs will functional normally[otherwise]Deactivated. Fake debug verbs are now enabled, overriding the usual behavior of debug verbs (e.g., gonear, purloin, tree, etc.)[no line break][end if]."

Section Muting

[To reduce the clutter during debugging; suppresses stage Business]
Muting is an action out of world. Understand "mute" as muting.

Carry out muting:
	say "[bracket]Mute[if muted is true]Off[otherwise]On[end if][close bracket][line break]";
	if muted is true:
		now muted is false;
	otherwise:
		now muted is true;
		
Section Magic

Understand "freeze [something visible]" as freezing.

Understand "mpush [something visible]" as magic-pushing.

Understand "mpop" as magic-popping.

Understand "mcod" as cod-summoning.

Understand "knock [something visible]" as unjamming.
	
Chapter Initialize

The maximum score is 100. [TODO:  change this later]

When play begins:
	say the intro-text;
	now the time of day is 09:00 AM;
        	now the left hand status line is "[location]";
        	now right hand status line is "Score: [score]/[maximum score]";
			try silently switching score notification off;
			[puts the onus on us to display messages about score updates]
		[choose row with a left of " P = Previous" in the Table of Deep Menu Status;
	Need this until parchement is patched to accomodate the default "ENTER"
	change right entry to "SPACE = Select".]
			now wand counter is a random number between 0 and 5.

[Note - generating fake banner text. Not a generally good practice, but making an exception in this case to add the fake "SD" on the released version. Presumably, this game will be run by people who are very familiar with I7 and will tolerate all of the inside gags and historical references.]

Rule for printing the banner text:
	say "[bold type]Lobsters On A Plane[roman type][line break]Parboiled crustaceans at 30,000 feet by Ben and Jack[line break]Release [release number] / Serial number 100403 / Inform 7 build 5Z71 (I6/v6.31 lib 6/12N) SD[line break]Type [quotation mark]help[quotation mark] for instructions.[paragraph break]" instead.

	
Chapter Every Turn

Every turn:
	[avoid penalizing time for non-actions, a nuance]
	if the current action is taking inventory or the current action is looking:
		now the time of day is 1 minute before the time of day;
	[cod behavior]		
	Follow the fish rules;
	[stage Business]
	if muted is false:
		Follow the stage Business rules;
	[unblock stage Business for next turn]
	Now the block stage Business flag is false;
	if rules-active is true and debug mode is false:
		repeat with N running from 1 to a random number between three and five:
			say "[bracket]Rule [quotation mark]";
			pick a phrase from the Table of Rulings;
			say "[quotation mark] applies.[close bracket][line break]".
		
Section Phrase Picker
[To select a canned phrase from a table, choosing randomly amongst the less frequently said phrases. Tables need at least two entries.]

To pick a phrase from (source - a table-name):
	let R be a number;
	sort the source in times-used order;
	repeat with N running from 2 to the number of rows in the source:
		now R is N;
		if times-used in row N of the source is greater than times-used in row 1 of the source, break;
	if R is not the number of rows in the source:
		decrease R by one;
	let T be a random number between 1 and R;
	choose row T in the source;
	increase the times-used entry by one;
	say "[verbage entry]".

Section Stage Business

[Set the block stage Business flag to suppress stage Business at the end of that turn sequence -- helpful for scenes with long dialogue and descriptions. To make something not come up until at least one cycle through, change the times-used to "1" in the table]

The block stage Business flag is a truth state that varies. The block stage Business flag is false.

The stage Business rules is a rulebook.

The endgame block stage Business rule is listed first in the stage Business rules.

This is the endgame block stage Business rule:
	if the denouement is happening or the finale is happening:
		the rule succeeds.

The block all stage Business rule is listed after the endgame block stage Business rule in the stage Business rules. 

This is the block all stage Business rule:
	if the block stage Business flag is true:
		the rule succeeds.
		
The block stage Business while-looking rule is listed after the block all stage Business rule in the stage Business rules.

This is the block stage Business while-looking rule:
	if the current action is looking:
		the rule succeeds.
		
The introduction stage Business rule is listed after the block stage Business while-looking rule in the stage Business rules.

This is the introduction stage Business rule:
	if the introduction is happening:
		if a random chance of 6 in 20 succeeds:
			pick a phrase from the Table of Introductory Stage Business;
			say ".";
		the rule succeeds.
		
Table of Introductory Stage Business
times-used		verbage
0					"The plane shudders and the aluminum airframe groans ominously under the strain"
0					"In the cabin, the shrill of warning buzzers is barely audible over the frenzied panic in the passenger compartment"
0					"You are thrown against the wall as the plane pitches over violently. The harried passengers are whipped to an ever more desperate state of alarm"
0					"Above the chaos in the plane's cabin, you can just make out the automated message, [quotation mark][one of]We realize that you have choices, and thank you for making TRANSGLOBAL AIRLINES your...[paragraph break][italic type]Oh my God! Where's Jimmy? Where's my boy? Jimmy? The lobsters! They have Jimmy![roman type][paragraph break]...and wherever your journey may take you with its TRANSGLOBAL AWARDS program[or]Please turn off all electronic devices including cell phones and two-way pagers. The flight crew will instruct...[paragraph break][italic type]It's got my eye! My eye! I can't see! Get it off me! Get it off me![roman type][paragraph break]...thank you for complying with these regulations, which contribute to everyone's safety[or]First place the mask on your own face, and then pull down on the...[paragraph break][italic type]My seat belt is stuck. Someone help me. It's got my leg![roman type][paragraph break]...can be used as a life vest[at random].[quotation mark] The rest is lost in the screaming"
0					"You hear the sound of metal scraping against metal"
0					"The plane rolls, and you hear the dull thud of lifeless bodies hurled against the metal walls of the cabin"
0					"There is a plaintive whine from the motors that are supposed to lower the landing gears. Back when the plane [italic type]had[roman type] landing gears"
0					"The plane whips back and forth, as if the rudder controls are no longer working properly"
0					"You almost slip as the plane pulls up suddenly. Good thing you had the mango compote for lunch and not the fettucine"
0					"From the cabin you hear someone trying to reason with a carnivorous lobster"

		
The block stage Business while-raising the stakes rule is listed after the block stage Business while-looking rule in the stage Business rules.

This is the block stage Business while-raising the stakes rule:
	if disaster strikes is happening and the player is not in Limbo:
		increase the stakes by one;
		if the stakes is:
			-- 2: say "Obviously, someone from the FOB got wind of Meretzky's presence on this flight. Apparently, you guessed wrong about them wanting to recover him alive."; 
				the rule succeeds;
			-- 3: say "Why lobsters? Why now? It's too much for one Guardian to handle.[paragraph break]Like there is [italic type]ever[roman type] a good time for lobsters...";
				the rule succeeds;
			-- 4: say "Lobsters scuttle along the aisle, between seats, provoking screams of fear from the crash survivors.[paragraph break]How clichéd. This may have worked back in the day, but come on. Carnivorous lobsters? Have they no decency? You conclude that they are called the [quotation mark]Forces of Banality[quotation mark] for a good reason.";
				the rule succeeds;
			-- 5: say "Before the magical attack, you had worked your way through most of the economy and business class, but still hadn't located High Wizard Meretzky. You had assumed that he would not be so obvious as to fly first class, but this is not a good day for your assumptions."; 
				the rule succeeds;
			-- 7: say "Two years of deep cover as a stewardess. A bloody stewardess! Waiting hand and foot on these sink holes of attention. And for what? The biggest failure of your career. If you lose Meretzky, it will be a death blow to The Republic, and nothing will be able to stop the Forces of Banality and their langustinian minions.";
				the rule succeeds.
		
The Environmental stage Business rule is listed last in the stage Business rules.

This is the Environmental stage Business rule:
	if a random chance of 4 in 20 succeeds:
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
0		"You mumble to yourself.  How did the Forces of Banality located this plane so quickly?  This is definitely above your pay grade"
0		"Time is running out.  You can hear them splashing closer"
0		"Snap, crackle, pop!  The big ones are molting.  And advancing"
0		"A lobster scuttles towards your foot, but you quickly punt it back"
0		"Seriously. When this ordeal is over, you're definitely going to put in for that pay raise"

Section Fish Rules

The fish rules is a rulebook.

The fish swims off rule is listed first in the fish rules.

This is the fish swims off rule:
	if the cod is the currently-frozen-object:
		the rule succeeds;
	if cod is in the Plane Area and the cod is not in the location:
		move the cod to a random wet room adjacent to the location of the cod;
		if the cod is in the location:
			say "A cod fish swims into your section of the plane.";
	if the cod is in a dry room:
		say "The cod, having no water to swim in, gasps for breath and flops around on the floor.  Before you can help it, it expires and fizzles into smoke.";
		move the cod to Limbo;
	if the cod is in Business and the lobster mob is in the location:
		say "Fedora-brimmed lobster mobsters snear at the lone cod, like bullies on a playgroud. The mob boss, a three-and-a-half pounder with only one claw, steps forward, gesturing wildly with the Glöck in his good claw.[paragraph break][quotation mark]Well,[quotation mark] he taunts, [quotation mark]if it ain't the natural enemy of the lobster, [italic type]Gadus morhua[roman type], the Atlantic Cod.[quotation mark] At the mention of his taxonomic classification, some of the younger lobsters looks worried, their antennae flitting back and forth in concern. The boss continues brashly, [quotation mark]Boys, I think tonight's main dish is... sushi![quotation mark][paragraph break]The boss looks back at his mob, and there is a murmur of agreement. Before the boss is done gloating, however, the  fish pulls a modified Kalashnikov assault rifle from its bulky trenchcoat.[paragraph break]One of the hench-lobsters barely has time to say, [quotation mark]Boss, watch out for the cod piece![quotation mark] before the silver-scaled avenger lets loose with a barrage of phosphor-tipped rounds, which both cook and mince the lobster meat into a tasty salad. The passengers in the business section, who are accustomed to such things, merely assume it is the inflight meal, and quickly polish off the remains of the former gang.[paragraph break]";
		say "The cod, having rebalanced the karmic forces of the universe, happily blinks out of existence.";
		move the lobster mob to Limbo2;
		move the cod to Limbo2;
	if the spiny lobster is in the location and the cod is in the location:
		say "The cod looks the spiny lobster over, and decides that its spiky carapace would not be a pleasant chew. In a suprisingly low and rich baritone, the cod says to you, [quotation mark][one of]I can take care of some of the smaller ones -- I'm sure you can handle this one[or]Tag, you're it. Let me know when you've taken care of spiky[or]Oh, he's still around. I'll take care of some of these ankle biters[stopping].[quotation mark] Before you can fret, he swims under the seats in search of dinner."
	
The fish antics rule is listed after the fish swims off rule in the fish rules.

[TODO expand fish behavior repetoire]
This is the fish antics rule:
	if the cod is in the location and a random chance of one in five succeeds:
		if the cod is in Limbo:
			say "The cod floats placidly, weaving back and forth in the mists of infinity.";
		otherwise:
			say "The [one of]rather large cod[or]Atlantic cod[or]sleek silvery fish[or]natural predator of the lobster[or]somewhat helpful fish[at random] [one of]swims around, looking for food[or]swims like a torpedo along the plane floor, hunting lobsters[or]gulps down an unwary lobster[or]makes quick work of a one-pounder[or]flips through the air and lands with a [quotation mark]plot[quotation mark] a couple aisles over[at random]."

Book 2 Places

Chapter The Plane! The Plane!

The Plane Area is a region. The Lavatory, Tail Section, Economy, Galley, Business, Cockpit, and First Class are rooms in the Plane Area. The Tail Section, Economy, Business, Cockpit, and First Class are wet.

The floor is a backdrop. The floor is everywhere. The description of the floor is "The flat surface beneath your feet."

Instead of doing something with the floor:
	say "The only activity concerning the floor that interests you is standing on it. Indeed, standing on the floor briefly fills you with a sense of accomplishment, but then the sentiment passes."

The seats are a backdrop in the Plane Area. The description of the seats is "[seat-details]." Understand "seat" as seats. The seats are plural-named.

To say seat-details:
	if the location is:
		-- tail section:
			say "Fold-down seats used by the crew";
		-- economy:
			say "Cramped, angular, and uncomfortable";
		-- business:
			say "Barely a step up from the torture devices found in Economy";
		-- first class:
			say "Expensive-looking leather recliners";
		-- galley:
			say "Fold down seats used by the crew";
		-- cockpit:
			say "Metal-framed, functional seats for the use of the pilot and co-pilot";
		-- lavatory:
			say "The only seat in here is, if you want to call it such, the toilet".
			
Before doing something with the seats:
	if the current action is not examining:
		say "The seats don't interest you. Your job is to deliver the High Wizard to the Summit, not gawk at furniture." instead.
		
The seat belts are a backdrop in the Plane Area. The description of the seat belts is "A fabric strap with a metal buckle." The seat belts are plural-named. Understand "belt" or "seat belt" or "seatbelt" as the seat belts.

Instead of doing something with the seat belts:
	if the current action is not examining:
		say "You have always made a particular effort to avoid taking note of the seat belts, particularly during the safety demonstration. You are not about to change your ways now just because the plane has been plunged into a hellish nightmare.";
	otherwise:
		continue the action;
		
The passengers are a backdrop in the Plane Area. The description of the passengers is "An assortment of people, about half of whom refuse to accept the reality of the situation." The passengers are plural-named. Understand "corpse" or "corpses" as passengers.

Instead of doing something with the passengers:
	if the location is the lavatory or the location is the cockpit:
		say "There are no passengers here.";
	otherwise if the current action is not examining:
		say "You are too well-trained and your mission is too important to spare more than a glance at the passengers. You must somehow see that the High Wizard is delivered safely to the Summit, or the Forces of Banality will conquer the world.";
	otherwise:
		continue the action.

Chapter Bathroom

The Lavatory is a room. The description of the lavatory is "[one of]A claustrophobic vertical coffin, lit by blue-tinted fluorescent bulbs and smelling of disinfectant. A uselessly small vestigial sink, a unisex toilet, and a mirror are the only furnishings in the room[or]A tight, poorly lit, aircraft bathroom. Ordinarily, a welcome refuge from the demanding mortal customers who need to use planes to move from one place to another, but now a safe haven from the carnivorous lobsters infesting the plane. The [list of furniture in the lavatory] are unremarkable[stopping]. Your uncanny (yet invariably useful) sense of direction tells you that the aft compartment of the plane is to the west." Understand "bathroom" or "coffin" as the lavatory.

The sink is a container in the lavatory. The sink is fixed in place. The description of the sink is "A small metal bowl with two knobs, marked [quotation mark]hot[quotation mark] and [quotation mark]cold[quotation mark], and a faucet. The sink is bone dry." The cold knob is part of the the sink. The hot knob is part of the sink. The faucet is part of the sink. The carrying capacity of the sink is one. Understand "basin" or "drain" as the sink. Understand "tap" as the faucet. Understand "knobs" as the sink.

The bulb is a backdrop in the lavatory. Understand "light" or "fluorescent" or "blue-tinted" or "bulbs" as the bulb. The description of the bulb is "A cheap, fluorescent bulb."

The coffin is a backdrop in the lavatory. 

Instead of doing something with the coffin:
	if the current action is examining:
		say "It's not really a coffin. That was just a description. It's [italic type]like[roman type] a coffin. Simile. Jeez.";
	otherwise:
		say "There really isn't a coffin here."	

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
	say "As a security precaution, the TSA has disabled in-flight use of devices involving water. If you wash your hands, the terrorists win"
	
The mirror is a furniture in the lavatory. The description of the mirror is "A small, slightly smeared mirror. In it, you see your tired self, worn down by this loathesomely boring (until the lobsters) assignment."

Instead of rubbing the mirror:
	say "You spread the smudges around a bit."
	
Instead of searching the mirror:
	say "The bathroom lighting is less than flattering."

The toilet is a furniture in the lavatory. The description of the toilet is "A vaguely seat-like bump on the wall of the bathroom. The hole leads nowhere, of course, as toilets were banned on planes years ago as a security precaution." The hole is part of the toilet. The hole is a container. The description of the hole is "You'd rather not look too closely." The carrying capacity of the hole is 1. Understand "unisex" and "bowl" as the toilet.

Instead of entering the toilet:
	say "No way. Even with your level of magical warding, it's not worth chancing it."

Instead of inserting something into the hole:
	say "Yech. Not even a consideration."
	
Instead of inserting something (called the item) into the toilet:
	try inserting the item into the hole.

The bathroom door is a door. The bathroom door is openable and closed. The bathroom door is west from the lavatory and east from Tail Section. The description of the door is "A folding door, with a small latch." The bathroom door is immune.

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
	
Instead of pulling the bathroom door when the player is in the Lavatory:
	try opening the bathroom door.
	
Instead of pushing the bathroom door when the player is in the Lavatory:
	say "[wrong way]."
	
Instead of pulling the bathroom door when the player is in the Tail Section:
	say "[wrong way]."
	
Instead of pushing the bathroom door when the player in the Tail Section:
	try opening the bathroom door.
	
To say wrong way:
	say "The door doesn't fold that way".
	
	
The paper roll is a furniture in the lavatory. The description of the paper roll is "An empty roll that once dispensed toilet paper. It's been a long time, though, since airlines provided free toilet paper."

The smoke detector is a furniture in the lavatory. The description of the smoke detector is "A flat plastic panel on the ceiling bearing a small warning label."

The small warning label is part of the smoke detector. The description of the small warning label is "A metallic sticker, with red writing. It looks official." The inscription of the small warning label is "[quotation mark]Warning: Federal Law Prohibits Tampering With...[quotation mark] the rest of the warning has been scratched off.[paragraph break]Which is just as good, considering that the smoke detectors were inactivated years ago to prevent people from being able to tamper with them."

Understand "tamper with [something]" as touching.

Instead of doing something with the smoke detector:
	if the current action is examining or smelling or listening:
		continue the action;
	otherwise:
		say "You tamper [one of]briefly with the smoke detector and enjoy the feeling of naughtiness[or]momentarily with the smoke detector. It's less fun the second time[or]with the smoke detector, but it no longer fills you with excitement[stopping]."

Chapter Tail Section

The Tail Section is a room.  The description of the tail section is "A cramped storage section in the rear of the plane, where, if you remember correctly, some emergency supplies are supposed to be stored. The floor slopes upward to the economy section. The emergency escape hatch is inset into the wall." The tail section is down from Economy.

The equipment bin is a closed openable container in the tail section. The description of the equipment bin is "A carbon-composite module built into the side panel of the plane. The bin is labeled [quotation mark]Emergency Equipment[quotation mark]." The equipment bin is jammed.

Instead of opening the equipment bin when the equipment bin is jammed:
	say "What lousy equipment. The bin has never been easy to open and seems stuck shut."

After opening the equipment bin for the first time:
	say "As you open the equipment bin, you wonder if you should have played the role of flight attendant more carefully. Following the standard procedures of the airline would have meant that you would have made sure that the emergency equipment bin was full of, well, emergency equipment.[paragraph break]A small piece of paper lies on the bottom of the bin."
	
The memo is a prop in the equipment bin. The description of the memo is "A handwritten note on TRANSGLOBAL AIRWAYS stationary." The inscription of the memo is "Flight crew: please be sure that this compartment contains the following items prior to departure:[paragraph break]* First Aid Kit[line break]* Flare Gun[line break]* Emergency Radio[line break]* Crustacean Repellent[line break]* Mountain Climbing Gear[line break]* Shark Defense Cage[line break]* Personal Jet Pack[line break]* Entertainment System, Mark V". Understand "small" and "paper" and "note" as memo.

The emergency escape hatch is a furniture in the Tail Section. The emergency escape hatch can be open. The emergency escape hatch is closed. Understand "exit" as the emergency escape hatch. "A sturdy curved door mounted on heavy internal hinges. For emergency use only, as it says."

Instead of opening the emergency escape hatch:
	say "The exit only pushes outward, but thousands of tons of ocean water hold it closed against your feeble attempts."
	
After magic-pushing the emergency escape hatch:
	now the endgame is drowned;
	end the story finally.

Chapter Economy 

Economy is a room. The description of Economy is "Row after row of tightly packed seats, with minimal padding, sharp corners, and ratty seat belts[one of]. Back in the day, these seats would have come with heavy oars and leg irons. Well, nostalgia will have to wait. You have a plane full of lobsters to deal with, and a High Wizard to find[or][stopping].   A movie screen swings above one seat;  [if the overhead compartment is closed]a closed[otherwise]an open[end if] overhead compartment limits the headroom in this section.  Various half-eaten corpses of economy passengers lay strewn about, with crustaceans crawling over many of them.".  Economy is down from the Galley.

The corpses are scenery in Economy.  The description of the corpses is "Hey, this is a PG-13 game, buddy."   
Instead of doing anything with the corpses:
	if the current action is examining:
		continue the action;
	otherwise:
		say "Gross. You have a mission, remember?"

The movie screen is a furniture in the Economy. The description of the movie screen is "A dirty gray panel mounted on the overhead compartment. Movies are shown here to take people's minds off how very unpleasant it is to fly economy."

The schoolmarm is a woman in Economy.  "Over in seat 31A, a schoolmarm-ish woman [if the spiny lobster is in the location]is attemping to scream in agony, but [end if]is too exhausted to make a sound.".  Understand "woman" as the schoolmarm.  The description of the schoolmarm is "Covered in blood and seawater, her eyes are shell-shocked.  She's barely alive." Understand "teacher" or "marm" as the schoolmarm.

Instead of talking to the schoolmarm:
	say "She is too traumatized to speak coherently."

The spiny lobster is an animal in Economy.  The description of the spiny lobster is "A three-foot long spiny lobster [if the schoolmarm is in the location]gnaws on the schoolmarm's shoulder with wild abandon[otherwise] clicks at you menacingly with huge claws[end if]."  Understand "spiny" as the spiny lobster.

After taking the banjo when the spiny lobster is in the location:
	say "The spiny lobster looks fearfully at the banjo."

Instead of talking to the spiny lobster:
	say "The spiny lobster replies in a thick South Atlantic accent and you can't quite understand what he is saying, but it doesn't sound friendly."
	
The cart is a supporter in Economy. The cart is jammed. The cart is pushable between rooms. The description of the cart is "A food cart, meant to be pushed Sisyphus-fashion up and down the aisles of this plane until your penance is complete[if the cart is jammed]. The cart seems impossible to push. It looks like the spilled mango fettucine compote has worked its way into the wheels and has hardened like a rock[end if]."  Understand "wheel" or "wheels" or "compote" or "mango" or "fettucine" or "serving" as the cart.

Instead of taking the cart:
	if the hollow storage recess encloses the cart:
		say "[clamped].";
	otherwise:
		say "The cart is too heavy to lift, even if you had a Scroll of Repair Hernia available. Normally, you just push these carts back and forth, up and down the aisle."
	
To say clamped:
	say "The cart has clamped into the storage recess and cannot be easily removed".
	
Instead of pulling the cart:
	say "You can't pull the cart. It is a push cart. Federal regulations prohibit the pulling of a push cart."
	
Instead of pushing the cart:
	say "You have to say in which direction, as the cart isn't smart enough to think of that on its own."
	
Before inserting the cart into the hollow storage recess:
	if the hollow storage recess encloses the cart:
		say "It's already there.";
	otherwise:
		say "The cart glides smoothly into the recess and clicks into place.";
		move the cart to the hollow storage recess;
	stop the action.
	
Instead of inserting something into the hollow storage recess:
	say "The recess was designed specifically to hold the cart, and to prevent it from rolling around the plane cabin. The [noun] does not fit in the recess and rolls right out.";
	move the noun to the Galley.

Instead of pushing the cart to a direction (called the way):
	if the cart is jammed:
		say "You are not able to move the cart at all[one of]. Odd[or][stopping].";
		the rule fails;
	if the hollow storage recess encloses the cart:
		say "[clamped].";
		the rule fails;
	if the way is not the blocked direction:
		say "The cart is facing [blocked direction]wards. That's the only way it can be pushed[if the cart is in the Plane Area], and there isn't enough room here to turn it around[end if].";
	otherwise:
		if the location is the lavatory:
			now the blocked direction is up;
		continue the action.		

The overhead compartment is scenery in the Economy.  The overhead compartment is an openable container.  The overhead compartment is closed.  Understand "compartment" and "rack" as the overhead compartment.  The overhead compartment contains a banjo.   The banjo can be broken.  The banjo is not broken. The description of the banjo is "A Stelling Red Fox model, circa 2006.  [if the banjo is broken]Unfortunately, it is now a splintered mass of useless junk.[otherwise]It glows with bluegrass goodness.[end if] You wonder which unfortunate bloke it belonged to." The printed name of the banjo is "[if the banjo is broken]broken [end if]banjo".

Instead of taking the banjo when the banjo is broken:
	say "It's fragmented into too many pieces to pick up.".
	
Instead of playing the banjo:
	if the banjo is broken:
		say "You can't play a broken banjo!";
	otherwise:
		if the spiny lobster is in the location:
			say "The spiny lobster seems taken with the music. Who knew that spiny lobsters were country music fans? He closes his eyes and begins to sway with the music.[paragraph break]Sensing her opportunity, the staid schoolmarn in 31A dashes the lobster's brains out with a fire extinguisher. The lobster continues dancing for another half minute until its nervous system catches up with the situation, and collapses to the floor. A moment later, the spiny lobster vanishes in a magical haze. Unfortunately, the haze also sucks in the banjo and the fire extinguisher, both of which had such possiblities. Oh, well.";
			move the spiny lobster to Limbo2;
			move the banjo to Limbo2;
		otherwise:
			say "You pluck out a short tune. Not bad, considering you haven't practiced in over three hundred years."
			
[TODO: Ben, feel free to add specific songs instead of "short tune", above.]


Instead of going a direction (called the way) when the cart is in the location and the player is in the Plane Area:
	if the way is the blocked direction:
		if the current action is pushing:
			continue the action;
		otherwise:
			say "The food service cart is in your way, and there isn't enough room to slip past it."

Instead of taking the spiny lobster:
	say "Do you have some sort of deathwish?"
	
Instead of eating the spiny lobster:
	say "Actually, you're somewhat allergic to shellfish."
	
Instead of freezing or magic-pushing the spiny lobster:
	say "Alas, this one is too big;  you recognize an antimagic aura glowing around it."

Instead of attacking the spiny lobster:
	if the player carries the banjo:
		say "You invoke the mighty power of Earl Scruggs, and rein the instrument down upon the creature with full 5-string fury!  Its exoskeleton crunches mightily, reverberating through the exquistitely crafted walnut-and-chrome resonator.  The banjo is now in pieces, but so is the spiny lobster.  The lobster vaporizes into a magical haze.";
		move the spiny lobster to Limbo2;
		now the banjo is broken;
		move the banjo to the location;
	otherwise:
		say "Your bare hands are no good here.  You need a decent weapon!".

Instead of asking the schoolmarm about something:
	say "She stares at you hopelessly, attempting to form words on her near-lifeless lips.  There's not much you can do to help her at this point."


Instead of going up from Economy when the lobster is in the location:
	say "[one of]You're stopped in your tracks by the pitiful moans of the schoolmarm being eaten alive.[or]Your morals won't let you, you've got to save that pathetic woman first![stopping]".

Chapter Galley

The Galley is a room. The description of the Galley is "A stainless steel compartment between the self-absorbed slobs in business class up ahead and the unwashed masses and screaming babies in economy down below.  Interestingly, whereas other parts of the plane are sloshing in a foot of water, this area remains totally dry." The Galley is down from the Business.

The counter is a furniture in the Galley. The description of the counter is "A brushed aluminum counter where you have prepared countless plasticky meals for unwitting passengers. Under the counter, there is a hollow storage recess where you park the food cart when it is not in use."

The hollow storage recess is part of the counter. The hollow storage recess is a container. The description of the hollow storage recess is "[if the hollow storage recess encloses the cart]The cart has been safely stowed in the hollow recess just under the counter[otherwise]A recessed storage space made for security the food cart when it is not being used[end if]." Understand "recessed" and "space" as the hollow storage recess.

The microwave is a closed openable container. The microwave is on the counter. The carrying capacity of the microwave is one. The microwave can be open. The microwave is closed. The microwave can be switched on. The microwave is switched off. The microwave is fixed in place. The scent of the microwave is "like buttered popcorn". The description of the microwave is "A brown commercial microwave that has seen more than its fair share of activity over the years. There is a sticker on the microwave."

The sticker is part of the microwave. The description of the sticker is "A picture of a black cat. There is a red circle around the cat, and a diagonal slash extends through the cat."

After opening the microwave:
	say "A black cat darts out of the microwave, looks around uncertainly, and runs immediately through the wall of the plane."

Chapter Business

The Business is a room. The description of Business is "Rows of seats that are spaced the way economy seats used to be spaced about five years ago. It is enough to make the gullible mortals feel superior to those in economy, while still stripping them subtly of their humanity. It is your favorite section of the plane.[paragraph break]Northward, a narrow, staircase spirals toward to the first class section. Just above the business class is the bulkhead that leads to the cockpit.[if unvisited][paragraph break]And clearly the vast mass of hungry lobsters have decided to make a final stand against you here.   They stop their flesh-feeding, teem and swarm, then all spin around to face you.  They take up battle positions along the central aisle.  You have no idea how you're going to get past the lobster mob." The Business is down from the bulkhead.

The lobster mob is an animal in Business.  "The lobster mob pulsates and wiggles threateningly at you, claws at the ready.".   Understand "mob" and "lobsters" as the lobster mob.  The description of the lobster mob is "A heinous conglomeration of angry arthropods ready to defend their territory.  And possibly devour your leg in the process." Understand "gang" or "mafia" as the lobster mob.

Instead of talking to the lobster mob:
	say "The lobster mob bristles impatiently, looking for a fight. They are clearly not in the mood for civil discourse."

Instead of going a direction (called way) from Business:
	if the lobster mob is in Business and (the way is up or the way is north):
		say "[one of]With the lobster mob there?  Are you kidding?[or]Not with the crusteacean army there, you won't.[or]You need some serious help getting past those lobsters first.[stopping]";
	otherwise:
		continue the action.

Instead of attacking the mob:
	say "[one of]You and what army?[or]With what, your good looks and charm?[or]You need a friend to help, I think.  Perhaps your enemy's enemy.[stopping]".

Instead of taking the mob:
		say "I think they'd prefer to tear you to shreds first."
		
Instead of eating the mob:
	say "Actually, you're somewhat allergic to shellfish."
	
Instead of magic-pushing the mob:
	say "Your wand fizzles as you try to blink them away.  They're way too powerful for that trick, it seems."

Chapter Cockpit

The Cockpit is a room. The cockpit is up from the bulkhead. The description of the cockpit is "A cone-shaped room dominated by a control panel bristling with those blinking lights and other technical knick-knacks that mortals consider fancy[if the cockpit is unvisited]. You notice immediately that there isn't anyone in cockpit -- no pilot, no copilot, no navigator or engineer. Ironically, you realize that you are the most senior member of the crew, and you're not even a real stewardess[end if][if the button is once-pushed].[paragraph break]To the west, a twirling magical vortex of incredible energy awaits you[end if]."

The bulkhead is a door. The bulkhead is up from Business. The bulkhead is closed and jammed. The description of the bulkhead is "[bulkhead status]." Understand "security" and "heavy" and "door" as the bulkhead. The printed name of the bulkhead is "[if the bulkhead is open]open[otherwise]closed[end if] bulkhead". The bulkhead is immune.

To say bulkhead status:
	say "A security bulkhead that separates the business section from the flight deck. The bulkhead ";
	if the bulkhead is jammed:
		say "seems to be jammed shut";
	otherwise:
		say "is [if the bulkhead is open]open[otherwise]closed[end if]".
		
Before pulling the bulkhead:
	if the location is business:
		try opening the bulkhead;
	otherwise:
		try closing the bulkhead;
	stop the action.
		
Before pushing the bulkhead:
	if the location is the cockpit:
		try opening the bulkhead;
	otherwise:
		try closing the bulkhead;
	stop the action.
	
Before doing something with the bulkhead when the lobster mob is in Business:
	say "A gang of lowlife lobster thugs have gathered just outside the bulkhead leading to the cockpit -- real bottom feeders. They won't let you near the bulkhead."
		
Instead of opening the bulkhead when the bulkhead is jammed:
	say "[one of]The crash must have slightly warped the heavy metal door. It[or]The bulkhead[stopping] appears to be jammed shut."

The yoke is a furniture in the cockpit. The description of the yoke is "A semicircular steering wheel mounted on a stick. You have seen the pilot move it back and forth to steer the direction of the plane."

The control panel is a furniture in the cockpit. The description of the control panel is "A flat U-shaped panel that wraps around the forward section of the aircraft and sports all kinds of controls, dials, switched and other doo-hickeys[if Cockpit-Steve is true]. You also notice the orange button that Steve mentioned[end if]." Understand "side" as the control panel.

There is a button. The description of the button is "A brilliant orange button, shaped like a mushroom. It sticks up above all of the other buttons on the panel and looks important. It is labeled [quotation mark][button-text][quotation mark].[one of][paragraph break]The High Wizard glances at the prominent, well-marked button and chides, [quotation mark]I can see how you missed that one.[quotation mark][or][stopping]". The inscription of the button is "[button-text]". The button can be once-pushed. The button is not once-pushed. Understand "fluorescent" or "brilliant" or "orange" or "transmit" or "mushroom" as the button.

To say button-text:
	say "Transmit".

Instead of pushing the button:
	if the button is once-pushed:
		say "The button depresses, but nothing happens.";
	otherwise:
		say "There is a crackle, and then a familiar voice answers: it is Kevin Jackson-Mead, First Class Mage of the People's Republic of Interactive Fiction. He reports that the Repubic has locked onto your radio signal and that help is on the way.[paragraph break]Before you can protest the direness of your situation, a whirling vortex of photopian colors forms in the cockpit. For once, High Wizard Meretzky himself is taken by surprise, and stares in amazement as the vortex enlarges to fill the flight deck to your west. He whispers, [quotation mark]That's [italic type]impossible...[roman type][quotation mark] A strong wind whips papers around and the air crackles with electricity.";
		now the button is once-pushed;
		move the twirling magical vortex to the cockpit.
		
Chapter Staircase

The staircase is a door. The staircase is north from Business. The description of the staircase is "A twisty, winding staircase connects the upper class deck with the more mundane decks below." The staircase is open. The staircase is south from First Class. The staircase is immune.

Chapter First Class

First Class is a room. The description of first class is "A posh, nightclub-like bubble on the front of the plane. Through the transparent ceiling, green light filters down and you can see fish swimming by."

The billiards table is a furniture in first class. The description of the billiard table is "A hefty wood-paneled table, covered in dark green felt.[paragraph break]With the plane tilted at this angle, however, the balls and pool cues must have rolled off into the recesses of the room."

Steve Meretzky is a man in first class. The description of Steve Meretzky is "A tall bearded man, with an intelligent look about him[if a random chance of one in six succeeds] and a small fish in his right ear[end if]. He seems is waving his wand around, casting spells in all directions." Understand "high" and "wizard" and "man" and "tall" as Steve Meretzky. 

Instead of talking to Steve Meretzky:
	if greeted-flag is false:
		say "The great wizard pauses a moment from smiting the lobsters near his ankles and takes notice of you for the first time.[paragraph break]Fixed in his intense gaze, you stutter, [quotation mark]High Wizard Meretzky, your honor,[quotation mark] your voice slips up an octave, and you hope you don't come across as too much of a fangirl. You make an effort to slow down and appear dignified, [quotation mark]I was sent by the Republic to see that you reach the Summit safely.[quotation mark][paragraph break]Meretzky appears amused, [quotation mark]Yeah? And how's that going?[quotation mark] He deftly flicks his wand and the giant lobster that was sneaking up on you disappears in a puff of smoke. Becoming more serious, he explains, [quotation mark]I'm afraid we're surrounded by an antimagic shell. Not even [italic type]I[roman type] am powerful enough to penetrate it. Our only hope is to get a message out to the Republic... You lead, I'll take up the rear. You can never be too careful with grues and lobsters, you know.[quotation mark][paragraph break]";
		now the greeted-flag is true;
	otherwise:
		say "Save the chatter for IFmud, we've got work to do!"
		
After going 	when the location is first class and first class is unvisited:
		say "As you climb sideways into the First Class cabin, you are not surprised by the sight of its sole occupant: an unusually tall man in flamboyant chartreuse robes. He stands paradoxically upright despite the steep tilt of the deck. With an effortless wave of one hand, he dispels an attacking Arch Grue.[paragraph break]Stunned by the realization that you are mere feet from High Wizard Steve Meretzky (on a carnivorous lobster-infested sinking plane), you are momentarily speechless."

Chapter Limbo

[A place for offstage stuff]

Limbo is a room. "[if unvisited]Uh oh. Not good.[paragraph break][end if]Grey mists swirl around you. You are lost somewhere between universes." Limbo is wet. [Yes, a litte known bit of trivia about Limbo: it is quite wet there, about 95% humidity. It's not so much the heat, you see. As a happy side effect, the cod is entirely happy about swimming around in Limbo.]

Limbo2 is a room.  [This is the place for ACTUALLY removing objects from the game!]

Every turn when the location is Limbo:
	now the block stage Business flag is true.

The mists are scenery in Limbo. The mists are plural-named. Understand "mist" as the mists. The description of the mists is "Colorless, formless, and timeless."

The limboed-thing is a thing that varies.  The limboed-thing is the twinkie.

The twinkie is a prop in Limbo.  The description of the twinkie is "Golden brown, and every bit as edible as the day it rolled off the assembly line." The twinkie is edible.

After eating the twinkie:
	say "You swallow the twinkie in one unladylike gulp. It has absolutely no taste. None. It is like eating mushy kreme-filled foam rubber, but with less aftertaste."

The statuette is a prop in Limbo.  The description of the statuette is "It abstractly resembles a tornado of some sort.  On the bottom is some intricate inscription. There is just enough light here to read it." The inscription of the statuette is "Welcome to Limbo!  You may be the unlucky target of an angry mage, but if you believe you arrived here in error, please don't hesitate to file a 951-EZ-5C report with your local dimensional constabulary. Assuming you have a popping spell to exit this place, that is. Have a great day." Understand "inscription" or "bottom" as the statuette.

Chapter Whirling Vortex

[TODO the vortex needs to be described from the cockpit ... i.e., x vortex. Also, ente vortex, go vortex, etc., show work appropriately.]

The Whirling Vortex is a room. The Whirling Vortex is west from the cockpit. The description of the Whirling Vortex is "The undulating spiral walls of the vortex rotate hypnotically, drawing you in. It crackles with actinic lightning flashes."  Understand "vortex" and "tornado" and "hurricane" as the Whirling Vortex.

After going when the location is the Whirling Vortex and the Whirling Vortex is unvisited:
	try looking;
	say "At the far end of the tunnel a great figure holds the vortex open, his hands held above his head like Moses parting the Red Sea. His salt-and-pepper ponytail flaps behind him in arising maelstrom. You have only heard tell of him in legends, but there is no doubt in your mind that the figure is none other than Don Woods, one of the Fathers of the Genre.[paragraph break]Even with his great power, Woods is struggling to hold the portal open. In each of his mighty fists, he has gathered bundles of ethernet cords, which lead away in every direction. Woods calls upon the power of the Internet itself, tapping into the raw flow of energy from the IFwiki, IFDb, IFMud, and Baf's guide, Brass Lantern, and R.A.I.F.  He reaches out through the thousands of works of interactive fiction in the repository, all the way back the original Adventure. He draws on the pleasure and sense of challenge felt by the millions who have ever played a text adventure, and channels it into the whirling vortex. As sweat pours from his brow, he beckons you forward.[paragraph break]";
	now the block stage business flag is true.

Instead of going west from the cockpit:
	if the button is once-pushed:
		continue the action;
	otherwise:
		say "You can't go that way."
		
The twirling magical vortex is an open enterable scenery container. The description of the twirling magical vortex is "The gaping maw of the energy vortex shimmers with energy. It leads into a long tunnel through time and space." Understand "tunnel" or "gaping" or "maw" or "energy" as the twirling magical vortex. The twirling magical vortex is immune.

Instead of entering the twirling magical vortex:
	try going west.
	
Instead of taking the twirling magical vortex:
	say "Not even vaguely within the realm of possiblity."

Chapter Tube

The Tube is a room. The Tube is west from the Whirling Vortex. The description of the Tube is "An extradimensional wormhole which snakes back and forth chaotically. It connects the cockpit of the plane somewhere in the Atlantic Ocean with the Hynes Convention Center in Boston, Massachusetts. The end of the tube leading back to the plane is shrinking."

After going when the location is the Tube and the Tube is unvisited:
	try looking;
	say "Don Woods strains to maintain the wormhole through time and space.";
	now the block stage business flag is true.
	
Instead of going east when the Denouement is happening (this is the you can't go back during the denouement rule):
	if the location is the Hynes Convention Center:
		say "You can't! The Vortex has evaporated, leaving no trace.";
	otherwise:
		say "You can't! The tube is collapsing behind you. The only way to go is west!"


Chapter Conventional Warfare

[TODO: Room description needs to change (or intially be suppressed) upon emergence from vortex. The vortex should collapse behind.

  TODO: block examining/interacting with stuff aside from the lamp when it is dark.]

The Hynes Convention Center is a room. The Hynes Convention Center is west of the Tube. The description of the Hynes Convention Center is "[theater]"

To say theater:
	if the Hynes Convention Center is unvisited:
		say "A large conference room, full of IF Fans and authors.[no line break]";
	otherwise if the lamp is in the Hynes Convention Center:
		say "It is pitch dark. The audience eagerly awaits the premier of a documentary, which will chronicle the history of interactive fiction.[no line break]";
	otherwise:
		say "A large room has been reserved for the premier of a documentary about the history of text adventures. The room is packed.[no line break]"

After going when the location is the Hynes Convention Center and the Hynes Convention Center is unvisited:
	try looking;
	say "As you emerge from the Vortex and step into the Hynes Convention Center, The Forces of Banality attack in unison. High Wizards Lebling, Moriarity and Meretzky reflexively move to equilateral positions around the gathering. The energy flows between them once more, creating a Trinity barrier between the IF community and the hordes of shambling Farmvillains.[paragraph break]Market Forces conspire to bring down the defenses, but David Cornelson casts Textfyre Balls at them, driving them off.[paragraph break]In the midst of it all, Zarf casts the elaborate Glkian Ritual of Unity (a ritual that, truth be told, no one else understands quite so well). Around him, people in the crowd hold each others[apostrophe] hands, contributing power to his spell. One word is repeated over and over, quietly at first, but soon building to a thunderous roar. Finally, the word can no longer be restrained. It breaks loose and reverberates, filling the room, and then flooding outward in every direction. It is an ancient word, of great power, the oldest of the spells: [quotation mark]xyzzy![quotation mark][paragraph break]Banality is banished. The community is saved.[paragraph break][italic type]And thus begins the Third Age of Interactive Fiction.[roman type][paragraph break]Jason Scott, dressed in fine Victorian regalia, waves his hand and a silence falls over the crowd. The lights in the room fade, and you barely catch sight of a metallic glint before you are enveloped by darkness. Surrounded by friends, you have no worry about grues.";
	now the block stage business flag is true;
	move the lamp to the Hynes Convention Center;
	the lamp shines in three turns from now.	

At the time when the lamp shines:
	if the location is the Hynes Convention Center:
		say "From somewhere near the back of the room, an old film projector stutters to life, and film slowly threads it way through the gears. Gradually, the image of an antique brass lamp forms in front of you.";
		now the lamp is projected.
	
The lamp is a prop. The description of the lamp is "A shiny brass lamp, which emits a dim light." The lamp can be projected. The lamp is not projected.

Rule for listing nondescript items of the Hynes Convention Center:
	if the lamp is projected:
		say "You see nothing here but an antique brass lamp.";
	otherwise:
		do nothing.

Instead of dropping something (called the item) in the Hynes Convention Center:
	let the localverb be "fall";
	say "[The item] [localverb in correct agreement] into the darkness without a sound.";
	move the item to Limbo.
	
Instead of doing something with something when the location is the Hynes Convention Center:
	if the current action is examining:
		say "You can't see a thing.";
	if the current action is touching:
		if the noun is the lamp:
			continue the action;
		otherwise if the noun is the player:
			say "Ew.";
	otherwise if the current action is taking:
		if the noun is the lamp:
			say "Taken.[paragraph break]You are transported to a place of brightness and comraderie.";
			move the player to Room 2305;
		otherwise:
			say "You can't find anything in this darkness."

Chapter Room 2305

There is a room called Room 2305. Understand "IF" and "suite" as Room 2305. The description of Room 2305 is "A room full of people who you have known from emails, usenet posts, forum discussions, chats on the IFmud, and of course, through their games. There are pockets of discussion about text adventures played in the past, and interactive fiction to be written in the future. The overall impression is one of warmth and welcomeness."

The desk is furniture in Room 2305. The description of the desk is "A wooden writing desk."

The laptop is a prop. The laptop is on the desk. The description of the laptop is "A plain black laptop, its keys polished smooth with use. On the screen, a text adventure awaits you." Understand "keyboard" as laptop.

Instead of doing something with the laptop:
	if the current action is examining: 
		continue the action;
	otherwise:
		now the endgame is won;
		end the story finally.

The personnages are a backdrop in Room 2305. The description of the personnages is "Members of the IF community. They are urging you to try out the game on the laptop." The printed name of the personnages is "people". Understand "people" as the personnages.

Instead of talking to the personnages:
	say "They greet you warmly and suggest that you try out the game on the laptop."

Book 3 Characters

Chapter Player

The player is in the lavatory. The description of the player is "Four-hundred and eighty-six years, and you look like a supermodel[if the player does not wear the flight attendant uniform] (even more so, without your clothes)[end if]. That's partly due to your inherently superior breeding, and partly attributable to the plastic surgery, cybernetic implants and magical enhancements all courtesy of The Republic."

The player wears some high-heeled shoes. The description of the shoes is "Shiny, high-heeled shoes. Part of the TRANSGLOBAL AIRLINES uniform. Your [italic type]least[roman type] favorite part." The shoes are plural-named. The indefinite article of the shoes is "a pair of". Understand "pumps" or "heels" as high-heeled shoes.

Instead of going when the player wears the high-heeled shoes and the player is in the Plane Area:
	say "You stumble and lurch, unable to maintain your tip-toed balance on the sloping floor[if a random chance of one in four succeeds]. Your shoes may be fashionable, but are not very functional when it comes to airplane disasters[end if]."
	
Instead of wearing the shoes when the player is not in the Plane Area:
	say "You once again don your flimsy footwear[if Steve Meretzky is in the location], but Steve still has a significant height advantage[end if]."
	
The player wears a flight attendant uniform. The description of the flight attendant uniform is "A dark blue pants suit, with smart, military-style epaulets, a stripe down each sleeve, and gold embroidery on the cuffs. A pair of silver wings is pinned to your left breast, just below your name tag. The pressed, pleated pants continue the faux-military look. You are surprised that TRANSGLOBAL AIRLINES spent so much time and effort on designing the uniforms and so little effort verifying your identity before handing it over to you." Understand "suit" or "epaulet" or "epaulets" or "sleeve" or "sleeves" or "cuff" or "cuffs" or "pants" as the flight attendant uniform.

The silver wings are part of the flight attendant uniform. The silver wings are plural-named. The description of the silver wings is "A stylized gyre falcon, the trademark of TRANSGLOBAL AIRINES. The wings are sewn to the uniform, so you never have to worry about losing them."

The name tag is part of the flight attendant uniform. The description of the name tag is "A plastic badge engraved with your cover identity." Understand "plastic" and "badge" and "identity" as the name tag. The inscription of the name tag is "It reads: [quotation mark]F. Mignon[quotation mark]."


Chapter Sidekick

Chapter Antagonist

Chapter Extras
[not quite sure what to do with the extras at the moment. Likely, they'll get some behaviour and then be killed in interesting ways. For now, this isn't rigged up to the rest of the story and only serves as a template if we want to do something with extras.]

Table of Passengers
compartment		seat			appearance					behavior	
Economy			"44A"			"a mild manner school marm"		"yells"
Business			"10C"			"a grouchy executive"			"screams"
First Class		"1A"			"an old man"					"drools"



Book 4 Tables and Boxed Text

Section Tables

Chapter Menus

Section Hints
[Note: In thinking about hint activation, remember that the set up of the extension is such that once a hint is deactivated, the activation rule will not reset it. The table row is deleted, so one doesn't need to worry about recurrent activation of a hint. Still, it's good to make the activation rules specific.]

Chapter Default Messages

Section Boxted Text

Book 5 Magic

Chapter Magic Wand

The magic wand is carried by the player. The magic wand is small. The description of the wand is "[one of]Your wand is a mid-19th century Celtic model, passed down to you on your Father's side (who used it to conjure food during the great Irish Potato Famine). It appears to be broken in the disaster, though; you'll have to take a second look.[or]Once capable of casting nearly any class-N spell, the spell-selector dial seems utterly broken. You're unsure what will happen when you USE WAND ON SOMETHING.[stopping]".  Understand "wand" or "spell-selector" or "dial" as the magic wand.

Wanding at is an action applying to one visible thing.  Understand "Use wand on [something]" as wanding at.

Check wanding at:
	if the player does not carry the wand:
		say "You don't have the magic wand in hand." instead;
	if the noun is the wand:
		say "Your hand tingles as the wand's self-referential recursion dampener sucks the spell back in before it can affect the very wand that cast it." instead;
	if the denouement is happening or the finale is happening:
		say "Your wand seems drained of energy. It's been a long day." instead;
	if the noun is the mirror:
		say "The spell hits the mirror and is reflected back at you!";
		now the noun is the player;
	if the noun is a backdrop:
		say "Your wand only works on things that it considers important. Apparently, the wand considers [the noun] unworthy of its attention." instead.

[The wand basically cycles through all known spells each time it is used -- it initiates one of the spell verbs. The spells are a circular queue.]
	
The wand counter is a number that varies.
	
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
			try magic-popping;
	increase the wand counter by one.
	

Chapter Spells

Section Doh

Dohing is an action applying to nothing. Understand "use wand on something" or "use the wand on something" as dohing.

Carry out Dohing:
	say "Gods, you are literal. I suppose that you have been looking for the [quotation mark]Any Key[quotation mark] for years. Don't type [quotation mark]something[quotation mark]; type whatever the heck you want to use the wand on. Seriously."

Section Freeze

The currently-frozen-object is a thing that varies.  The currently-frozen-object is the statuette.

Freezing is an action applying to one thing.

Check freezing:
	if the noun is the player:
		say "Luckily, every novice mage learns to repel this effect in first year of academy. The energy dissipates around you." instead.

Carry out freezing:
	if the noun is the lobster mob:
		say "There are just too many of them;  the freeze-spell can't handle them all and fizzles out.";
	if the noun is the spiny lobster:
		say "The magic bolt deflects off the spiny lobster's tail and onto the poor woman instead!";
		try freezing the schoolmarm;
	otherwise:
		say "A bolt of icy-blue lightning shoots from the wand towards [the noun], freezing [pronoun-accusative] instantly.[paragraph break]";
		if the currently-frozen-object is visible:
			let localverb be "thaw";
			say "In response, [the currently-frozen-object] [localverb in correct agreement] out.";
		now the currently-frozen-object is the noun.

Instead of doing something with the currently-frozen-object (this is the frozen-solid rule):
	if the current action is examining:
		let localverb be "appear";
		say "[The currently-frozen-object] [localverb in correct agreement] to be frozen.";
	otherwise if the current action is smelling or dropping:  [or other verbs...]
		continue the action;
	otherwise:
		let localverb be "appear";
		say "You can't do that;  [the currently-frozen-object] [localverb in correct agreement] to be frozen, and thus impervious to all interaction.".
		
The frozen-solid rule is listed first in the instead rules.
	
Section Unfreeze

Unfreezing is an action applying to one thing. Understand "unfreeze [something]" as unfreezing.

Before Unfreezing:
	say "You wish. Casting an N-type spell without a spellbook or components? Get real.";
	stop the action.

Section Push-Pop

Magic-pushing is an action applying to one thing.

The players-popped-location is a room that varies.

Check magic-pushing:
	if the location is Limbo:
		say "[The noun] blurs momentarily, but otherwise seems unaffected." instead;
	if the noun is part of something (called the parent):
		now the noun is the parent.

Carry out magic-pushing:
	if the noun is immune:
		let localverb be "flicker";
		say "[The noun] [localverb in correct agreement] a moment, but seems immune to the spell. You figure it's probably some sort of built-in safeguard.";
	otherwise:
		if the noun is the player:
			say "You feel sick as the world suddenly turns inside-out.";
			now the players-popped-location is the location;
		otherwise:
			let localverb be "blink";
			say "[The noun] suddenly [localverb in correct agreement] out of existence![paragraph break]";
		if the noun is the flight attendant uniform:
			say "The loss of your clothing is of little concern. You have bigger fish to fry. Or at least, lobsters to steam.";
		move the noun to Limbo;
		now the limboed-thing is the noun.

Magic-popping is an action applying to nothing.

Carry out magic-popping:
	if the limboed-thing is in Limbo:
		if the limboed-thing is the player:
			say "Your head reels as everything turns outside-in again.";
			move the player to the players-popped-location;
		otherwise:
			let localverb be "appear";
			say "Out of nowhere, [a limboed-thing] suddenly [localverb in correct agreement]![paragraph break]";
			if the location is First Class:
				let localverb be "roll";
				say "[The limboed-thing] [localverb in correct agreement] down the stairs and comes to a jarring stop downstairs in Business Class.";
				move the limboed-thing to Business;
			otherwise:	
				move the limboed-thing to the location;
		if the limboed-thing is the cart:
			[determine the orientation of the cart when it re-emerges]
			if the location is the lavatory:
				now the blocked direction is west;
			otherwise if the location is in the Plane Area:
				if a random chance of one in two succeeds:
					now the blocked direction is up;
				otherwise:
					now the blocked direction is down;
			otherwise:
				now the blocked direction is north;
	otherwise:
		say "Nothing happens."


Section Cod

The cod is an animal. The description of the cod is "A three-foot long, reddish-brown predatory fish. You guess it weighs at least 25 pounds, and it appears fairly mean and hungry. Crustaceans are its main food[if the introduction is happening]. It is not happy to be out of the water[end if]." Understand "fish" or "Gadus" or "morhua" or "codfish" as the cod.

Instead of talking to the cod:
	say "The cod listens stoically to your rantings and then meditates to clear his mind."

Instead of eating the cod, say "Now is not the time for sashimi. Besides, these guys are endangered."

Instead of taking the cod, say "You're sure it would snap your fingers off if you tried!".

Cod-summoning is an action applying to nothing.

Carry out cod-summoning:
	if the cod is in the location:
		say "The cod sparkles a bit, but nothing happens.";
	if the lobster mob is in the location:
		say "Your attempt to summon a creature, but the sheer quantity of radiant animal magic overpowers your wand.  There will be no summoning in Business class today.";
	otherwise:
		move the cod to the location;
		say "You hear a [one of]strange[or]familiar[stopping] tingling sound; a large cod fish suddenly materializes."


Section Unjamming

Unjamming is an action applying to one thing.

Carry out unjamming something (called the item):
	let localverb be "vibrate";
	if the item is the player:
		say "Unfortunately, this spell is certainly not enough to get you out of this predicament.";
	otherwise if the item is not jammed:
		say "[The item] [localverb in correct agreement] a bit, but nothing else happens.";
	otherwise:
		let localverb2 be "come";
		say "[The item] [localverb in correct agreement] for a moment, and suddenly [localverb2 in correct agreement] unstuck!";
		now the item is not jammed.

Book 6  Scenes
 
Chapter Introduction

Introduction is a scene. Introduction begins when play begins. The introduction ends when the player is in the Tail section.


Chapter Disaster Strikes

Disaster Strikes is a scene. Disaster strikes begins when the introduction ends. Disaster strikes ends when the greeted-flag is true.

The stakes is a number that varies. The stakes is zero.

When disaster strikes begins:
	say "The plane slams into the ocean, skipping like a rock, before sinking like one.[paragraph break]The aft section of the plane pitches downward, flipping you sideways. Water jets into the cabin from seams that are not as tight as you had hoped. Moments later, you are ankle-deep in frigid salt water."
	
Chapter Breakout

Cockpit-Steve is a truth state that varies. Cockpit-Steve is false.
[cockpit-steve becomes true when you and Steve enter the cockpit for the first time]

Breakout is a scene. Breakout begins when Disaster Strikes ends. Breakout ends when the player is in the Whirling Vortex.	

When Breakout begins:
	now the block stage business flag is true.
	
After going when breakout is happening:
	say "[one of]Meretzky follows you, taking pot shots at lobsters with his wand as he does so. Lobster pot shots[or]You glance behind you. Meretzky follows closely behind you, his wand held at the ready[or]Steve follows closely behind you[or]The High Wizard follows you silently[or]From behind you, you hear the sizzle of Meretzky's wand[at random]."
	
[TODO add a bunch more of these, above]
	
After going when Breakout is happening and the location is the Cockpit:
	if Cockpit-Steve is false:
		now Cockpit-Steve is true;
		say "You burst into the cockpit, and Steve follows close behind you, laying down some magical suppressing fire with his wand. Shards of chitin fly through the air.[paragraph break]You scan the control panel for anything that looks like a radio, but you are just not familiar with mortal technology. Steve sees your confusion and reaches over to a side panel, flipping a switch marked [quotation mark]IF Filter[quotation mark]. There is a burst of static.[paragraph break]The High Wizard points to the panel and says, [quotation mark]It should work now. Press the orange button to transmit. It won't help though,[quotation mark] he remarks with a sigh, [quotation mark]it would take incredible power to penetrate the magical barrier around this plane. I'm sorry to say that beings that powerful have not existed since the Early Times. Not to put a damper on things, but -- we're doomed.[quotation mark] With a hint of resignation, he adds, [quotation mark]well, at least you can say good-bye.[quotation mark][paragraph break]";
		now the block stage business flag is true;
		now the button is part of the control panel;
	otherwise:
		say "Steve looks suggestively at the ";
		if the button is once-pushed:
			say "vortex.";
		otherwise:
			say "orange button."
		

Chapter Denouement

The Denouement is a scene. The Denouement begins when Breakout ends. The Denouement ends when the player is in Room 2305.

Chapter Finale

The Finale is a scene. The Finale begins when the Denouement ends.

Rule for printing the player's obituary:
	if the endgame is:
		-- drowned:
			say "A tidal bore of cold ocean water slams into the cabin like pile driver, smearing you on the opposite wall like a toddler with cray-pas in a heat wave.";
		-- lost:
			say "*** LOST ***";
		-- won:
			say "The laptop screen looks odd -- smaller and smaller echoes of itself trailing off into the distance.[paragraph break]The game banner prints. It's odd name (something about lobsters) is typical of hastily written speedIF. Still, it might be worth playing.[paragraph break]You decide to give it the benefit of the doubt and start typing in commmands. Friends gather around you to see what you are doing, making occassional comments as you trip over your high-heels and learn to use your wand.[paragraph break]Congratulations, player. You are home."