/*                                      // 
//  Dev Notes for Street Food Stand Off //
//  Begin Notes on 23 March, 2015       //
//

Setting up core project elements, including Android functionality, and version control.
Game information, game settings, and high-level details also being set up.

Built in version control does not seem to work as hoped. However it does at least show revisions as they are made.
GitHub software has been installed and will have to suffice for now.

//  Begin Notes for 24 March, 2015      //

09:13   - Created obj_OVERLORD
        - Created scr_DEBUG
            - scr_DEBUG has been placed in a press D-Key event in obj_OVERLORD
        - Created scr_CLICKNDRAG

09:32   - scr_CLICKNDRAG now includes basic mouse_down, and mouse.x/y logic
        - Created room_Test @ 800x600x30
            - Placed obj_OVERLORD, for testing purposes
            
0:9:44  - Created scr_OVERLORD_Create
            - scr_OVERLORD_Create placed in a Create event in scr_OVERLORD
            
09:51   - Create fnt_Test (Arial)

10:06   - scr_DEBUG now runs in the Draw event of objOVERLORD
        - the Press D-Key event of obj_OVERLORD sets variable debug to true/false
            - scr_DEBUG checks debug

10:22   - Created spr_Test
        - Created obj_Test
        
10:28   - scr_CLICKNDRAG linked placed in Left Button event of obj_Test
        - Tested obj_Test in room_Test
            - Click & Drag functional
            - Objects drop if moved too quickly
            - Multiple instances function independantly
            
10:34   - Created room_Menu @ 800x600x30
            - Will act as the first room in the game, and placeholder for all menus
        - Marked obj_OVERLORD as Persistent
        - Moved obj_OVERLORD to room_Menu
            
11:16   - Created obj_Menu
        - Created obj_MenuBtn
        - Created spr_BtnTest
        - Created scr_MenuDraw
            - Placed in the Draw event of obj_MenuBtn
        - Created scr_MenuCreate
            - Placed in the Create event of obj_Menu
            
11:34   - Created scr_BtnCreate
        - Created scr_BtnLPress
        - Created scr_BtnLRelease
        - Created obj_Button
            - Will serve as a parent object for all buttons in the game
            
11:56   - obj_BtnMenu is now a child of obj_Button
            - obj_BtnMenu uses event_user() and Draw events
        - Clicking obj_BtnMenu in room_Menu moves to room_Test
        
13:04   - Created obj_BtnExit
            - Standard button, returns to Main Menu

13:13   - obj_BtnExit placed in room_Test
        - Movement between rooms now possible
        
13:42   - Created scr_InventoryCreate
        - Created obj_Player
            - Placed scr_InventoryCreate in the Create event of obj_Player
            - Created a Draw GUI event for obj_Player
        - Added INGREDIENT to the Macros list @ 0;
        
14:55   - Moved scr_InventoryCreate to obj_OVERLORD
            - Place into the Create event
        - Created obj_Toast
            - Now a child of obj_Test
        - DS Map cash, and DS Grid stuff have been made global
        - Added 4 more entries to DS Grid stuff
        
15:16   - Created new objects to correspond to new DS Grid stuff entries
        - Created new sprites to represent each of the above new objects

15:53   - Each Ingredient object has been given a create event
            - sets a variable myIndex
        - Created DS Map inventory
        
16:20   - obj_Inventory now creates a single DS MAP entry on collision with an inventory item
            - The Draw event displays the name of the object
            
//    Begin Notes for March 25, 2015    //

10:14   - Found a tutorial on inventory systems on yoyo forums
            - Attempting to build inventory system using this tutorial
        - Renamed scr_InventoryCreate to scrInventoryCreate_OLD
        - Created a new scr_InventoryCreate
        - Created scr_ItemDB
            - Copied the item list from scr_InventoryCreate_OLD
            
11:44   - Commented out the DS Grid stuff in scr_InventoryCreate_OLD
            - It was creating confusion at compile time, and items were not spawning from the correct place
        
12:07   - obj_Player Key-Pressed Spacebar will spawn items randomly from inventory
            - If items are present in inventory
            - Dumbass
            
13:03   - obj_Player Key-Pressed Spacebar creates random items from the ItemDB
        - obj_Player Key-Pressed Spacebar will issue a debug message for any invalid array entries

13:11   - Adjusted debug messages in obj_Player Key-Pressed Spacebar event
            - Messages now better indicate what is going on.

13:40   - Adjusted obj_Player Key-Pressed Spacebar
            - Random number seed is now based on the total array entries
            - RNG checks inventory against stuff for greater number of entries
            
14:17   - obj_Pickup is causing errors after the 1st item is added to inventory
            - obj_Inventory collision event is not passing the correct information
            - Trying to rework the collision event to identify item information and pass correct details

15:06   - obj_Inventory collision now accepts multiple items

15:24   - Moved several scripts out of Execute Script events into their own script resources

15:43   - Retrieving items from inventory is now possible
            - Retrieving an item from inventory will remove the item from inventory
            - This will mark the inventory position as empty and available
            
16:45   - Items retrieved from inventory are no longer random
            - Fixed randomization element
            - Inventory is now checked before spawning a new instance
        - Spawning items from obj_Inventory is now performed using a LMB_released event

//    Begin Notes for March 26, 2015    //

14:24   - Items no longer spawn directly on top of each other when created with Key_Pressed Spacebar Event
        - Items spawned from inventory no longer spawn directly on top of each other

15:06   - scr_ItemCreate and scr_ItemGet are virtually identical
            - only the item spawn function itself is different
            - These two scripts should be merged
            
15:28   - Streamlined scr_CLICKNDRAG

16:00   - Created scr_RecipeDB to start writing game recipes
            - Attached to Create Event of obj_OVERLORD

16:38   - Created obj_Counter
        - Created scr_RecipeBuild
            - Attached to the Collision Event of obj_Counter
        - obj_Counter now has basic ingredient recognition
            - Can be told to distinguish between recipes from the RecipeDB
            
//    Begin Notes for March 27, 2015    //

10:22   - Created scr_DishGenerate
            - Uses RNG to select from the RecipeDB
            - Attached to Key-"R" of obj_OVERLORD
        - Draws name of recipe at center of screen view
        
10:38   - Created obj_Dish
        
11:04   - Moved scr_DishGenerate to Create Event of obj_Dish
        - on Create Event obj_Dish creates a list of ingredients it needs for completion
        
11:48   - Moved scr_RecipeBuild to obj_Dish Collide Event
            - obj_Dish registers when a necessary ingredient collides with it

13:01   - obj_Dish now runs instance_destroy() when it has collected all necessary ingredients
            - currently this is done by counting ingredients
            - Ideally this would be done by verifying all ingredients in the array

13:30   - obj_Dish draws a list of required ingredients to the screen


//    Begin Notes for March 30, 2015    //

10:19   - Created scr_DishIngredients to replace a script action in the Create event of obj_Dish

10:58   - obj_Dish Step Event now checks the contents of the ingredients list to verify recipe completion instead of counting

11:30   - obj_Counter now creates an instance of obj_Dish in the Create Event

11:37   - scr_InventoryCreate_OLD removed
            - Remaining variables replaced in other scripts
            
//    Begin Notes for March 31, 2015    //

10:09   - Created scr_CounterAlarm0 to replace executed script in Alarm 0 event of obj_Counter
            - obj_Counter now spawns a series of obj_Dish on top of it
            - A check is done to prevent overlapping instances
            
11:30   - Adjusted the scripts of obj_Inventory to register multiple numbers of similar items
            - scr_InventoryCreate sets the inventory[] y dimension to 0
            - scr_ItemPickup now checks for an existing entry and if found adds to its count
            - obj_Inventory Draw Event now shows item count next to item names
            
11:47   - obj_Inventory now only removes items from inventory when the count reaches 0

12:00   - scr_ItemGet now scans on every click until it finds a valid entry

12:16   - obj_Inventory Draw Event now only draws names and numbers of items currently in inventory
            - Replaced executed script with scr_InventoryDraw
            
13:46   - Fixed an endless loop bug in scr_ItemGet caused when clicking on an empty inventory

14:18   - Inventory array now replaces all empty slots with existing items
            - When any inventory item reaches 0, it is removed from the inventory array, and each remaining item is moved in to replace it

16:46   - scr_RecipeBuild Collision Event now removes any collected ingredients from the ingredient list
            - Similar to scr_ItemGet, the Ingredient list will scroll up as ingredients are collected
            
//    Begin Notes for April 1, 2015    //

09:34   - Did some basic code clean up in scr_DishGenerate, scr_OVERLORD_Create, obj_Dish Draw Event
            - Unused variables
            - Unneccessary Globals
            
09:57   - Code Clean up in scr_ItemCreate
            - Unneeded debug_messages
            
10:09   - scr_ItemCreate now spawns items side-by-side instead of at a descending angle
        - Created room_Order
        - Created obj_BtnOrder
        - Placed obj_BtnOrder in room_Test
        - Placed obj_Player in room_Order
        
10:15   - Deleted scr_MenuCreate and obj_Menu
            - No longer in use
            
10:23   - Added obj_BtnMenu to room_Order
            - Can now return to room_Test
            
10:27   - Fixed minor error in scr_RecipeBuild
            - Recipes were not scrolling up properly due to an undeclared variable

10:42   - Made obj_Inventory a persistent object and placed it in room_Test
            - Room Start Event turns visibility off in room_Menu
        - Removed obj_Player from room_Test
        
11:24   - Renamed global array "stuff" to "ItemDB" for clarity
            - Replaced all code instances of "stuff"
            
11:34   - Created spr_Fryer, spr_Griddle
        - Created obj_Fryer, obj_Griddle
        - Added entries for Fryer and Griddle to ItemDB
        - Created EQUIPMENT constant
        
11:45   - Created obj_EquipParent
            - Will serve as parent object to all equipment
            
11:53   - Renamed obj_Test to obj_IngredientParent
            - Was already serving this purpose, renamed for clarity
            
13:12   - Renamed array "recipe" to RecipeDB for clarity
            - Replaced all code instances of "recipe"
            
13:28   - myIngredients is now a 2D array, for functionality with scr_ArrayRemoveContents
            - May use 2nd D for price or cook-time
            
14:03   - Inventory and Recipe(Dish) ingredient sorting has been moved to scr_ArrayRemoveContents

14:48   - Created obj_EquipSlot to hold equipment in room_Test

15:49   - scr_InventoryAdd now accepts arguments
            - Allows ItemDB entries to be added mulitple ways
            - room_Order now features a "click-to-add" system
            
15:55   - scr_CLICKNDRAG now accepts arguments
            - obj_IngredientParent and obj_EquipParent now only drag in room_Test
            
16:24   - scr_InventoryAdd now checks ItemDB for item type before adding to inventory
            - A limit of 4 pieces of EQUIPMENT has been put in place
            
//    Begin Notes for April 2, 2015    //

10:25   - cash and fame variables now appear in all rooms except room_Menu

10:52   - Adding items to inventory now deducts their value (ItemDB[n,2]) from Cash
        - No items can be added to inventory once Cash reaches 0
        
11:25   - Completing a Dish now rewards players with a Cash value based on the number of ingredients in the dish

12:04   - Created a countdown timer for room_Test
            - Upon reaching 0 sends player to room_Order
            - Currently hard-coded to 1 min 20 sec
            - Currently part of obj_OVERLORD, may be better off as it's own object
            
15:54   - Created obj_Timer
            - Transferred all Timer Events and code from obj_OVERLORD
            
//    Begin Notes for April 7, 2015    //

Showed prototype to Jason last night.
    - Escalation needs improvement
    - Suggests I review/play other games that use the food/cooking theme
    - Still isn't 100% clear on what's "fun" about the game
    
11:06   - Minor adjustments to comments in scr_OVERLORD_create

11:33   - Removed the variable ingredientCount from code
            - scr_DishIngredients
            - obj_Dish Step event
            - Substituted with numIngredient
        - Arrays in the RecipeDB no longer need to have all fields filled out
            - This allows numIngredient to accurately reflect the number of ingredients in a recipe
            - numIngredient can now serve multiple purposes in script
            - Recipes can now be much longer

11:42   - Added an entry to the RecipeDB to test new size limits
            - Five ingredient recipes are working just fine.
            
11:58   - Added new image_index for spr_Toast and spr_Bacon
            - Shows a "raw" state
        - Added Collision Event to obj_Toast and obj_Bacon
            - Collision with obj_Griddle changes image_index to 1
            - Shows a "cooked" state
            
12:23   - Trying to build new conditions into scr_RecipeBuild to only accept "cooked" ingredients
            - Will likely require a considerable amount of code refactoring, and breaking off functions
        - Tried building "Cooked" objects to test conditions.
            - Could work, but might require more effort than it's worth
        - Should think about using a Macros, RAW, COOKED, as states.
