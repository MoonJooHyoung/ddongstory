extends CharacterBody2D
class_name Player

## 플레이어 기본 클래스
## 모든 직업의 기본이 되는 클래스
## ✅ 2단계: 플레이어 기본 움직임 완성

# 기본 스탯
@export var max_hp: int = 100
@export var max_mp: int = 50
@export var move_speed: float = 200.0
@export var jump_velocity: float = -400.0
@export var gravity: float = 980.0
@export var friction: float = 0.2  # 마찰력 (0~1)

# 현재 스탯
var current_hp: int
var current_mp: int
var level: int = 1
var exp: int = 0

# 직업 정보
var job: String = ""

# 입력
var input_direction: Vector2
var is_facing_right: bool = true

# 애니메이션용 (나중에 사용)
var is_moving: bool = false
var is_jumping: bool = false

func _ready():
	current_hp = max_hp
	current_mp = max_mp

func _physics_process(delta):
	handle_gravity(delta)
	handle_jump()
	handle_movement()
	move_and_slide()
	update_animation_state()

## 중력 처리
func handle_gravity(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		is_jumping = true
	else:
		is_jumping = false
		# 바닥에 닿으면 수직 속도 초기화 (약간의 바운스 방지)
		if velocity.y > 0:
			velocity.y = 0

## 점프 처리
func handle_jump():
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
		is_jumping = true

## 이동 처리
func handle_movement():
	# 입력 받기
	input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	# 좌우 이동
	if input_direction.x != 0:
		velocity.x = input_direction.x * move_speed
		is_moving = true
		# 방향 전환
		if input_direction.x > 0:
			is_facing_right = true
		elif input_direction.x < 0:
			is_facing_right = false
	else:
		# 마찰 적용 (부드러운 정지)
		velocity.x = move_toward(velocity.x, 0, move_speed * friction)
		is_moving = false
	
	# 스프라이트 방향 전환
	if input_direction.x != 0:
		scale.x = sign(input_direction.x)

## 애니메이션 상태 업데이트 (나중에 애니메이션 추가 시 사용)
func update_animation_state():
	# TODO: 애니메이션 플레이어와 연결
	pass

func take_damage(amount: int):
	current_hp -= amount
	current_hp = max(0, current_hp)
	if current_hp <= 0:
		die()

func heal(amount: int):
	current_hp += amount
	current_hp = min(max_hp, current_hp)

func use_mp(amount: int) -> bool:
	if current_mp >= amount:
		current_mp -= amount
		return true
	return false

func die():
	print("플레이어 사망!")
	# TODO: 사망 처리 로직

