package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DatabaseUtil;

public class UserDAO {
	// 로그인 기능
		public int login(String userID, String userPassword) {
			String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DatabaseUtil.getConnection();
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, userID); // sql Injection 공격 방어 수단 : 1번째 물음표에 userID 입력
				rs = pstmt.executeQuery(); // 쿼리 실행
				if (rs.next()) {
					if (rs.getString(1).equals(userPassword)) // rs.getString(1) : select된 첫번째 컬럼
						return 1; // 로그인 성공
					else
						return 0; // 비밀번호 틀림
				}
				return -1; // 아이디 없음
			} catch (Exception e) {
				e.printStackTrace();

			} finally {
				try {
					if (conn != null)
						conn.close();
					if (pstmt != null)
						pstmt.close();
					if (rs != null)
						rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return -2; // DB 오류
		}

		public int join(UserDTO user) {
			String SQL = "INSERT INTO USER VALUES(?, ?, ?, ?, ?, ?, false)";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DatabaseUtil.getConnection();
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, user.getUserID());
				pstmt.setString(2, user.getUserPassword());
				pstmt.setString(3, user.getUserName());
				pstmt.setString(4, user.getUserBirth());
				pstmt.setString(5, user.getUserPhone());
				pstmt.setString(6, user.getUserEmailHash());
				return pstmt.executeUpdate(); // 0이상 값이 return된 경우 성공
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn != null)
						conn.close();
					if (pstmt != null)
						pstmt.close();
					if (rs != null)
						rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return -1; // DB 오류
		}
		
		//이메일 주소 반환
		public String getUserEmail(String userID) {
			String SQL = "SELECT userID From USER WHERE userID = ?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DatabaseUtil.getConnection();
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, userID);

				rs = pstmt.executeQuery(); // 0이상 값이 return된 경우 성공
				if (rs.next()) {
					return rs.getString(1);
				}
			} catch (Exception e) {
				e.printStackTrace();

			} finally {
				try {
					if (conn != null)
						conn.close();
					if (pstmt != null)
						pstmt.close();
					if (rs != null)
						rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return null; // DB 오류
		}

		// 이메일 체크 확인
		public boolean getUserEmailChecked(String userID) {
			String SQL = "SELECT userEmailChecked From USER WHERE userID = ?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DatabaseUtil.getConnection();
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, userID);

				rs = pstmt.executeQuery(); // 0이상 값이 return된 경우 성공
				if (rs.next()) {
					return rs.getBoolean(1);  //true반환
				}
			} catch (Exception e) {
				e.printStackTrace();

			} finally {
				try {
					if (conn != null)
						conn.close();
					if (pstmt != null)
						pstmt.close();
					if (rs != null)
						rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return false; // DB 오류
		}

		// 이메일 인증 확인
		public boolean setUserEmailChecked(String userID) {
			String SQL = "UPDATE USER SET userEmailChecked = true WHERE userID = ?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DatabaseUtil.getConnection();
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, userID);

				pstmt.executeUpdate();
				
				return true;

			} catch (Exception e) {
				e.printStackTrace();

			} finally {
				try {
					if (conn != null)
						conn.close();
					if (pstmt != null)
						pstmt.close();
					if (rs != null)
						rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return false; // DB 오류
		}
		
		//아이디 찾기
		public String findID(String userName, String userBirth, String userPhone) {
			String SQL = "SELECT userID From USER WHERE userName = ? and userBirth = ? and userPhone = ?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String userID = null;
			try {
				conn = DatabaseUtil.getConnection();
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, userName);
				pstmt.setString(2, userBirth);
				pstmt.setString(3, userPhone);

				rs = pstmt.executeQuery(); // 0이상 값이 return된 경우 성공
				while (rs.next()) {
					userID=rs.getString("userID");
				}
			} catch (Exception e) {
				e.printStackTrace();

			} finally {
				try {
					if (conn != null)
						conn.close();
					if (pstmt != null)
						pstmt.close();
					if (rs != null)
						rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return userID; // DB 오류
		}
		
		//비밀번호 찾기
			public String findPassword(String userID, String userName, String userBirth) {
				String SQL = "SELECT userPassword From USER WHERE userID = ? and userName = ? and userBirth = ?";
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String userPassword = null;
				try {
					conn = DatabaseUtil.getConnection();
					pstmt = conn.prepareStatement(SQL);
					pstmt.setString(1, userID);
					pstmt.setString(2, userName);
					pstmt.setString(3, userBirth);

					rs = pstmt.executeQuery(); // 0이상 값이 return된 경우 성공
					while (rs.next()) {
						userPassword=rs.getString("userPassword");
					}
				} catch (Exception e) {
					e.printStackTrace();

				} finally {
					try {
						if (conn != null)
							conn.close();
						if (pstmt != null)
							pstmt.close();
						if (rs != null)
							rs.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				return userPassword; // DB 오류
			}
			//비밀번호 변경
			public int updatePassword(String userID, String updatePassword) {
				String SQL = "UPDATE USER SET userPassword = ? WHERE userID = ?";
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try {
					conn = DatabaseUtil.getConnection();
					pstmt = conn.prepareStatement(SQL);

					pstmt.setString(1, updatePassword);
					pstmt.setString(2, userID);
					return pstmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						if (rs != null)
							rs.close();
						if (conn != null)
							conn.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				return -1; // DB 오류
			}
			
			//게시글 번호 부여
			public int getNextNum() {
				String SQL = "SELECT userNum FROM user ORDER BY userNum DESC";
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try {
					conn = DatabaseUtil.getConnection();
					pstmt = conn.prepareStatement(SQL);
					rs = pstmt.executeQuery();
					if (rs.next()) {
						return rs.getInt(1) + 1;
					}
					return 1; // 첫 번째 게시물인 경우
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						if (conn != null)
							conn.close();
						if (pstmt != null)
							pstmt.close();
						if (rs != null)
							rs.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				return -1; // DB 오류
			}
			
			//리스트 보여주기
			public ArrayList<UserDTO> getList(int startRow, int pageSize) {
				String SQL = "SELECT * FROM USER ORDER BY userNum ASC LIMIT ?,?";		
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				ArrayList<UserDTO> list = new ArrayList<UserDTO>();
				try {
					conn = DatabaseUtil.getConnection();
					pstmt = conn.prepareStatement(SQL);
					
					pstmt.setInt(1, startRow-1);
					pstmt.setInt(2, pageSize);
					
					rs = pstmt.executeQuery();
					while (rs.next()) {
						UserDTO user = new UserDTO();
						user.setUserNum(rs.getInt(1));
						user.setUserID(rs.getString(2));
						user.setUserPassword(rs.getString(3));
						user.setUserName(rs.getString(4));
						user.setUserBirth(rs.getString(5));
						user.setUserPhone(rs.getString(6));
						list.add(user);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				return list;
			}
}
