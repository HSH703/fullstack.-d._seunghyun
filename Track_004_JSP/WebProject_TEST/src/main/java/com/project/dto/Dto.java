package com.project.dto;

public class Dto {
	private int execid;
	private String exectype;
	private String description;
	private float avgkcal30min;
	private int exectargetmin;
	private String suitablefor;
	private String intensitylevel;
	private int createdat;
	private int updatedat;
	
	//생성자, 필드생성자 / toString / getters + setters
	public Dto() {super();}
	public Dto(int execid, String exectype, String description, float avgkcal30min, int exectargetmin,
			String suitablefor, String intensitylevel, int createdat, int updatedat) {
		super();
		this.execid = execid;
		this.exectype = exectype;
		this.description = description;
		this.avgkcal30min = avgkcal30min;
		this.exectargetmin = exectargetmin;
		this.suitablefor = suitablefor;
		this.intensitylevel = intensitylevel;
		this.createdat = createdat;
		this.updatedat = updatedat;
	}
	
	@Override
	public String toString() {
		return "PostDto [execid=" + execid + ", exectype=" + exectype + ", description=" + description
				+ ", avgkcal30min=" + avgkcal30min + ", exectargetmin=" + exectargetmin + ", suitablefor=" + suitablefor
				+ ", intensitylevel=" + intensitylevel + ", createdat=" + createdat + ", updatedat=" + updatedat + "]";
	}
	
	public int getExecid() { return execid; } public void setExecid(int execid) { this.execid = execid; }
	public String getExectype() { return exectype; } public void setExectype(String exectype) { this.exectype = exectype; }
	public String getDescription() { return description; } public void setDescription(String description) { this.description = description; }
	public float getAvgkcal30min() { return avgkcal30min; } public void setAvgkcal30min(float avgkcal30min) { this.avgkcal30min = avgkcal30min; }
	public int getExectargetmin() { return exectargetmin; } public void setExectargetmin(int exectargetmin) { this.exectargetmin = exectargetmin; }
	public String getSuitablefor() { return suitablefor; } public void setSuitablefor(String suitablefor) { this.suitablefor = suitablefor; }
	public String getIntensitylevel() { return intensitylevel; } public void setIntensitylevel(String intensitylevel) { this.intensitylevel = intensitylevel; }
	public int getCreatedat() { return createdat; } public void setCreatedat(int createdat) { this.createdat = createdat; }
	public int getUpdatedat() { return updatedat; } public void setUpdatedat(int updatedat) { this.updatedat = updatedat; }
}
