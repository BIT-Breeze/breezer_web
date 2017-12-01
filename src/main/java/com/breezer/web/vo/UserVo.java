package com.breezer.web.vo;

public class UserVo {
	private long idx;
	private String ID;
	private String PW;
	private String nickName;
	private String gender;
	private String birth;
	private String job;
	private String nation;
	private String joinDate;
	
	
	public long getIdx() {
		return idx;
	}
	public void setIdx(long idx) {
		this.idx = idx;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPW() {
		return PW;
	}
	public void setPW(String pW) {
		PW = pW;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	
	
	@Override
	public String toString() {
		return "UserVo [idx=" + idx + ", ID=" + ID + ", PW=" + PW + ", nickName=" + nickName + ", gender=" + gender
				+ ", birth=" + birth + ", job=" + job + ", nation=" + nation + ", joinDate=" + joinDate + "]";
	}
	
	

	
	
}
