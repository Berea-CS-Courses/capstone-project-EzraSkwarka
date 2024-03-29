# Major Components

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This section is an overview of my major components/systems, a basic description of what they are and how they function within my game, and a simplified overview of how they interact with other systems. Each of these components will have a section in the development timeline, but just because something isn't listed as a major component doesn't mean it won't show up on the development timeline. The components are listed in order of importance, not necessarily the order in which they will need to be implemented for the game to function as I envision it.

### Player
  * This is the player character, effectively the lens through which the player will experience the game world. Given as there are some exploration driven elements within this game making a PC that feels reasonable and responsive is one of my higher priorities, and as I intend for this to be the main way in which the player can experience the game world it is both of the first things both conceptually and in development that must be created as it will inform all other aspects of the game.

  * Interactions:
    * Resource Nodes and Objects: the player will need to be able to interact with both resource nodes and resource objects as those are the primary currencies the player uses to advance about the game. This interaction can be thought of as the mine interaction in my design thesis.
    * Structures: Similarly to Resource Nodes and Objects, this is how the player will spend that accumulated currency to advance by upgrading their various tools and equipment. This system interaction can be thought of as both the refine and the upgrade portions of my design thesis.
    * Renown: While it might be more accurate to say that the you pronounce system interacts with the player system, I will still detail the interaction here. The Renown system is what gives the player Legacy upgrades that persist between runs of the game as part of the way to capture the snowballing incremental effect and to add replay ability to the game. This interaction meets both the upgrade and repeat tenets of my design thesis.
    * Mobs: This is almost functionally equivalent to the Resource Nodes and Objects section but with a different tool and ever so slightly more active (mobs move, rocks and trees don’t). Mobs can interact with the Player, so I’ll detail that later. This hits on the Mine part of my design thesis.
    * Zones: The player interacts with these in the sense that they move through them, but that’s it really.
    * Relics: The player interacts with the Relic system is much akin to the way they interact with resource objects specifically in that they can be collected and added to the inventory. Once they have them it allows them to progress to different zones that contain better upgrade materials. This falls into the Upgrade part of my design thesis sort of, but really it is just to add variety to the gameplay.


### Resource Nodes and Objects
  * The resource nodes and object system can be thought of as a currency system that the player can spend to progress to the game. Resource nodes specifically referred to spawnable objects on the map that can be mined or otherwise interacted with to produce resource objects. The resource objects can then be refined in the structures system to upgrade the player's gear and equipment. To explain the difference between notes and objects, a rock filled with iron ore would be a node where as the iron ore itself (once mined free from the rock) would be a resource. This is, unsurprisingly, the main source of the mining part of my design thesis.
  * Interactions:
    * Player: See above.
    * Structures: The most direct interaction that resource nodes will have with the structure system is that a node cannot spawn in a location already occupied by a structure. The objects themselves however will have a direct relationship with the structures as that is how you were fine the raw resources into resources that can be used to actually upgrade the players tools and equipment.
    * Renown: I envision that resource nodes and objects will have an interaction with the Renown system, as one of the ways I expect you to be able to spend their Renown points is something that upgrades the overall production rate of individual resources and nodes
    * Mobs: Mobs will have very similar interactions with other systems that the resource nodes and objects have because they are actively two sides of the same coin and conceptually fill similar roles within the game. That said I do not believe there will be any direct interactions between the two just that they will occupy similar roles within the systemic structure of the game.
    * Zones: The resource nodes in objects will interact directly with the zoning system as different zones will change the weighted spawn nature of the variety of resource nodes. For instance, there will be a considerably higher spawn rate for coral nodes along the beach than there would be for iron nodes, and similarly, iron nodes will have a higher spawn rate in the forest than they would on the beach.
    * Relics: I do not see any direct interaction between relics and the resource nodes and object section beyond the fact that relics unlock additional zones and there's indirect interaction there.


### Structures
  * The structure system is the main way the player spends their accumulated resource currency from the resource nodes an object system to advance and upgrade their gear. This takes two main directions, the first being using the structures to refine rural resources into processed resources, and then using this process resources to actually upgrade their tools and equipment. This falls under both the refine and upgrade portions of my design thesis.

  * Interactions:
    * Player: The player and structure systems interact in that the player will physically place the structures on to the game map. The player will then be able to interact with them by inputting resources and outputting resources as well as using them as the method of upgrading their tools once they have a sufficient quantity of refined resources.
    * Resource Nodes and Objects: There will be a lot of interaction between the resource notes an object system and the structure system as the resources are effectively the fuel and the output from the structure system. He'll need to put in the wrong resources to find them, and then I'll need to use the refined resources to upgrade their equipment.
    * Renown: Right now I don't know if I'm going to have the structures and Renown system interact, but I could potentially see one of the renowned point outlets being permanent upgrades to either specific structures or the structures system as a whole.
    * Mobs: I do intend to have the mob and structure systems interact, specifically enemy mobs. I will create a system where, if left unchecked, enemy mobs are able to degrade and eventually break unmanned or unprotected structures by attacking their structure level as though it was an analogous health system. I'm not 100% sure how I want that to play out yet, but that is my conceptual goal.
    * Zones: I'm currently toying around with the idea of having certain zones benefit certain structures in some way, but I'm not 100% committed to that idea. I'll play around with it so I should mention it here but I feel like there's a good chance I'm going to ultimately scrap that mechanic.
    * Relics: I have no intention of creating interaction between the relics and these structures systems. It could arise organically during development, but I have no plans to actively create it.


### Renown
  * While the Renown system is something I intend to be implementing much later into the development cycle, conceptually it is a very important system. It's one of the core tenets of incremental games, sometimes called a legacy system, and it allows the user to develop persistent upgrades between runs. I am still figuring out exactly how I want to implement this renown system, I'm currently thinking of when the player sails off on the "endgame boat" to move to the next run giving them a certain amount of points based off of their progression along the core mechanical elements of the game (how many resources they have collected, what is the total level up their structures or tools, things of this nature). Alternatively, I might tight how far they're able to make it into the "Tower of Endless Progression", or even some hybrid of the two. This is a design problem that I'm still trying to solve, and one that I'm hoping I will be able to find inspiration for during the development and play testing of the other systems.

  * Interactions:
    * Because I'm still puzzling out how exactly I want the Renown system to work, it's hard to detail specific interactions I intend for it to have with the other systems, so I'm going to explain how I envision it working entirely from the perspective of the player.
    * The way I intend for the player to unlock the renowned system is that once they sail off from the first Island they will unlock the "Tower of Endless Progression" sub-zone. Once there they will encounter a new NPC who runs the "renown points shop"  where the player will be able to expend the Legacy currency to unlock persistent upgrades to their tools, equipment, structures, etc.  Mechanically I intend to handle this the same way basic structure input-output works and track it using the relics system, but like I said I am still trying to puzzle out the specifics of how I intend to implement it so any feedback on this topic is more than welcome.


### Mobs
  * As I've hinted at above, the mobs system is essentially a variation of the resource nodes and objects system. However, there are a few key differences. The most obvious of which is that mobs will be able to roam around the map and won't be tied to static locations like resource nodes are even though when interacted with in specific ways they will still produce resource objects. I'm implementing this system as a slight alternative to the resource nodes to add a bit of variety into the game.
  * That said there are some other differences. Mobs will be one of two types, either hostile or passive. The player will be able to interact with passive mobs to still have them produce resource objects, but the passive mobs won't take an active role interacting with any of the other systems. That stands in contrast with the Hostile Mobs who will take direct actions to interfere and interplay with the other systems. Hostile Mobs will be able to interact with the player to reduce their progress or at the very least slow their progress down, and interaction structure system as detailed above to slowly wear away at structures if not properly taken care of.

  * Interactions:
    * Player: The Mobs system will be able to interact with the player very similarly to how the player can interact with the resource nodes and objects system. The player can use specific tools to extract resources from passive mobs and another set of tools to extract resources from Hostile Mobs, likely by killing the Hostile Mobs. The Hostile Mobs can also interact with a player by reducing their progress, though I'm not entirely sure how I intend to manifest this yet. I think as a starting point I'm going to give the player a health pool which the enemies can reduce, and if it is reduced to a certain threshold the player is rolled back to maybe a previous save the world, or sent back to their spawn location and lose what's in their inventory. I'm still hammering out the details on this one and want to playtest with a couple of my ideas.
    * Resource Nodes and Objects: I don't envision any direct interactions between the resource nodes and objects system and the mobs system, save for the exception that they will both use the same spawning mechanic.  what I mean by this is that the more of one type that exists on the game map necessarily less of the other can exist simultaneously. I intend to accomplish this by keeping a region count of the quantity of resource nodes and mobs that exist within a given area and restrict it such that it could never exceed a predetermined maximum.
    * Structures: Mobs will be able to interact directly with the structured system by attacking play structures and reducing their structure level I saw that was the health pool of the given structure. Once a given structure is taken sufficient damage the mob will be able to outright destroy it thus reducing the player's overall progress in the game.
    * Renown: As it stands I do not intend for there to be a direct way in which the renowned and mobs system interact.
    * Zones: I do intend for the zones to interact with the mob system in the same way  I intend zones to interact with the resource nodes and objects system. In different zones, different proportions of mobs will spawn at different rates.  For instance, it would make sense for a crab to spawn on the beach but less so for it to spawn in the volcano.
    * Relics: ¯\_(ツ)_/¯, relics unlock the zones I guess?


### Zones
  * The zone system is the most straightforward of any of my systems, in my mind at least. It's a flavor dressing but I'm putting on top of the mechanics to add some variety into the game. There will be a series of zones the player will be able to unlock access to throughout each individual run that allows them to unlock higher tiers of resources. Each is own will have an Associated sub-zone that goes along with it. The majority of these sub-zones will contain relics, and a few will contain ways to advance between runs, for specifics on what I mean by that see the Narrative section.

  * Interactions:
    * Player: The zones will not directly interact with the player aside from determining what resources they currently have access to. I mean I guess the player will have to physically move between zones but that's really the extent of interaction here.
    * Resource Nodes and Objects and Mobs: Different zones will cause different resource nodes objects and mobs to spawn in different proportions and at different rates. That is to say on the beach we are going to get a different set of naturally spawning resource nodes than you would get in the tundra for instance.
    * Structures: As I said before, I'll play around with the idea of different zones influencing the effectiveness and resilience of different structures, but I'm not sure if that's adding depth to the game or simply adding complexity. I'm trying to keep the core gameplay loop and the mechanics as straightforward as I can and I don't think adding this particular obfuscation will create a more enjoyable experience.
    * Renown: I don't envision the Renown system interacting at all with the zones. I could always make one of the point outlets affect the overall spawn rates on zones, but as I said above I'm still figuring out exactly how to implement the renown system.
    * Relics: Each Zone will contain access to a particular sub-zone and those sub-zones will contain a relic (for the most part). These relics will then allow the player to progress on to later zones with higher quality resources. Once particular relics are obtained from their sub-zones I will likely be temporarily sealing off that sub-zone off for the remainder of this particular run. For instance, once you collected the Springs Tierra from the Deep Woods sub-zone in the forest, you will no longer need to access the Deep Woods sub-zone and he will gain access to the mountain and desert Zone.


### Relics
  * The Relic system serves as a way to benchmark the player's current progression throughout both individual runs and within the persistent campaign. The Relic system is also divided into two major components; progression relics and persistent relics.
  * The progression relics are the specific items that can be found within sub-zones that unlock access to additional zones and are reset after each individual run ( to handle this narratively I intend for them to be required components in the construction of the endgame boat that will allow the player to move on to the next run). These relics exist is a simple binary you have them or you don't.
  * The persistent relics are permanent upgrades that augment the player's resource collecting abilities. These relics are acquired by the player upon their first visit to the Tower of Endless Progression. The TEP is also where the player will be able to spend their Renown points to upgrade these persistent relics. As with the Renown system itself, I am still figuring out the specifics of this, but one example persistent relic  I'm toying around with is the "Mining Badge" which gives the player a persistence augment to their ability to collect Resources with the pick. In essence, it exists as permanent tool levels for the pickaxe that are not reset after each run.

  * Interactions:
    * Player: The Relic system will interact with the player system in two main ways. The first that we will allow them access to later zones, and the second is that persistent relics will augment the abilities and equipment of the player.
    * Resource Nodes and Objects and Mobs: Much the same way that the Relic system interacts with the player, the relics will interact with the resource nodes and objects and mobs in a myriad of ways, some by increasing their spawn rate, others by increasing the amount of resources extracted from them per interaction.
    * Structures: While relics will never unlock particular structures (at least at this point in the design) are they will still augment the effectiveness of the structures in the same way that they augment the player's tools. The most basic of which way they will interact is that some of the persistence relics will add permanent global structure levels to all crafted structures.
    * Renown: As it stands, I don't envision the progression relics interacting with the Renown system, but the persistent relics and the Renown system are very deeply intertwined. After all the Renown currency is what you use to purchase and upgrade the persistent relics.
    * Zones: The progression relics are the direct means through which players unlock additional zones and similarly, the zones and their respective sub-zones are how the player unlocks additional progression relics.


# Narrative/In Game Progression
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; So I keep mentioning "Zones" and Runs" and "Progression Trees," but I haven't really explained how I'm envisioning those. So I think it'll be helpful for both me and you if I create a narrative elevator pitch as well as outline how I intend for the player to progress throughout this game and what the hell I'm talking about when I say restarting runs.

### My elevator pitch is:
  > You wake up on the beach of a deserted tropical island, and it is your job to use the natural resources that are abundant on this island to create tools and gear that better allow you to explore this island. With this gear, you will be able to explore a variety of zones each with its distinctive flavor while you are trying to construct a boat that will take you off the island. Once you are able to escape you're faced with the question, "Could you do it again, but faster?"

### What are my Zones?
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I've also made various references to different zones throughout this document, and while I will list of them out here I have a reference photo in the folder called "Photos from Notebook" in the repo entitled "Zoning Map.jpg" that lays it out better than text ever could. However, one thing that is easy to understand in text is that each of these zones has an associated resource and I have tiered these resources in level of effectiveness/progression. I have that laid out in a table below:

  MAKE TABLE HERE (if I don't see Resource_Name.JPG)

### How many times am I supposed to play this game?
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is one of the aspects that I'm incorporating from incremental games, endless replayability and scalability.  the Renown system effectively removes any fear medical ceiling that resource generation has in this game, but in its design I've also tried to keep it a fully active game so that it never becomes a self-running machine. A few times you all have asked “How much automation will this game have?” and my answer to that is “As close to zero as I can get it.”

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A "Run" in this game is everything the player does from the moment they wake up on the beach till the moment they sail off on the endgame boat from beach 2. A "Campain" is the collection of everything the player has done and can be thought of as their current progress on their persistent relics plus the progress in their current run.


# Development Timeline

### Player
  * Movement
    * 8-way with inertia
  * Tools
    * Pick -> Axe -> Sword -> others as found in design
        * Until the toolbar is implemented, assume the player always has the Pick equipped/active
        * Just make it swing on click, useability later
    * Major tools need to track both Level and Upgrade Tier
      * Levels need to add a drop rate increase applied to and mined resource
      * Upgrade tier needs to increase base mining speed and the types of resources that can be collected
  * Inventory
    * Start with basic magnetism
    * Once display is implemented add UI in backstage menu
    * Limited, upgradeable slots
      * Limit the number of different stacks of resources
        * That is to say, at first the player has eight Inventory “slots,” each able to hold an arbitrary number of resources.
        * Tools do not count against this number
    * Toolbar
      * Should display useable tools and any placeable structures in Inventory in a scrollable fashion
  * Determine Current Location
    * Using (x, y), z is assumed by layer

### Game Map
  * 2.5D perspective
    * This is more a reminder than anything else as the perspective is handled by the engine and the art style
  * Layering system:
    * UI
      * This layer is where I actually draw information on to the screen, but it does not directly interact with anything on the game world
    * Active layer
    * Spawning
      * This layer will be an invisible layer that handles the object placement and collision logic for node and resource spawning
      * ~~Not sure if this needs to be distinct from the “Active Layer”~~
    * Hex Grid
      * as an overlay that is toggleable for both in game and debug purposes
    * Tile Sheet
      * This layer is where I actually put the visuals for the game map.  For example, this is where I would place the esthetic differentials between ocean coasts and grass tiles on the beach map
    * Background Image
      * This is the actual map that adds flavor instead of just a series of grids
      * Put in a placeholder as the actual map will be made in the polish section
  * Hex grid system
    * Create a graphical layer that’s toggleable
      * Offset squares blown up to size?
    * Standardize Reference System
      * Refer to any given hex by a set of coordinates (center)
  * Grid tagging system
    * Each hex needs to be marked as either spawnable/placeable and/or walkable
      * Spawnable
        * Can a node or mob spawn here?
        * Static
      * Placeable
        * Could I place a structure here?
        * Static
      * Walkable
        * Can I walk on this hex?
        * Might be better to mark the Unwalkable hexes
        * Static
      * Occupied
        * Is there a mob or structure currently on top of me?
        * Simple collision check maybe?
        * Dynamic
  * ~~ Resource/enemy spawn points~~
  * ~~ Structure placeable points~~
    * Covered by grid tagging system (I hope)

### Resource Objects
  * Spawn a node at a given set of points
  * Allow user to break node
    * Using appropriate tool (i.e. pick for rocks)
    * Once broken node needs to spawn resources onto the active layer of the game map
      * Current tier list in on Resource_Name.jpg, need name for mountain resource
  ~~* Allow each hex to check if it has a node spawned on it~~
    * Use grid tagging system
  ~~* Allow hex to see if player is on top of it~~
    ~~* Needs to allow for the player to “overlap” multiple hexes at once~~
    * Use grid tagging system
  * Spawn nodes on a time delay
    * Every x amount of time, have each spawnable hex check to see if it is occupied. If not roll to see what it spawns using the spawn table for that Zone.

### Backstage UI and Menus
  * Create a toggleable layer that contains a backstage menu on keypress
    * Note: I do not want this to pause the game
  * Tabs for:
    * Inventory
    * Overview
      * Should contain info for:
      * Current Relics
      * Current tools and the info for them
      * Gear? If I add that
    * Structures
      * For now just a tab labeled structures, useability comes later

### Structures
  * Structures need to track:
    * Name
    * Level
    * Crafting Recipe
    * Number of this structure type crafted as the crafting cost should scale with the number of this specific structure already in the world
    * Craftable recipes
      * input-> output, time/level
      * i.e. furnace: (2 x iron ore, 1 x coal) -> (1 x Iron ingot), 1 sec – (.01 sec per machine level)
  * Scalable output
    * If the structure would produce the resource selected in less than 1 sec, create additional resources proportional to the level of the structure.
      * Let’s say you are using a furnace to craft an iron bar using the above recipe and the furnace is currently level 200. This means the crafting time for one bar is 1 sec – 2 secs, or in other words in the time it would have taken to originally create one iron bar this structure could craft three iron bars. Thus, it should output three times its original output, or 3 iron bars for the same input.
  * Structure Building Menu in backstage
    * Populate the preexisting tab with buttons to create the structures in the overworld
    * Then make sure each structure “snaps” to the grid by the center point on the map

### Save System
  * Player Inventory + stats
    * Basically, anything that shows up in the backstage
  * Zone map info
    * Start with beach then follow progression stick
    * Current placed structures
    * Resource nodes
    * Player location
    * Mob locations

### Zone system
  * Transition/Loading points
    * Follow progression stick in implementation order, use scene feature
    * Vary resource spawn rates based on zone
  * Relic Dungeons
    * Subzone transition point
    * Appropriate number of floors/puzzle?

### Relics
  * Progress locks according to progression stick
    * E.g. the “Spring Water” relic in the Deep Woods allows the player to venture into the Desert and Mountain Zones
  * Once collected should change the relevant backstage UI flag/progression lock
  * While persistent relics will come in the renown section, think about them here

### Mobs
  * Make a simple Enemy
    * Start with a Slime
    * Give it a moveset
      * In this case a simple springing jumpslide
    * Give it Health
      * Like 3 hits with a basic sword
    * Give it a resource drop
      * Gel
      * Tie the drop rate/amount to the scalar of the swords level
    * Check collision and make sure can interact with:
      * Player
      * Structures
      * Nodes (to prevent them walking over nodes)
  * Friendly enemies
    * These function the same as the Enemies with the exception that they do no damage to the Player or Structures and can themselves be damaged by Enemies
  * Player Health
  * Structure Health
  * Regional variety

### Renown System
  * Endgame Boat
    * This should allow the player to sail to the next Island and “reset”
    * Should award some permanent currency based on ???
  * Tower of endless progression
    * Unlocked after 1st clear
    * For now, make the subzone while I figure out what to put in it
      * Elevator system?
  * “Points” Shop
    * This is the outlet for renown points, that should allow for permeant upgrades like:
      * ???
 
# Terminology:

  * Resource/Node:
    * This is the object on the map than can be interacted with to spawn materials.
      * e.g. a rock with iron ore in it, a tree, a piece of drift wood etc.

  * Materials:
    * these are the representations of resources in their extracted or refined state, this means they must be either loose sprites on the overworld or are occupying slots in the player’s inventory.
      * E.g. mined iron ore, refined iron ingot

  * Structure/Placeables:
    * These are game objects made by the player that can be placed on the overworld to fulfill some purpose.
      * E.g. a furnace that can smelt ore into ingots, a fence that prevents travel

  * Run/Campaign
    * A running this game is everything a player does between resets. Effectively this is everything they do from waking up on the beach until they sail away on the endgame boat to collect their Renown points. This is contrasted with a campaign which consists of all the runs the player has made within this save file.

  * Mobs
    * This is a term that I believe I'm borrowing from Minecraft, but it encompasses all non-player characters that have instead of AI that drives their interaction with the player. There are hostile mobs that will try to hurt the player and passive mobs that don't really care about the player. It is possible for there to be mob-on-mob violence.
        * E.g.  A hostile mob example is a slime that will try to destroy the player's structures and hit them where are they passive mob is a cow that the player can collect milk from but otherwise doesn't really care about what's going on

  * Renown
    * Renown is the Legacy system I'm using throughout this document to refer to the currency the player gets between runs that they can spend to advance their campaign progress. Be quiet every time they complete a run based off of various metrics that I'll measure once they get on the endgame boat. If it sounds like I'm being vague it's because I am, I'm still figuring this out. An example from another incremental game is the Angel Investors found in Adventure Capitalist

  * Endgame Boat
    * This is the mechanic through which the player is able to reset and move from run to run while collecting their Renown points for any discrete run.

  * Tower of Endless Progression
    * The Tower of endless progression is a placeholder name for a sub-zone accessible from beach one after the player has completed at least one full run. Here they will be able to unlock persistent upgrades and advance through a dungeon that uses a similar scaling system to what's found throughout the game to measure their campaign progress. Tho honestly, the more I say it, the more I like the name Tower of Endless Progression; it has a certain je ne sais quoi about it while also being just on the nose in enough for my tastes

# Current Design Questions and Requested Feedback
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; These are in no particular order, but are some of the questions I currently have at this stage of development.

  * What are some good persistent relics?
  * Should my relic dungeons have a gauntlet of enemies or a puzzle?
  * What should I call the mountain tier resource?
  * How should I handle a player death (drop loot or old save)?
  * What are some ways to measure player progress per run so as to award Renown points?
