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
