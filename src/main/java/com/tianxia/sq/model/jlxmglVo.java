package com.tianxia.sq.model;

public class jlxmglVo {
	
	private String jlxmGuid;
	private String jlxmId;
	private String jlxmName;
	private String jlxmCtime;
	private String jlxmState;
	private String jlxmRemarks;


	@Override
	public String toString() {
		return "jlxmglVo{" +
				"jlxmGuid='" + jlxmGuid + '\'' +
				", jlxmId='" + jlxmId + '\'' +
				", jlxmName='" + jlxmName + '\'' +
				", jlxmCtime='" + jlxmCtime + '\'' +
				", jlxmState='" + jlxmState + '\'' +
				", jlxmRemarks='" + jlxmRemarks + '\'' +
				'}';
	}

	public String getJlxmGuid() {
		return jlxmGuid;
	}

	public void setJlxmGuid(String jlxmGuid) {
		this.jlxmGuid = jlxmGuid;
	}

	public String getJlxmId() {
		return jlxmId;
	}

	public void setJlxmId(String jlxmId) {
		this.jlxmId = jlxmId;
	}

	public String getJlxmName() {
		return jlxmName;
	}

	public void setJlxmName(String jlxmName) {
		this.jlxmName = jlxmName;
	}

	public String getJlxmCtime() {
		return jlxmCtime;
	}

	public void setJlxmCtime(String jlxmCtime) {
		this.jlxmCtime = jlxmCtime;
	}

	public String getJlxmState() {
		return jlxmState;
	}

	public void setJlxmState(String jlxmState) {
		this.jlxmState = jlxmState;
	}

	public String getJlxmRemarks() {
		return jlxmRemarks;
	}

	public void setJlxmRemarks(String jlxmRemarks) {
		this.jlxmRemarks = jlxmRemarks;
	}
}
