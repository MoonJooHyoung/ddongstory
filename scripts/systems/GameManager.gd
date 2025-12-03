extends Node
class_name GameManager

## 게임 전체를 관리하는 싱글톤 매니저

signal player_level_up(level: int)
signal player_died

var player: Player = null

func _ready():
	# 싱글톤으로 설정
	pass

func set_player(player_node: Player):
	player = player_node

func get_player() -> Player:
	return player

