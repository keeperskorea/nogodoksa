package lonelyDeathBBS;

public class LonelyDeathBBSDTO {
	private int lonelyDeathBBSID;
	private String lonelyDeathBBSTitle;
	private String userID;
	private String lonelyDeathBBSDate;
	private String lonelyDeathBBSContent;
	private String fileName;
	private String fileRealName;
	public int getLonelyDeathBBSID() {
		return lonelyDeathBBSID;
	}
	public void setLonelyDeathBBSID(int lonelyDeathBBSID) {
		this.lonelyDeathBBSID = lonelyDeathBBSID;
	}
	public String getLonelyDeathBBSTitle() {
		return lonelyDeathBBSTitle;
	}
	public void setLonelyDeathBBSTitle(String lonelyDeathBBSTitle) {
		this.lonelyDeathBBSTitle = lonelyDeathBBSTitle;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getLonelyDeathBBSDate() {
		return lonelyDeathBBSDate;
	}
	public void setLonelyDeathBBSDate(String lonelyDeathBBSDate) {
		this.lonelyDeathBBSDate = lonelyDeathBBSDate;
	}
	public String getLonelyDeathBBSContent() {
		return lonelyDeathBBSContent;
	}
	public void setLonelyDeathBBSContent(String lonelyDeathBBSContent) {
		this.lonelyDeathBBSContent = lonelyDeathBBSContent;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileRealName() {
		return fileRealName;
	}
	public void setFileRealName(String fileRealName) {
		this.fileRealName = fileRealName;
	}
	
	@Override
	public String toString() {
		return "LonelyDeathBBSDTO [lonelyDeathBBSID=" + lonelyDeathBBSID + ", lonelyDeathBBSTitle="
				+ lonelyDeathBBSTitle + ", userID=" + userID + ", lonelyDeathBBSDate=" + lonelyDeathBBSDate
				+ ", lonelyDeathBBSContent=" + lonelyDeathBBSContent + ", fileName=" + fileName + ", fileRealName="
				+ fileRealName + "]";
	}
	
	
}
