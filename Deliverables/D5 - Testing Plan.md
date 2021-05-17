REF: https://docs.google.com/document/d/13Sw5eTgmYt8oLavVeZOz7aWoBfNTwDNmMOVq56VqlfI/edit?usp=sharing

# Testing Plan
In order to test the functionality of my project as well as to suss out as many bugs I'm able to find, I intend to implement two types of system tests. I will be using ad-hoc and end-user tests.

To explain exactly what I mean by that, my intent for the end-user ad hoc tests are to have a selection of other students, some in the class some not,  sit down and play a build of my game. I will outline the control scheme for them, give them a very loose goal and otherwise let them muck about in the game to see both how they experience the game and how they interact with it. I intend to be as hands-off as possible during these tests, and I will only answer questions the user has on controls but otherwise let them determine the mechanics themselves.

Once I've run all of these tests, I intend to take a step back and reflect on what I found him as well as Implement a bug fix plan for how to deal with the specific issues found during the testing process. As this is where an alpha build and not a beta build, I'm focusing mainly on gameplay as opposed to gain feel. Any nontechnical issues that I find will be recorded as an individual GitHub issue on my repo page.

## End-to-End Ad-Hoc User Tests
In the Google Doc, you had end-to-end testing and ad-hoc testing as separate types of tests, due to the systemic nature of the game I've created I found it useful to combine these two tests. Specifically, Aspects of horizontal and vertical end-to-end testing seems particularly poignant when evaluating the functionality and feel of the game I've created, and of course it's an ad-hoc user test because I wanted opinions and experiences of the game that were not my own.

The way I conducted these test is I gave the player a stable build of the game (specifically the version that was created after I finished implementing the renown system), gave them a goal in the loosest of senses, and let them play about in The Game World to their hearts content. While they were playing, I did answer any questions they had about the control scheme of the game, but I made them figure out the mechanics themselves. During the test I took notes on anything eyes the developer noticed as well as any comments they made that I thought were particularly useful and at the end I asked them how Danes literate they consider themselves, how  intuitive or unintuitive they found the game (both mechanics and controls), and then I asked them for any specific comments or feedback they would like to make. I took the notes in the form of a bulleted list, anything I observed is simply left as a bulleted entry, and anything that they said is in quotations.

For clarity I will be referring to the users by different names, but those are not actually the names of the students who did the tests, they are simply names I chose to give them

#### Test 1: Noah
  - the movement speed and acceleration seems to be too high, they're having trouble getting to where they need to be
  - it was not initially clear to them that their mouths needed to be over the noted that they were trying to interact with
  - "I like this character, they're very cute, they remind me of Eve from Wall-E"
  - They kept trying to use the axe on the rocks and the pick on the trees, it was not immediately clear to them that the tools were for different purposes
  - "how the hell do I get out of this,"  this was in reference to trying to close the structure menu after they had built a pebble reffiner
  - at no point did they try to use the level up button on the different structures, they also asked what the 0 was for on the drawing of the structures
  - "I have no idea what I'm supposed to be doing," while I was deliberately vague on their goal, it might be useful to give them specific directed gold in game to help explain the mechanics. This isn't really surprising to me, I knew at some point I was going to need to implement tutorial but this does shed light on how I should implement it
  - "cool saving doesn't do anything," since they didn't get any feedback when they hit save, they didn't think that it did anything

  Games Literate: 3
  Intuitiveness: 7*
  Comments: "I think the game could use more Direction, I didn't ever really know what to do. I have no idea what these numbers mean, they could use Clear labels. A lot of times while I was playing I had the thought of 'I don't know what that means, but something sure is happening.'"

  Reflection: I'm absolutely not surprised at all to find that Noah was confused as to what they needed to do while they were playing the game. As I said I gave them a goal in the absolute loosest of senses,  in this case I had asked Noah to gather 1,000 shiny rocks, and they spent a lot of time simply trying to figure out how to interact with the world. This does reiterate to me that I need to create a tutorial for the game, but it also shows me what kind of tutorial I want to create. I also noted a couple of polishing issues, namely that the player acceleration seems to be a little bit too fast for Noah. I've got used to it so I know how to work around it, but after watching them play it does seem like either accelerating so or having a lower maximum speed would be useful for new players. That also gives me an idea for a potential minor relic, one that increases movement speed though determining the ceiling on a relic like that might be a bit difficult.


#### Test 2: Sally
  - "why do I already have items," Sally immediately checked her inventory and saw that it was pre-populated with a random amount of items, I have this set up that way purely for debugging purposes but it is a reminder that I need to remove them before the final build of the game
  - "do they all have faces," yes, all the nodes do have faces and that's on purpose, I will not comment on the potential sentence of the nodes
  - because of the specific arrangement of items the player had an inventory when they spawned in, they only had rocks and shiny rocks in their inventory, as such when they went to chop down a tree they were unable to pick up the sticks. They did eventually figure out how to pick items up in the inventory and move them about so that they could stock similar resources but it did take them some time to figure that out
  - "how do I interact with the cauldron"
  - "cool I can make this recipe, I have no idea what it costs"
  - "but what does it do," they said this several times
  - when the user saw that they needed more trees, they did realize that the way to cause that was to break rocks so that trees could spawn into the world, so I'm glad to see that that system is clearly intuitive
  - Sally also seem to be struggling with the movement, it was hard for them to make fine short movements they kept overshooting their goal

  Games Literate: 8.5
  Intuitiveness: 6
  Comments: "I like it, but it definitely has room to grow. I've never really clear on what I'm trying to do or what the goal is. I am a fan of watching the rock's blow up into a bunch of baby rocks, but it's kind of hard for me to control the character"

  Reflection: Sally since you expressed similar sentiments to Noah in that they wish there was a bit more direction when playing the game. The goal I gave Sally was to get the pebble refiner up to level 100, which they seemed to be able to do easily enough after they figured out how to interact with and build the pebble recliner. They also seems to struggle quite a bit with the structure menu control scheme which ends up being a common theme throughout the tests. This player was very talkative and very persistent, and the notes they provided are very helpful for me.

#### Test 3: Zach
  - Zach was very focused on power leveling but different structures, they had gotten both the mouse tool and the pebble recliner to level 250
  - once they had gotten them to these high levels, I noticed that the mouse tool wasn't actually doing what it was supposed to do, as the increase in resource mat drops did not scale with the mouse tool, it only scaled with Zacks renown
  - "this is a good concept", they said this while the pebble refiner was out putting 25 shiny rocks per click
  - "I like having the stats tied to buildings"
  - Zach did express some sentiment that they wish there was more Direction in the game, and it took them some time to figure out how to do things but once they got it the first time it was easy for them to remember
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
  - because I had given them the goal of get 50 renown but I didn't tell them how to do that, they automatically assumed that the only way to get Renown was to have shiny rocks in their inventory when they restarted. This wasn't the case, but it does make me think that different resources should scale differently in the Renown calculation because some of them are innately more difficult to acquire
  - at one point red gave themselves the goal of they wanted to fill up all of the mine tiles with mithril rocks because "I like this color, it's blue." this led to the discovery of an interesting bug even that it was possible for rock nodes to spawn underneath other Rock nodes because I did not properly implement the Collision mask for them so once they had gotten seven of the slots visually filled up nothing else was spawning on screen. After delving into the save file I was able to see exactly what was happening

  Games Literate: 10
  Intuitiveness: 9.5
  Comments: " well I like zooming about on the map, I felt like I was moving way too fast at first and it took some getting used to. I did find the game intuitive for the most part but the structures menu was extremely difficult to navigate and it's why I had to mark that down half a point. I think that the concept is very promising, but the game might benefit from a bit more structure and direction as well as feedback and labeling"

  Reflection: while people are really just pummeling me about the structures menu, which is fair because it is a very important part of how the game function and it is not at all intuitive. Red was able to help me find a myriad of bugs throughout the game, which makes sense because there are computer science major and they apparently do a lot of data and Bug testing on the side. Full disclosure red is a student in the class, so they did have a bit more familiarity with the project than the other testers, and that definitely showed in how they interacted with the game and its systems. All in all, they also provided some very useful feedback.

### Summary
I found this type of testing to be very useful, both in finding out how players interpret the game that systems as well as discovering bugs. These tests definitely shed light into how I want to implement tutorial systems moving forward, as well as highlighting some of the communication deficiencies that already exists within the game. The bugs that I have found through this process as well as my thoughts and how to fix them are:

-  it's very difficult for the user to interact with structure menu, they should also be able to close it by hitting out of the P or Escape key once they are in build mode

-  when the user goes to place a structure it is always showing them the Green version, because I have forgotten to implement Collision masks on completed structures the players are currently able to build structures on top of structures

- similarly, the fact that the structure says up is green when they're trying to place it in the world even if they don't have enough materials makes them think that they should be able to place it. To fix this I think I want to list the required materials in the description box within the structures menu (which is something I intended to have any way at one point) and if the user does not have sufficient materials to build the structure, it either needs to show up as read or I need to Simply prevent them from being able to select it as an active structure within the menu itself

-  two issues with the node Collision masks, something's going wrong that allows rocks to spawn underneath rocks, and that's probably a deficiency with the node spawner, and either the Collision masks for trees and rocks are mismatched such that trees can spawn on the same tile as a rock or it's emblematic of the same issue before

-  something is wrong with the pick power calculation, it has stopped considering the structure level of mouse tool objects, I imagine it's probably still looking for the outmoded Mouse to object as opposed to be variation of the structure parent objects that I'm now using

- additionally, there's been a typo where the mouse tool structure is getting faster with each level on it as opposed to slower like it's supposed to. That is to say once it reaches structure level 6 or higher leveling it up always takes a tenth of a second flash 6 frames when in reality it is supposed to get 6 frames slower with each level not faster

-  not a bug per se, but there definitely needs to be some tweaking with both the movement and the player Collision system, which is already an issue on the GitHub repository, but it does bear repeating because these tests confirmed my suspicions that it didn't play correctly
