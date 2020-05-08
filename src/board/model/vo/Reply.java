package board.model.vo;

import java.sql.Date;

public class Reply {
	private int rId;
	private String rContent;
	private int refBid;
	private String rWriter;
	private String nickName;
	private Date rCreateDate;
	private Date rModifyDate;
	private String rStatus;

	public Reply() {
		// TODO Auto-generated constructor stub
	}

	public Reply(int rId, String rContent, int refBid, String rWriter, String nickName, Date rCreateDate,
			Date rModifyDate, String rStatus) {
		super();
		this.rId = rId;
		this.rContent = rContent;
		this.refBid = refBid;
		this.rWriter = rWriter;
		this.nickName = nickName;
		this.rCreateDate = rCreateDate;
		this.rModifyDate = rModifyDate;
		this.rStatus = rStatus;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rCountent) {
		this.rContent = rCountent;
	}

	public int getRefBid() {
		return refBid;
	}

	public void setRefBid(int refBid) {
		this.refBid = refBid;
	}

	public String getrWriter() {
		return rWriter;
	}

	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public Date getrCreateDate() {
		return rCreateDate;
	}

	public void setrCreateDate(Date rCreateDate) {
		this.rCreateDate = rCreateDate;
	}

	public Date getrModifyDate() {
		return rModifyDate;
	}

	public void setrModifyDate(Date rModifyDate) {
		this.rModifyDate = rModifyDate;
	}

	public String getrStatus() {
		return rStatus;
	}

	public void setrStatus(String rStatus) {
		this.rStatus = rStatus;
	}

	@Override
	public String toString() {
		return "Reply [rId=" + rId + ", rContent=" + rContent + ", refBid=" + refBid + ", rWriter=" + rWriter
				+ ", nickName=" + nickName + ", rCreateDate=" + rCreateDate + ", rModifyDate=" + rModifyDate
				+ ", rStatus=" + rStatus + "]";
	}

}
