"Wolfsbane" by Jason Lautzenheiser

Chapter - Definitions

to rulesOn:
	(- RulesOnSub(); -)

[when play begins:
	rulesOn;]


A person can be turned or unturned.  A person is usually unturned.
A person can be transforming.  A person is usually not transforming.

Chapter - Player

Before examining the player:
	if the player is turned:
		say "The the rage and blinding hatred you manange to remain some slight control to take a look at yourself.  You are a unnaturally large wolf." instead;
	otherwise:
		say "You are currently in your human form." instead.

Chapter - Regions

The Indoors is a region.  The outdoors is a region.

Chapter - Things

Section - Torn page

The torn page is a thing.  The torn page is carried by the player.  The description of the torn page is "A page torn from an old tome you found in the castles tower."

[Instead of reading the torn page:
	say "The page contains a simple drawing of a plant."]

Section - Full Moon

Every turn when the location is in outdoors and the moon is not exposed:
	if the location is in outdoors for more than 1 turn:
		if a random chance of 1 in 2 succeeds:
			say "The moon slides from behind the clouds.";
			now the moon is exposed;
		otherwise: 
			say "The clouds are moving quickly, you only have a few moments before the moon is exposed and you begin to turn."
	
Every turn when the moon is exposed and the player is unturned and the player is in outdoors:
	if the moon is exposed for 1 turn:
		now the player is transforming;
		say "You feel the burn of the moon as it beams down on your skin.";
	if the moon is exposed for 2 turns:
		say "You feel your body pop as masses of thick, corse hair begin to sprout through the surface of your skin.";
	if the moon is exposed for 3 turns:
		say "Your mind starts to cloud as the animal side takes control.";
	if the moon is exposed for 4 turns:
		say "The animal has taken over, your body is corrupted, you are no longer yourself.";
		now the player is turned.
		
The full moon is a backdrop.  The moon is everywhere.  The moon can be exposed.  The moon is not exposed. The description of the moon is "[if the location is in indoors]The ambient light from the full moon fills the room, but luckily it is not in your direct sight.[otherwise if the moon is exposed]The full moon shines brightly in the night sky.[else]The moon is temporarily hidden behind the clouds.[end if]"


Chapter - Locations

Section - Old Shack

The old shack is a room in Indoors . The printed name of the old shack is "Old Shack".  The description of the old shack is "The old shack lies in the heart of the forest, far from civilization.  It's your hideaway when the full moon rises.  The light from the [full moon] fills the room with enough illumination to allow you to see."

before going to the old shack:
	now the moon is not exposed;
	if the player is transforming:
		now the player is not transforming;
		say "The effects of the exposure to the moon quickly fade."



Section - Wooded Path

The wooded path is a room in Outdoors.  The printed name of the wooded path is "Wooded Path".  The description of wooded path is "The path winds through the dense woods.  To the south is a small shack.  The trees open up enough along the path where [if the moon is exposed]the [full moon] is shining brightly[else]you can just make out the [full moon] hidden behind some clouds[end if]."
The wooded path is north of the old shack.


