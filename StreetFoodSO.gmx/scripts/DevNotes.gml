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

