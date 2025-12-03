extends Node
class_name JobManager

## 직업 시스템을 관리하는 매니저

enum JobType {
	DDONG_CAT,      # 똥냥이 (전사)
	MAGIC_CAT,      # 마법냥이 (마법사)
	ARCHER_CAT,     # 궁수냥이 (궁수)
	THIEF_CAT,      # 도적냥이 (도적)
	HEALER_CAT,     # 힐러냥이 (힐러)
	SUMMONER_CAT,   # 소환냥이 (소환사)
	SHAPESHIFTER_CAT # 변신냥이 (변신)
}

var job_names = {
	JobType.DDONG_CAT: "똥냥이",
	JobType.MAGIC_CAT: "마법냥이",
	JobType.ARCHER_CAT: "궁수냥이",
	JobType.THIEF_CAT: "도적냥이",
	JobType.HEALER_CAT: "힐러냥이",
	JobType.SUMMONER_CAT: "소환냥이",
	JobType.SHAPESHIFTER_CAT: "변신냥이"
}

func get_job_name(job_type: JobType) -> String:
	return job_names.get(job_type, "알 수 없음")

