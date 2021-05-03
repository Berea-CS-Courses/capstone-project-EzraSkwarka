## 1. What have you accomplished this week? (Please list each accomplishment, and explain)
The largest thing I accomplished this week was the implementation of my save system. To save, it serializes all important info from a selection of specified objects into a JSON file, and to load it does the same process in reverse while also deleting the old objects from the game world.
I also tackled many of my "smaller" issues in my repo, namely:
  - I resolved the grid snapping issue where the mouse was misaligned by simply hiding the mouse while in build mode
  - I fixed various issues with my consume from and can consume from inventory helper functions
  - I moved away from alarms and to a tick based system for time based events
  - I updated the toolbar and obj_tool to be dynamic


## 2. What challenges or difficulties did you face? If you solved them, how? If not, what have you learned so far? Have you sought help or other resources?
I didn't really face any major challenges this week, just a myriad of smaller problems. As such, each of the issues were solved by a bit of elbow grease and research.



## 3. What do you plan to accomplish in the following week? (Please list at least 3 concrete "S.M.A.R.T." goals, along with estimated number of hours to complete, or day to complete)
Over the following week, I will implement my structure menu system. In order for me to consider it done and to help guide my progress I have a series of sequential requirements (with a time estimate).
  1. When the player gets close enough to the structure and presses the interact key (e), the structure should pull up a drawn menu with a list of recipes (2 hours)
  2. Each of these recipes should be represented with a button, and when pressed the structure should begin "crafting" this recipe (2 hours)
  3. Crafting a recipe should cause the structure to become "in-use" for the duration of the crafting that prevents the starting of additional crafts (1 hour)
  4. The time needed to craft the recipe should scale to the level of the structure at a rate of .1 secs faster per level (30 mins)
  5. If the recipe would be completed in less than one second (the minimum crafting time), it should produce additional output for the same input at a rate of 10% per overlevel. (30 mins)



## 4. What resources will you use to accomplish your goals for the upcoming week? (please list out the resources)
I have already linked some resources in the github issue for this milestone, and additional resources used will be listed in the issue.
