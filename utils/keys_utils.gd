extends Node

enum Action {LEFT, RIGHT, UP, DOWN, SHOOT, PASS}

# @todo precisa implementar o player two
const ACTIONS_MAP: Dictionary = {
	Player.ControlScheme.PlayerOne: {
		Action.LEFT: "move_player_one_left",
		Action.RIGHT: "move_player_one_right",
		Action.UP: "move_player_one_up",
		Action.DOWN: "move_player_one_down",
		Action.SHOOT: "make_player_one_shoot",
		Action.PASS: "make_player_one_shoot",
	}
}

func get_input_vector(scheme: Player.ControlScheme) -> Vector2:
	var map: Dictionary = ACTIONS_MAP[scheme]
	return Input.get_vector(map[Action.LEFT], map[Action.RIGHT], map[Action.UP], map[Action.DOWN])

func is_action_pressed(scheme: Player.ControlScheme, action: Action) -> bool:
	return Input.is_action_pressed(ACTIONS_MAP[scheme][action])
	
func is_action_just_pressed(scheme: Player.ControlScheme, action: Action) -> bool:
	return Input.is_action_just_pressed(ACTIONS_MAP[scheme][action])

func is_action_just_released(scheme: Player.ControlScheme, action: Action) -> bool:
	return Input.is_action_just_released(ACTIONS_MAP[scheme][action])
