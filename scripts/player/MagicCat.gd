extends Player
class_name MagicCat

## 마법냥이 (마법사) 클래스
## 불/얼음/무속성 마법 전문가

enum ElementType {
	FIRE,    # 불
	ICE,     # 얼음
	NONE     # 무속성
}

var current_element: ElementType = ElementType.FIRE

func _ready():
	super._ready()
	job = "마법냥이"
	
	# 마법사 특성: 높은 MP, 낮은 HP
	max_hp = 80
	max_mp = 100
	move_speed = 200.0
	
	current_hp = max_hp
	current_mp = max_mp

func cast_fire_spell():
	# TODO: 불 속성 마법 구현
	if use_mp(10):
		print("마법냥이 불 마법!")

func cast_ice_spell():
	# TODO: 얼음 속성 마법 구현
	if use_mp(10):
		print("마법냥이 얼음 마법!")

func cast_none_spell():
	# TODO: 무속성 마법 구현
	if use_mp(8):
		print("마법냥이 무속성 마법!")

