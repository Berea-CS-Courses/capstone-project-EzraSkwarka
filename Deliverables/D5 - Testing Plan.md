REF: https://docs.google.com/document/d/13Sw5eTgmYt8oLavVeZOz7aWoBfNTwDNmMOVq56VqlfI/edit?usp=sharing

# Testing Plan
To test the functionality of my project and suss out as many bugs I'm able to find I intend to implement two types of system tests. I will be using ad-hoc and end-user tests.

To explain exactly what I mean by that, my intent for the end-user ad hoc tests is to have a selection of other students, some in the class, some not,  sit down and play a build of my game. I will outline the control scheme for them, give them a very loose goal and otherwise let them muck about in the game to see how they experience the game and how they interact with it. I intend to be as hands-off as possible during these tests, and I will only answer questions the user has on controls but otherwise let them determine the mechanics themselves.

Once I've run all of these tests, I intend to take a step back and reflect on what I found him and implement a bug fix plan for how to deal with the specific issues found during the testing process. As this is an alpha build and not a beta build, I'm focusing mainly on gameplay instead of game feel. Any nontechnical issues that I find will be recorded as an individual GitHub issue on my repo page.

## End-to-End Ad-Hoc User Tests
In the Google Doc, you had end-to-end testing and ad-hoc testing as different types of tests; due to the systemic nature of the game I've created, I found it helpful to combine these two tests. Specifically, aspects of horizontal and vertical end-to-end testing seem particularly poignant when evaluating the functionality and feel of the game I've created. Of course, it's an ad-hoc user test because I wanted opinions and experiences of the game that were not my own.

The way I conducted these tests is I gave the player a stable build of the game (specifically the version that was created after I finished implementing the renown system), gave them a goal in the loosest of senses, and let them play about in the game world to their hearts content. While they were playing, I answered any questions they had about the game's control scheme, but I made them figure out the mechanics themselves. During the tests, I took notes on anything I, as the developer, noticed as well as any comments they made that I thought were particularly useful. At the end, I asked them how games literate they consider themselves, how intuitive or unintuitive they found the game (both mechanics and controls), and then I asked them for any specific comments or feedback they would like to make. I took the notes in the form of a bulleted list, anything I observed is left as a bulleted entry, and anything that they said is in quotations.

For clarity, I will be referring to the users by different names, but those are not actually the names of the students who did the tests; they are simply names I chose to give them.

### Ad-Hoc
#### Test 1: Noah
  - the movement speed and acceleration seems to be too high, they're having trouble getting to where they need to be
  - it was not initially clear to them that their mouse needed to be over the node that they were trying to interact with
  - "I like this character, they're very cute, they remind me of Eve from Wall-E"
  - They kept trying to use the axe on the rocks and the pick on the trees, it was not immediately clear to them that the tools were for different purposes
  - "how the hell do I get out of this,"  this was in reference to trying to close the structure menu after they had built a pebble refiner
  - at no point did they try to use the level up button on the different structures, they also asked what the 0 was for on the drawing of the structures
  - "I have no idea what I'm supposed to be doing," while I was deliberately vague on their goal, it might be useful to give them specific directed goals in game to help explain the mechanics. This isn't really surprising to me, I knew at some point I was going to need to implement a tutorial, but this does shed light on how I should implement it
  - "cool saving doesn't do anything," since they didn't get any feedback when they hit save, they didn't think that it did anything

  Games Literate: 3

  Intuitiveness: 7*

  Comments: "I think the game could use more direction,  I didn't ever really know what to do. I have no idea what these numbers mean, they could use clear labels. A lot of times while I was playing I had the thought of 'I don't know what that means, but something sure is happening.'"

  Reflection: I'm absolutely not surprised at all to find that Noah was confused as to what they needed to do while they were playing the game. As I said, I gave them a goal in the absolute loosest of senses. In this case, I had asked Noah to gather 1,000 shiny rocks, and they spent a lot of time simply trying to figure out how to interact with the world. This does reiterate to me that I need to create a tutorial for the game, but it also shows me what kind of tutorial I want to create. I also noted a couple of polishing issues, namely that the player acceleration seems to be a little bit too fast for Noah. I've got used to it so I know how to work around it, but after watching them play, it does seem like either accelerating slower or having a lower maximum speed would be more welcoming for new players. That also gives me an idea for a potential minor relic, one that increases movement speed though determining the ceiling on a relic like that might be a bit difficult.


#### Test 2: Sally
  - "why do I already have items," Sally immediately checked her inventory and saw that it was pre-populated with a random amount of items, I have this set up that way purely for debugging purposes but it is a reminder that I need to remove them before the final build of the game
  - "do they all have faces," yes, all the nodes do have faces and that's on purpose, I will not comment on the potential sentience of the nodes
  - because of the specific arrangement of items the player had an inventory when they spawned in, they only had rocks and shiny rocks in their inventory, as such when they went to chop down a tree they were unable to pick up the sticks. They did eventually figure out how to pick items up in the inventory and move them about so that they could stock similar resources but it did take them some time to figure that out
  - "how do I interact with the cauldron"
  - "cool I can make this recipe, I have no idea what it costs"
  - "but what does it do," they said this several times
  - when the user saw that they needed more trees, they did realize that the way to cause that was to break rocks so that trees could spawn into the world, so I'm glad to see that that system is clearly intuitive
  - Sally also seem to be struggling with the movement, it was hard for them to make fine short movements they kept overshooting their goal

  Games Literate: 8.5

  Intuitiveness: 6

  Comments: "I like it, but it definitely has room to grow. I've never really clear on what I'm trying to do or what the goal is. I am a fan of watching the rock's blow up into a bunch of baby rocks, but it's kind of hard for me to control the character"

  Reflection: Sally expressed similar sentiments to Noah in that they wish there was a bit more direction when playing the game. The goal I gave Sally was to get the pebble refiner up to level 50, which they seemed to be able to do easily enough after they figured out how to interact with and build the pebble recliner. They also seemed to struggle quite a bit with the structure menu control scheme which ends up being a common theme throughout the tests. This player was very talkative and very persistent, and the notes they provided are very helpful for me.

#### Test 3: Zach
  - Zach was very focused on power leveling but different structures, they had gotten both the mouse tool and the pebble recliner to level 250, somehow???
  - once they had gotten them to these high levels, I noticed that the mouse tool wasn't actually doing what it was supposed to do, as the increase in resource mat drops did not scale with the mouse tool, it only scaled with Zacks renown
  - "this is a good concept", they said this while the pebble refiner was out putting 25 shiny rocks per click
  - "I like having the stats tied to buildings"
  - Zach did express some sentiment that they wish there was more direction in the game, and it took them some time to figure out how to do things but once they got it the first time it was easy for them to remember
  - "I like how you have rocks in different areas, it makes me wish there were like bigger and different trees also," this is another Point into the resource diversity that I need to implement before the game is fully complete

  Games Literate: 9

  Intuitiveness: 7

  Comments: "I don't understand why the structures are found to the P button, and needing to right click and then hit escape to get out of that menu felt really weird. I would have expected the Escape key or P alone to have gotten me out of those menus. Overall I like the game, it has a lot of potential but I wish it did a better job of telling me how to use it"

  Reflection: Zack expressed very similar sentiments to Sally and Noah, which isn't surprising considering that this is still an alpha build of the game and I was only focused on functionality. It's giving me a lot of direction as I move into the next phase where I actually Implement aspects of game field to make the game a bit more rewarding to play aside from just the generation of big numbers. They did make some good points about the structure menu, because of how I coded it, I immediately knew how to get out of it but I completely understand their frustration when they were trying to use it. I agree with them that simply hitting the P or the Escape I'm alone should have taken them out of the menu where they were no I'm not 100% sure yet how to implement that, it's definitely going into the GitHub issues.

#### Test 4: Red
  - "I run so fast"
  - while red was running around, I noticed that they would kind of circle around items when they were trying to pick them up, so I might need to increase the default speed for the magnetism vacuum
  - "Its green, so I believe I should be able to craft it," in reference to placing structures when they did not have sufficient materials to build them, I agree if it's green I would also think I have everything to build it
  - "I don't know what was different, but that was something new," in reference to finally being able to get out of the structures menu
  - Red immediately picked up that they were trying to get trees but all they were finding were rocks, so to allow more trees to spawn they needed to break rocks
  - while trying to mine some of the harder rocks, namely uranium and mithril, they got discouraged after about three hits and thought that they worked yet able to break those kinds of rocks, I might need to implement some sort of feedback or health bar for the Rocks so that they know they're making progress
  - "Oooh, it's like Cookie Clicker but more rewarding," in regards to spamming the creation of shiny rocks once they've gotten the pebble recliner up to about level 30
  - "did you know that strip mining creates trees"
  - because I had given them the goal of get 50 renown, but I didn't tell them how to do that, they automatically assumed that the only way to get renown was to have shiny rocks in their inventory when they restarted. This wasn't the case, but it does make me think that different resources should scale differently in the renown calculation because some of them are innately more difficult to acquire
  - at one point red gave themselves the goal of they wanted to fill up all of the mine tiles with mithril rocks because "I like this color, it's blue." this led to the discovery of an interesting bug even that it was possible for rock nodes to spawn underneath other Rock nodes because I did not properly implement the Collision mask for them so once they had gotten seven of the slots visually filled up nothing else was spawning on screen. After delving into the save file I was able to see exactly what was happening

  Games Literate: 10

  Intuitiveness: 9.5

  Comments: " well I like zooming about on the map, I felt like I was moving way too fast at first and it took some getting used to. I did find the game intuitive for the most part but the structures menu was extremely difficult to navigate and it's why I had to mark that down half a point. I think that the concept is very promising, but the game might benefit from a bit more structure and direction as well as feedback and labeling"

  Reflection: People are really just pummeling me about the structures menu, which is fair because it is a very important part of how the game function and it is not at all intuitive. Red was able to help me find a myriad of bugs throughout the game, which makes sense because they are a computer science major and they apparently do a lot of data and bug testing on the side. Full disclosure, Red is a student in the class, so they did have a bit more familiarity with the project than the other testers, and that definitely showed in how they interacted with the game and its systems. All in all, they also provided some very useful feedback.

### Summary
  I found this type of testing to be very useful, both in finding out how players interpret the game that systems and discovering bugs. These tests definitely shed light on how I want to implement tutorial systems moving forward, as well as highlighting some of the communication deficiencies that already exists within the game. The bugs that I have found through this process as well as my thoughts and how to fix them are:

  -  it's very difficult for the user to interact with the structure menu, they should also be able to close it by hitting out of the P or Escape key once they are in build mode

  -  when the user goes to place a structure it is always showing them the green version, because I have forgotten to implement collision masks on completed structures, the players are currently able to build structures on top of structures

  - similarly, the fact that the structure says up is green when they're trying to place it in the world even if they don't have enough materials makes them think that they should be able to place it. To fix this I think I want to list the required materials in the description box within the structures menu (which is something I intended to have any way at one point) and if the user does not have sufficient materials to build the structure, it either needs to show up as read or I need to prevent them from being able to select it as an active structure within the menu itself

  -  two issues with the node collision masks, something's going wrong that allows rocks to spawn underneath rocks, and that's probably a deficiency with the node spawner, and either the collision masks for trees and rocks are mismatched such that trees can spawn on the same tile as a rock or it's emblematic of the same issue before

  -  something is wrong with the pick power calculation, it has stopped considering the structure level of mouse tool objects, I imagine it's probably still looking for the outmoded mouse_tool object as opposed to the variation of the structure parent objects that I'm now using

  - additionally, there's been a typo where the mouse tool structure is getting faster with each level on it as opposed to slower like it's supposed to. That is to say, once it reaches structure level 6 or higher leveling it up always takes a tenth of a second flash 6 frames when in reality it is supposed to get 6 frames slower with each level not faster

  -  not a bug per se, but there needs to be some tweaking with both the movement and the player collision system, which is already an issue on the GitHub repository, but it does bear repeating because these tests confirmed my suspicions that it didn't play correctly


### End-to-End

These tests were slightly different than the ad hoc test, but I did record information the same way. For the end-to-end test I gave the users a specific system that I wanted them to try and break. Though I did ask them to try to stress test specific systems, I did also ask them for overall input on the game; my reflections on each test should address how they handled the particular system I asked them to break

#### Test 5: Wesley

 I asked this user to do their best to break the movement and collision system and put either themselves or other objects where they didn't belong.  They did struggle a little bit with getting the interactable controls of the game down, but once I told them the keybinds they were able to navigate the game fine. During their tests, they found out that while it wasn't possible for them to physically clip their character into any of the objects or out of the world, it was possible for them to build a structure on top of the player character. They also found that they were able to build structures on top of structures, and while they couldn't build a structure on top of a node, it was entirely possible for a node to spawn underneath a structure. Because it was possible for nodes to spawn on top of each other, this user made a point of getting all the different modes to spawn on a single tile.

Games Literate: 6-8

Intuitiveness: 6

Comments: "This looks great as a project, but as a finished product, it still has a long way to go. The first thing I found myself wanting was a bit more animation, specifically it felt weird that the player character was just zipping around on the XY axis with no clear indication that they were moving. Well, I didn't have any problems specifically with moving around and colliding and objects, it felt very weird to me that if I was touching a collectible object the only way to get away was to move in the exact opposite direction of the object. I did not like that."

Reflection: This user's feedback very helpful in showing me where I need to go, they didn't have any comments on most of the actual gameplay type mechanics because that's not what I asked them to focus on, but their ideas on the movement and collision system are very enlightening. To be perfectly honest, I was a little bit lazy when calculating collision, simply allowing gamemaker studio to handle its default way, but it's clear to me that moving forward, I'm going to have to implement my own proper system of collision. I've had a lot of collision issues throughout this project which is kind of scared me away from fixing this system, but if it causes this much trouble for the player it clearly needs to be addressed.


#### Test 6: Francis

I asked this player to mess around with the tools and nodes and give me feedback on if they could break those interactions or how they felt overall. They also initially thought the player moved around much too fast and for a while avoided going into the volcano or Tundra regions because they assumed the tiles on the ground we're going to hurt them. Because they were trying to hit every button to see what it would do they did highlight that my grid overlay has gotten offset incorrectly, and they also pointed out a couple of spelling errors that I have. They wondered if it was possible to change the player's name and break structures, neither of which are currently available, though I do intend to implement the ability for the player to change the character's name. As they were messing around with the tools and the rock nodes, they frequently found themselves discouraged because it seems like some of the nodes were breaking. Part of that had to do with at first they didn't realize they had to put the mouse over the item they were trying to click on to break it, but with a little bit of direction, they quickly realized that and afterward stopped struggling with it. One thing they pointed out (that I agreed with) was that it might be useful to display a sort of health bar on nodes or to implement some sound/feedback to show that progress is being made on breaking the node.

Games literate: 5

Intuitiveness: "7/8, once things were pointed out it made sense, but a lot of things I would not have figured out on my own"

Comments: "The player moves way too fast and I don't ever really know what I'm doing. I think the game would benefit for more feedback from the systems and more direction from the Developers. Maybe some sort of simple questing or tutorial system would go a long way"

Reflection: I got to say I generally find myself agreeing with Francis. Some of these things I already knew going in, but getting second opinions and reiteration is always helpful. Regarding the system I specifically asked them to try to break, luckily they didn't uncover any new bugs. There is the issue with nodes double spawning, but this is something I'd already uncovered and know how to fix; it's just implementing that.

#### Test 7:  Grey

I asked this user to try to break the structures system, and oh boy howdy, they really gave me a workout. The first thing they discovered was that the mouse tool structure didn't actually do anything, this is disappointing because it is a core feature. They found that while it was possible to build structures on top of each other, only the topmost one would be interactable but nevertheless, it shouldn't be possible to stack structures on top of each other. The user also tried to figure out exactly how many objects would have to be on the screen at a time for the game to crash, but they never even approached that limit (though they did cause severe bloat to their save file). They described what they were doing as trying to find all the speedrun strats, which is actually a pretty interesting way to look at end-to-end testing. They also found they were able to build structures on top of the Oasis, which doesn't cause any mechanical or gameplay problems, but aesthetically it looks weird that you can put a pebble refiner on top of a pool of water and it just floats there. They would have seen the same thing if they tried to build it on Ocean tiles; however, they never tried that. Now, the most broken feature that they found had to do with the structure building menu. They quickly realized that the level-up buttons only updated the required input when the button was created and not as it was used. What this meant is if they had a sufficient quantity of shiny rocks, for instance, say they had 800 in their inventory which is not an unreasonable number to reach, if they built a new pebble refiner, opened the menu, and spammed the level up button, it would only cost them a single shiny rock per level as opposed to the exponential scaling amount that it was supposed to cost them. This very quickly shattered the in-game economy. This is not something I ever would have thought to try, but it is something that needs to be addressed and needs to be addressed quickly.

Games literate: 10

Intuitiveness: " overall I'd give it a 6, most of the core mechanics are good and clear to understand, but the structure menu is just so bad. And it took me quite a while to figure out what keys I needed to press to be able to pull up the menus at as far as I could tell you didn't do anything. It strikes me as weird that esc and P are the buttons that pull these important menus up and are not the ones I tried to use first"

Comments: "I think the core gameplay loop is good, and because of the type of genres of his game that already exists it was easy enough for me to figure out what was going on. I would have liked it if more things explicitly told me what they did, what they cost, and how they affected the world, and I really didn't understand the prestige mechanic calculations. I think maybe implementing a confirm menu so the player knows how much Prestige they get on a reset without just completely resetting it's something that would serve the game well"

Reflection: I'm not sure if you could tell, but this was another one of the senior computer science majors, so they clearly knew how to quickly try to break my system, and they succeeded. They were able to highlight a myriad of severe but specific bugs that need to be addressed, as well as hit on a bunch of quality-of-life issues that I can tackle moving forward.

### Summary
I don't want to discount the usefulness of the more open-ended ad-hoc testing, but I feel at the alpha stage where I'm at that end-to-end testing is a bit more useful and productive. While it is technically accurate that we found more new bugs during the ad hoc testing, that's because a lot of the bugs discovered during end-to-end had already been found, so I didn't feel the need to repeat them every time someone else discovered them. I feel that because at this stage, the game is open-ended and doesn't even have a basic tutorial system, if I give the user something specific to try to do, they're going to be able to provide more constructive feedback than if I simply went hands-off and told them to do whatever. As for new bugs found during this section and my thoughts and how to solve them they are:

-  one of the big ones that came up was the overlapping nodes issue, I imagine this will be a simple fixed because I probably just forgot to mark the note parent object as solid

- as for why the mouse tool isn't working, this one bugs me quite a bit, because as far as I can tell it should be able to work. Right now I don't really have any ideas on how to solve it but I do at least know where the issue would be, and that's in the calculation of the global Mouse level

-  another important one found was the bug with the crafting buttons and structure levels. I know the issue is because they have a dynamic input and a static output, as opposed to all the other buttons, which have a static input but a dynamic output, that it's just not recalculating the necessary input when it goes to level up the structure. I can think of a couple different ways to do this, but the biggest challenge will be finding an elegant way to do it
