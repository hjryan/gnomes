# Problem Statement

A group of cave gnomes, while in a dark cave, have their foreheads painted red or blue. They cannot see the color of their own foreheads, or anything else while they are in the cave. The gnomes are asked to exit the cave one by one and automatically sort themselves by color without communicating in any way after they leave the cave (verbal or non-verbal).

# How did they do this?

The gnomes, upon exiting the cave, form an array. Each gnome after the second gnome analyzes the array with which they are met. If the array is entirely gnomes of a single color, the exiting gnome stands at the end of the array. He does this because if he is the same color as the other gnomes, he will fit right in, and if he is not, he will not disrupt their order. If the gnome array is composed of more than one color, he inserts himself where the gnomes of one color meet the gnomes of another color. This allows each exiting gnome to sort the gnome who emerged immediately before him by sorting himself.

# How did you arrive at that answer? Show your process.

I created an Excel book with multiple spreadsheets, and corresponding sets of rules for each. I then asked my coworker Nigel to say "blue gnome" or "red gnome" every thirty seconds for ten minutes. These were the gnomes emerging from the cave. I sorted each sheet according to their rule set, and noted that the insert process was by far the simplest and most aesthetically satisfactory. I then wrote a program to make sure that said rule set was not lacking in any way, and could be performed by even the least capable of non-blind gnomes.

If clear boundaries between groups are necessary, a gnome exiting the cave should join the largest uniform group. If none exists, the gnome should stand alone (becoming the largest uniform group). The newest member of any group (which they had, of course, joined because it was of uniform color) must pay attention to the gnome that emerges immediately following him. If said gnome joins his group, he knows he is the same color as the other members. If said gnome declines to join the group, the newest member knows he is not the same color as the other members. Because he now knows what color he is not (and can infer what color he is), as well as what color the newcomer is, he knows whether he should stand with the newcomer or alone. If he chooses to stand alone, the newcomer knows that he must be the same color as the group he declined to join earlier, and must decide to join it now. This takes longer, involves more movement, and is generally messier.

If the gnomes are really not up for a challenge, they could always remove some of the paint from their own foreheads in order to determine with which group they belong.
