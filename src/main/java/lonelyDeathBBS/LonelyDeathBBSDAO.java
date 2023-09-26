package lonelyDeathBBS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DatabaseUtil;

public class LonelyDeathBBSDAO {
	// 게시글 번호 부여
	public int getNextNum() {
		String SQL = "SELECT lonelyDeathBBSID FROM lonelyDeathBBS ORDER BY lonelyDeathBBSID DESC";

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

	// 현재 시간 가져오기
	public String getDate() {
		String SQL = "SELECT NOW()";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
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
		return ""; // DB 오류
	}

	// 게시글 작성
	public int write(String lonelyDeathBBSTitle, String userID, String lonelyDeathBBSContent, String fileName,
			String fileRealName) {
		String SQL = "INSERT INTO lonelyDeathBBS VALUES (?, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);

			pstmt.setInt(1, getNextNum()); // id값
			pstmt.setString(2, userID);
			pstmt.setString(3, getDate());
			pstmt.setString(4, lonelyDeathBBSTitle);
			pstmt.setString(5, lonelyDeathBBSContent);
			pstmt.setString(6, fileName);
			pstmt.setString(7, fileRealName);
			return pstmt.executeUpdate();
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
	
	// 게시글 수정
		public int update(int lonelyDeathBBSID,String lonelyDeathBBSTitle, String userID, String lonelyDeathBBSContent, String fileName,
				String fileRealName) {
			String SQL = "UPDATE lonelyDeathBBS SET userID = ?, lonelyDeathBBSDate = ?, lonelyDeathBBSTitle = ?, lonelyDeathBBSContent = ?, fileName = ?, fileRealName = ? WHERE lonelyDeathBBSID = ?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DatabaseUtil.getConnection();
				pstmt = conn.prepareStatement(SQL);

				pstmt.setString(1, userID);
				pstmt.setString(2, getDate());
				pstmt.setString(3, lonelyDeathBBSTitle);
				pstmt.setString(4, lonelyDeathBBSContent);
				pstmt.setString(5, fileName);
				pstmt.setString(6, fileRealName);
				pstmt.setInt(7, lonelyDeathBBSID); // id값
				return pstmt.executeUpdate();
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

	// 리스트 보여주기
	public ArrayList<LonelyDeathBBSDTO> getList(int startRow, int pageSize) {
		String SQL = "SELECT * FROM lonelyDeathBBS ORDER BY lonelyDeathBBSID ASC LIMIT ?,?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<LonelyDeathBBSDTO> list = new ArrayList<LonelyDeathBBSDTO>();
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);

			pstmt.setInt(1, startRow - 1);
			pstmt.setInt(2, pageSize);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				LonelyDeathBBSDTO lonelyDeathBBS = new LonelyDeathBBSDTO();
				lonelyDeathBBS.setLonelyDeathBBSID(rs.getInt(1));
				lonelyDeathBBS.setUserID(rs.getString(2));
				lonelyDeathBBS.setLonelyDeathBBSDate(rs.getString(3));
				lonelyDeathBBS.setLonelyDeathBBSTitle(rs.getString(4));
				lonelyDeathBBS.setLonelyDeathBBSContent(rs.getString(5));
				lonelyDeathBBS.setFileName(rs.getString(6));
				lonelyDeathBBS.setFileRealName(rs.getString(7));
				list.add(lonelyDeathBBS);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// 리스트 상세보기
	public ArrayList<LonelyDeathBBSDTO> getDetailList(int startRow, int pageSize, String lonelyDeathBBSDate) {
		String SQL = "SELECT * FROM lonelyDeathBBS where lonelyDeathBBSDate=? ORDER BY lonelyDeathBBSID ASC LIMIT ?,?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<LonelyDeathBBSDTO> list = new ArrayList<LonelyDeathBBSDTO>();
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, lonelyDeathBBSDate);
			pstmt.setInt(2, startRow - 1);
			pstmt.setInt(3, pageSize);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				LonelyDeathBBSDTO lonelyDeathBBS = new LonelyDeathBBSDTO();
				lonelyDeathBBS.setLonelyDeathBBSID(rs.getInt(1));
				lonelyDeathBBS.setUserID(rs.getString(2));
				lonelyDeathBBS.setLonelyDeathBBSDate(rs.getString(3));
				lonelyDeathBBS.setLonelyDeathBBSTitle(rs.getString(4));
				lonelyDeathBBS.setLonelyDeathBBSContent(rs.getString(5));
				lonelyDeathBBS.setFileName(rs.getString(6));
				lonelyDeathBBS.setFileRealName(rs.getString(7));
				list.add(lonelyDeathBBS);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// 리스트 상세보기2
		public ArrayList<LonelyDeathBBSDTO> getUpdate(int startRow, int pageSize, String lonelyDeathBBSID) {
			String SQL = "SELECT * FROM lonelyDeathBBS where lonelyDeathBBSID=? ORDER BY lonelyDeathBBSID ASC LIMIT ?,?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<LonelyDeathBBSDTO> list = new ArrayList<LonelyDeathBBSDTO>();
			try {
				conn = DatabaseUtil.getConnection();
				pstmt = conn.prepareStatement(SQL);

				pstmt.setString(1, lonelyDeathBBSID);
				pstmt.setInt(2, startRow - 1);
				pstmt.setInt(3, pageSize);

				rs = pstmt.executeQuery();
				while (rs.next()) {
					LonelyDeathBBSDTO lonelyDeathBBS = new LonelyDeathBBSDTO();
					lonelyDeathBBS.setLonelyDeathBBSID(rs.getInt(1));
					lonelyDeathBBS.setUserID(rs.getString(2));
					lonelyDeathBBS.setLonelyDeathBBSDate(rs.getString(3));
					lonelyDeathBBS.setLonelyDeathBBSTitle(rs.getString(4));
					lonelyDeathBBS.setLonelyDeathBBSContent(rs.getString(5));
					lonelyDeathBBS.setFileName(rs.getString(6));
					lonelyDeathBBS.setFileRealName(rs.getString(7));
					list.add(lonelyDeathBBS);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}

	// 데이터 상세 불러오기
	public LonelyDeathBBSDTO getLonelyDeathBBS(int lonelyDeathBBSID, String lonelyDeathBBSDate) {
		String SQL = "SELECT * FROM lonelydeathbbs WHERE lonelyDeathBBSID = ? and lonelydeathbbsDate=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, lonelyDeathBBSID);
			pstmt.setString(2, lonelyDeathBBSDate);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				LonelyDeathBBSDTO lonelyDeathBBS = new LonelyDeathBBSDTO();
				lonelyDeathBBS.setLonelyDeathBBSID(rs.getInt(1));
				lonelyDeathBBS.setUserID(rs.getString(2));
				lonelyDeathBBS.setLonelyDeathBBSDate(rs.getString(3));
				lonelyDeathBBS.setLonelyDeathBBSTitle(rs.getString(4));
				lonelyDeathBBS.setLonelyDeathBBSContent(rs.getString(5));
				lonelyDeathBBS.setFileName(rs.getString(6));
				lonelyDeathBBS.setFileRealName(rs.getString(7));
				return lonelyDeathBBS;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//게시글 삭제
	public int delete(int lonelyDeathBBSID) {
		String SQL = "DELETE FROM lonelydeathbbs WHERE lonelydeathBBSID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);

			pstmt.setInt(1, lonelyDeathBBSID);
			return pstmt.executeUpdate();
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

}
