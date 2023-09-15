package user;

public class UserDTO {
	private int userNum;
	private String userID;
	private String userPassword;
	private String userName;
	private String userBirth;
	private String userPhone;
	private String userEmailHash;
	private boolean userEmailChecked;


	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmailHash() {
		return userEmailHash;
	}

	public void setUserEmailHash(String userEmailHash) {
		this.userEmailHash = userEmailHash;
	}

	public boolean isUserEmailChecked() {
		return userEmailChecked;
	}

	public void setUserEmailChecked(boolean userEmailChecked) {
		this.userEmailChecked = userEmailChecked;
	}

	public UserDTO() {
		
	}

	public UserDTO(String userID, String userPassword, String userName, String userBirth, String userPhone,
			String userEmailHash, boolean userEmailChecked, int userNum) {
		this.userNum = userNum;
		this.userID = userID;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userPhone = userPhone;
		this.userEmailHash = userEmailHash;
		this.userEmailChecked = userEmailChecked;
	}

	@Override
	public String toString() {
		return "UserDTO [userNum=" + userNum + ", userID=" + userID + ", userPassword=" + userPassword + ", userName="
				+ userName + ", userBirth=" + userBirth + ", userPhone=" + userPhone + ", userEmailHash="
				+ userEmailHash + ", userEmailChecked=" + userEmailChecked + "]";
	}
}
