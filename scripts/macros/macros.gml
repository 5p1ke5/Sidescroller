///Macros and enums

	//player constants
#macro PLAYER_FLICKER (game_get_speed(gamespeed_fps) * 3)

	//Doll constants
#macro DOLL_GRAV 0.25
#macro DOLL_FRICT 1
#macro DOLL_JUMP_HEIGHT 5
#macro DOLL_ACCEL 2
#macro DOLL_GRAV_OFFSET DOLL_GRAV / 2
#macro DOLL_MAX_SPEED 5
#macro DOLL_ARM_LENGTH 10

	//numeric game values.
#macro NPC_FLICKER (game_get_speed(gamespeed_fps) * 2)
#macro MELEE_RANGE 10
#macro CLOSE_RANGE 50
#macro MID_RANGE 150
#macro LONG_RANGE 200
#macro TEXT_SPEED 10
#macro TEXT_BALLOON_SPEED 5
#macro TEXT_BALLOON_MAXW 200


	//static resource pointers
#macro GROUND abs_ground //parent object for block and oneway platforms.
#macro BLOCK obj_block //Wall objects.
#macro PLAYER obj_player //Pointer to player object. There should only be one on the map at once.
#macro ROOM_TITLE_SCREEN room_titleScreen //Title screen room.
#macro ROOM_CHARACTER_CREATION room_characterCreation
#macro ROOM_INTRO_SCREEN room_introScreen //Title screen room.
#macro ROOM_START_GAME room_home//Points to starting room.
#macro CURSOR spr_cursor //Points to cursor sprite.
#macro MELEE obj_melee
#macro FIREARM obj_firearm

	//views
#macro VIEW 0 //The index of the view that will be used in the game.

//Layers
#macro LAYER_PARALLAX "Parallax"
#macro LAYER_SKYBOX "Skybox"


	//Physics values.
#macro TERMINAL_VELOCITY 6 //The highest an object's vertical speed can be.
#macro GRAVITY_OFFSET (grav / 2) //This value is added to the player's gravity while they're holding the jump button. This allows jump cancelling.


	//Controls.
#macro ANY_BUTTON (keyboard_check(vk_anykey))
#macro RIGHT_BUTTON (keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr))
#macro DOWN_BUTTON (keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd))
#macro LEFT_BUTTON (keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl))
#macro UP_BUTTON (keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu))
#macro A_BUTTON (keyboard_check(vk_space) || gamepad_button_check(0, gp_face1))
#macro B_BUTTON (keyboard_check(ord("Q")) || gamepad_button_check(0, gp_face2))
#macro X_BUTTON (keyboard_check(ord("E")) || gamepad_button_check(0, gp_face3))
#macro Y_BUTTON (keyboard_check(ord("C")) || gamepad_button_check(0, gp_face4))
#macro FACE_BUTTON (A_BUTTON || B_BUTTON || X_BUTTON || Y_BUTTON) 
#macro START_BUTTON ((gamepad_button_check(0, gp_start)) || (keyboard_check(vk_enter)))
#macro MOUSE_LEFT_BUTTON mouse_check_button(mb_left)
#macro MOUSE_RIGHT_BUTTON mouse_check_button(mb_right)

#macro ANY_BUTTON_PRESSED (keyboard_check_pressed(vk_anykey))
#macro RIGHT_BUTTON_PRESSED (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_padr))
#macro DOWN_BUTTON_PRESSED (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd))
#macro LEFT_BUTTON_PRESSED (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_padl))
#macro UP_BUTTON_PRESSED (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu))
#macro A_BUTTON_PRESSED (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1))
#macro B_BUTTON_PRESSED (keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(0, gp_face2))
#macro X_BUTTON_PRESSED (keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0, gp_face3))
#macro Y_BUTTON_PRESSED (keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0, gp_face4))
#macro MOUSE_LEFT_BUTTON_PRESSED mouse_check_button_pressed(mb_left)
#macro MOUSE_RIGHT_BUTTON_PRESSED mouse_check_button_pressed(mb_right)

#macro ANY_BUTTON_RELEASED (keyboard_check_released(vk_anykey))
#macro START_BUTTON_RELEASED ((gamepad_button_check_released(0, gp_start)) || (keyboard_check_released(vk_enter)))
#macro RIGHT_BUTTON_RELEASED (keyboard_check_released(vk_right) || keyboard_check_released(ord("D")) || gamepad_button_check_released(0, gp_padr))
#macro DOWN_BUTTON_RELEASED (keyboard_check_released(vk_down) || keyboard_check_released(ord("S")) || gamepad_button_check_released(0, gp_padd) || mouse_wheel_down())
#macro LEFT_BUTTON_RELEASED (keyboard_check_released(vk_left) || keyboard_check_released(ord("A")) || gamepad_button_check_released(0, gp_padl))
#macro UP_BUTTON_RELEASED (keyboard_check_released(vk_up) || keyboard_check_released(ord("W")) || gamepad_button_check_released(0, gp_padu) || mouse_wheel_up())
#macro A_BUTTON_RELEASED (keyboard_check_released(vk_space) || gamepad_button_check_released(0, gp_face1))
#macro B_BUTTON_RELEASED (keyboard_check_released(ord("Q")) || gamepad_button_check_released(0, gp_face2))
#macro X_BUTTON_RELEASED (keyboard_check_released(ord("E")) || gamepad_button_check_released(0, gp_face3))
#macro Y_BUTTON_RELEASED (keyboard_check_released(ord("C")) || gamepad_button_check_released(0, gp_face4))
#macro FACE_BUTTON_RELEASED (A_BUTTON_RELEASED || B_BUTTON_RELEASED || X_BUTTON_RELEASED || Y_BUTTON_RELEASED) 
#macro MOUSE_LEFT_BUTTON_RELEASED mouse_check_button_pressed(mb_left)
#macro MOUSE_RIGHT_BUTTON_RELEASED mouse_check_button_pressed(mb_right)

//NPC behavior constants.
#macro PASSIVE_TIME (game_get_speed(gamespeed_fps) * 3)
#macro AGGRO_TIME (game_get_speed(gamespeed_fps) * 3)

//extra colors
//Human skin colors
#macro c_black1 make_color_rgb(120, 65, 35)
#macro c_black2 make_color_rgb(160, 65, 35)
#macro c_black3 make_color_rgb(160, 85, 60)
#macro c_white1 make_color_rgb(255, 195, 140)
#macro c_white2 make_color_rgb(255, 215, 130)
#macro c_white3 make_color_rgb(255, 195, 140)
#macro c_hispanic1 make_color_rgb(175, 105, 75)
#macro c_hispanic2 make_color_rgb(255, 205, 165)
#macro c_hispanic3 make_color_rgb(255, 170, 140)
#macro c_asian1 make_color_rgb(210, 135, 100)
#macro c_asian2 make_color_rgb(255, 205, 105)
#macro c_asian3 make_color_rgb(255, 180, 90)

//Human hair colors.
#macro c_blonde make_color_rgb(235, 255, 0)
#macro c_darkBrunette make_color_rgb(100, 70, 0)
#macro c_brunette make_color_rgb(150, 70, 0)
#macro c_lightBrunette make_color_rgb(200, 125, 0)
#macro c_ginger make_color_rgb(220, 110,0)



//enums
enum npcState
{
	stand, move
}

enum dollState
{
	normal, melee
}