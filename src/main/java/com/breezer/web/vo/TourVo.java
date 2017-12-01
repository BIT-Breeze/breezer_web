package com.breezer.web.vo;

public class TourVo {
	private long idx;
	private String ID;
	private long order;
	private String title;
	private String startDate;
	private String endDate;
	private double score;
	private String mainPhoto;
	private long like;
	
	
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
	public long getOrder() {
		return order;
	}
	public void setOrder(long order) {
		this.order = order;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public String getMainPhoto() {
		return mainPhoto;
	}
	public void setMainPhoto(String mainPhoto) {
		this.mainPhoto = mainPhoto;
	}
	public long getLike() {
		return like;
	}
	public void setLike(long like) {
		this.like = like;
	}
	
	
	@Override
	public String toString() {
		return "TourVo [idx=" + idx + ", ID=" + ID + ", order=" + order + ", title=" + title + ", startDate="
				+ startDate + ", endDate=" + endDate + ", score=" + score + ", mainPhoto=" + mainPhoto + ", like="
				+ like + "]";
	}
	
	
	
	
}
