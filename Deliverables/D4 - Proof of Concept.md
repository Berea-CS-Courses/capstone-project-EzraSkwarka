# Proof of Concept

This is an overview of both my plans and progress in creating my proof of concept for the mine refine upgrade game.

### What external software or tools are needed to run your proof-of-concept?
The obvious software that I need to create my proof of concept is the native IDE for the game engine I'm using, Game Maker Studio 2. However once I have developed my proof-of-concept and at my Benchmark points, I'll be able to export a stand-alone executable, so no additional software tools are needed to run the proof-of-concept aside from a functioning Windows computer.

### What steps would need to be taken to run your proof-of-concept?
I have a timeline checklist laid out for what I think I need to have to implement the core components of my game that will make up my proof of concept. I've detailed them below and they are intended to be implemented in sequential order of how they are listed.

#### Proof of Concept Timeline

What should my proof-of-concept be able to do?

- Integrate by local GMS2 build with github
- There needs to be a movable player with inertia who is bounded by the visible window.
- There needs to be a predetermined hex on which a resource node can spawn. This node should try to spawn once per second when the hex is not occupied or obstructed. That is to say a node does not currently exist on this hex and the player is not currently standing on this hex.
- If the player is sufficiently close to the resource node, they should be able to break it by clicking on it with the mouse. (I bet I could accomplish this by using an invisible collision mask on one of the layers of the resource node object)
- When the resource node is broken, it should spawn three resource node objects named Pebble
- The player should be able to “vacuum” up the Pebbles when sufficiently close to them, again I can probably accomplish this with a collision mask on top of the player.
- I need to display a Pebble counter, this is a stand-in for the inventory backstage menu which I don't feel is necessary to implement yet. This counter should display the current number of Pebbles the player has that they have not spent. It should *not* display the total number of collected Pebbles.
- The player should be able to build a Pebble Refiner at a cost of three Pebbles. For right now I'm going to restrict it to where they can only build one refinery and when they click the button I'm going to place the refinery on a predetermined hex. I need to make sure the player is not standing on that hex before it is spawned in.
- If the player is sufficiently close to the Refiner, they need to be able to left-click to have it produced Shiny Rocks and right-click to upgrade its level. Level change needs to be reflected by the draw event of the object and the calculation of the Shiny Rock output.
- Once the refinery is able to create shiny rocks, I need to go to the same basic process that I went through for Pebbles
- I need to create a system in which the shiny rocks can be used to upgrade the Refiner and the Mouse. In this sense, the mouse level functions as though it were tool levels. The formula for the cost of upgrading structure and mouse levels is 1.1^(current level) Shinny Rocks.
- Mouse levels need to interact with the resource node such that each level of the mouse increases the amount of Pebbles dropped by 10%. This will not be immediately noticeable as I'm not allowing for partial resource objects, so there won't be any noticeable difference until Mouse level 4 at which point the resource node should drop a total of 4 Pebbles.
- There needs to be a reset button that will allow the player to restart the run and award them a number of renown points proportional to the log base 2 of currently held Shiny Stones. This should add to their total number of renown points, not set their total number of renown points.
- And finally the number of renown points should function as permanent Mouse levels



### What is the current functionality of the proof of concept as you have submitted it?
My proof-of-concept has all the functionality outlined in my concept development timeline above. Specifically, it allows the player to collect a responsible resource, refined that resource into a processed material, use that process material to upgrade the refinery and their tool, and restart the game gathering some amount of renown that will make subsequent playthroughs easier.

To test it yourself, simply unzip the POC_demo.zip file and run the included executable. The basic controls are that you move around with WASD and interact with either left or right-click, assuming you are close enough to the object with which you're trying to interact.  
- To gather Pebbles, move close enough to the Rock node, left-click the node, and then walk over the Pebbles, which will add them to your inventory. For ease of debugging, the player starts with 200 Pebbles on their first run. The yellow circle that follows the player shows the range of their vacuum aura, and it will not be visible in the final product.
- To build the Refinery, move over to the pumpkin-colored tile and left-click it. You need to have at least ten Pebbles in your inventory to build the Refinery successfully. Once the Refinery is built, you can left-click it again to create Shiny Rocks at a base rate of one for every three Pebbles. To upgrade the Refinery station, right-click it. The currency for upgrading it is Shiny Rocks, and it will cost you 1.1^(current structure level) of Shiny Rocks to upgrade it one step. Each level bat the structure is upgraded will cause it to produce point one additional shiny rocks per activation; however, that number will always be floored as I'm not allowing for partial resources, so not every level represents an immediate change in production. The current level of the structure is indicated by the number in it's lower right-hand region.
- To build the Mouse Tool upgrade station, move over to the raspberry-colored tile and left-click it. You will need at least 10 shiny stones to build the upgrade station successfully. As this station does not have a primary output, left-clicking the completed station will do you no good, but right-clicking it will give you Mouse Levels. Mouse Levels are a stand-in for Pick Levels, and they allow you to increase the number of resources gathered per Rock Node you break at a rate of 10% per Mouse Level. Again partial resources are not allowed.
- To reset the run and gather your Renown points, position the character on top of the blue-colored reset panel and press the E key on the keyboard. You will know you're standing in the correct position because the panels will change color, and you'll know the reset command went through successfully because it will reset the room and you will gain the appropriate amount of Renown points. As a reminder, the Renown points gathered are equal to log base 2 of the current number of Shiny Rocks in your inventory. The calculator does not take into account Shiny Rocks produced but not held during the run, but it does allow you to carry Renown points over so that each run will add to your Renown points not set your Renown points.
But that's basically it, in a section below I have done a walkthrough with examples of this basic process to demonstrate the functionality of my proof of concept.


### Are there any components of the code or systems you have submitted that you did not create? If so, document them here alongside their source or reference.

- GML Documentation (https://docs.yoyogames.com/)

- Getting GMS2 to play nice with GitHub (https://docs2.yoyogames.com/source/_build/2_interface/2_extras/source_control.html)

- Understanding Movement (https://www.youtube.com/watch?v=9drRR2jE4lE&ab_channel=ShaunSpalding)

-Understanding GMS2's Layer system (https://forum.yoyogames.com/index.php?threads/guide-getting-started-with-room-layers-mostly-new-gml-functions.13068/)

# Updates to previous Documents

# Reflection
