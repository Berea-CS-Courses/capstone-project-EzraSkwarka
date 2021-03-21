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
- The player should be able to build a Pebble Refinar at a cost of three Pebbles. For right now I'm going to restrict it to where they can only build one refinery and when they click the button I'm going to place the refinery on a predetermined hex. I need to make sure the player is not standing on that hex before it is spawned in.
- There needs be an interaction key that pops up once the player is sufficiently close to the Refiner, and upon pressing that it should bring up its crafting dialog menu. The menu needs to display its name, current level (start at 0), a crafting recipe that will turn to Pebbles into one Shiny Rock after 1 second, and a button for the player to upgrade the Refiner.
- Once the refinery is able to create shiny rocks, I need to go to the same basic process that I went through for Pebbles
- I need to create a system in which the shiny rocks can be used to upgrade the Refiner and the Mouse. In this sense, the mouse level functions as though it were tool levels. The formula for the cost of upgrading structure and mouse levels is 1.1^(current level) Shinny Rocks.
- Mouse levels need to interact with the resource node such that each level of the mouse increases the amount of Pebbles dropped by 10%. This will not be immediately noticeable as I'm not allowing for partial resource objects, so there won't be any noticeable difference until Mouse level 4 at which point the resource node should drop a total of 4 Pebbles.
- There needs to be a reset button that will allow the player to restart the run and award them a number of renown points proportional to the log base 2 of currently held Shiny Stones. This should add to their total number of renown points, not set their total number of renown points.
- And finally the number of renown points should function as permanent Mouse levels



### What is the current functionality of the proof of concept as you have submitted it?
 TODO


### Are there any components of the code or systems you have submitted that you did not create? If so, document them here alongside their source or reference.

- Getting GMS2 to play nice with GitHub (https://docs2.yoyogames.com/source/_build/2_interface/2_extras/source_control.html)

- Understanding Movement (https://www.youtube.com/watch?v=9drRR2jE4lE&ab_channel=ShaunSpalding)


# Updates to previous Documents

# Reflection
