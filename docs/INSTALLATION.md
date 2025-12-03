# 설치 가이드

똥스토리 게임 개발을 위해 필요한 프로그램들을 설치하는 가이드입니다.

---

## 필수 설치 항목

### 1. Godot Engine (필수) 🎮

**버전**: Godot 4.3 이상 권장

#### Windows 설치 방법

1. **다운로드**
   - 공식 사이트: https://godotengine.org/download/windows/
   - "Standard" 버전 다운로드 (약 50MB)
   - 또는 직접 링크: https://github.com/godotengine/godot/releases

2. **설치**
   - 다운로드한 `.exe` 파일 실행
   - 설치 없이 바로 실행 가능 (Portable 버전)
   - 또는 설치 프로그램으로 설치

3. **확인**
   - Godot 실행
   - 프로젝트 가져오기 (Import)로 이 프로젝트 폴더 열기

#### 설치 확인
```
Godot 실행 → 프로젝트 가져오기 → 이 폴더 선택
```

---

## 선택 설치 항목

### 2. Git (버전 관리) 📦

**용도**: 코드 버전 관리, 백업

#### Windows 설치
1. 다운로드: https://git-scm.com/download/win
2. 설치 프로그램 실행
3. 기본 설정으로 설치

#### 설치 확인
```powershell
git --version
```

---

### 3. Visual Studio Code (코드 에디터) 💻

**용도**: GDScript 편집, 프로젝트 관리

#### Windows 설치
1. 다운로드: https://code.visualstudio.com/
2. 설치 프로그램 실행
3. Godot 확장 프로그램 설치 (선택사항)
   - VS Code에서 "Godot Tools" 확장 검색

#### 추천 확장 프로그램
- **GDScript** - GDScript 문법 하이라이팅
- **Godot Tools** - Godot 통합

---

### 4. 이미지 편집 프로그램 (선택사항) 🎨

스프라이트 제작을 위해 필요할 수 있습니다.

#### 추천 프로그램
- **Aseprite** (유료, 픽셀 아트 전문)
- **GIMP** (무료, 오픈소스)
- **Photoshop** (유료)
- **Piskel** (무료, 웹 기반)

---

## 빠른 시작 체크리스트

- [ ] Godot 4.3+ 설치 완료
- [ ] Godot에서 프로젝트 열기 성공
- [ ] (선택) Git 설치
- [ ] (선택) VS Code 설치

---

## 다음 단계

설치가 완료되면:

1. Godot 실행
2. "Import" 클릭
3. 이 프로젝트 폴더 (`ddongstory`) 선택
4. `project.godot` 파일이 있는 폴더 선택
5. "Import & Edit" 클릭

---

## 문제 해결

### Godot이 실행되지 않을 때
- Windows Defender가 차단할 수 있음
- "추가 정보" → "실행" 클릭

### 프로젝트를 열 수 없을 때
- `project.godot` 파일이 있는지 확인
- Godot 버전이 4.3 이상인지 확인

### 추가 도움이 필요하면
- Godot 공식 문서: https://docs.godotengine.org/
- Godot 커뮤니티: https://godotengine.org/community

---

**설치가 완료되면 게임 개발을 시작할 수 있습니다!** 🚀

