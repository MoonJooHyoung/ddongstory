extends Player
class_name DdongCat

## 똥냥이 (전사) 클래스
## 튼튼하고 묵직한 근접 전투 전문가

func _ready():
	super._ready()
	job = "똥냥이"
	
	# 전사 특성: 높은 HP, 방어력
	max_hp = 150
	max_mp = 30
	move_speed = 180.0  # 조금 느림 (묵직한 느낌)
	jump_velocity = -350.0  # 점프도 조금 낮음
	
	current_hp = max_hp
	current_mp = max_mp

func attack():
	# TODO: 근접 공격 구현
	print("똥냥이 근접 공격!")

