# 프로젝트 설정 가이드

## 🎮 Godot 프로젝트 설정

### 1. Godot 설치
1. [Godot 공식 사이트](https://godotengine.org/)에서 다운로드
2. Godot 4.3 이상 버전 권장
3. 다운로드 후 실행

### 2. 프로젝트 열기
1. Godot 실행
2. "Import" 클릭
3. 이 프로젝트 폴더 선택
4. `project.godot` 파일이 있는 폴더 선택

### 3. 프로젝트 구조
```
ddongstory/
├── project.godot          # Godot 프로젝트 설정
├── scenes/                # 씬 파일들
│   └── Main.tscn          # 메인 씬
├── scripts/               # 스크립트 파일들
│   ├── player/            # 플레이어 관련
│   │   ├── Player.gd      # 기본 플레이어 클래스
│   │   ├── DdongCat.gd    # 똥냥이 (전사)
│   │   └── MagicCat.gd    # 마법냥이 (마법사)
│   ├── skills/            # 스킬 시스템
│   ├── systems/           # 게임 시스템
│   │   ├── GameManager.gd # 게임 매니저
│   │   └── JobManager.gd  # 직업 매니저
│   └── ui/                # UI 관련
├── assets/                # 게임 리소스
│   ├── sprites/           # 스프라이트
│   ├── sounds/            # 사운드
│   └── maps/              # 맵 데이터
└── docs/                  # 문서
```

## 🎯 다음 단계

### 1. 기본 테스트
- Godot에서 프로젝트 열기
- `scenes/Main.tscn` 실행
- 플레이어가 화면에 나타나는지 확인

### 2. 스프라이트 추가
- `assets/sprites/` 폴더에 캐릭터 스프라이트 추가
- Player 씬에 Sprite2D 노드 설정

### 3. 맵 만들기
- 타일맵 에디터로 기본 맵 생성
- 충돌 영역 설정

### 4. 캐릭터 움직임 테스트
- 방향키로 이동
- 스페이스바로 점프

## ⌨️ 기본 조작키

- **좌우 화살표 / A/D**: 이동
- **스페이스바 / 위 화살표**: 점프
- **마우스 왼쪽 / J**: 공격

## 📝 참고사항

- 모든 스크립트는 GDScript로 작성됨
- Godot 4.3 기준으로 작성
- 씬 파일은 Godot 에디터에서 열어서 수정 가능

---

**Godot을 설치하고 프로젝트를 열어보세요!** 🚀

