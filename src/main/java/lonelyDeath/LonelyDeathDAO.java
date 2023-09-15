package lonelyDeath;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DatabaseUtil;

public class LonelyDeathDAO {
	//게시글 번호 부여
		public int getNextNum() {
			String SQL = "SELECT lonelyDeathID FROM lonelyDeath ORDER BY lonelyDeathID DESC";
			
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
			}catch(Exception e) {
				e.printStackTrace();
			} 
			finally {
				try {
					if(rs != null) rs.close();
					if(conn != null) conn.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			return ""; //DB 오류 
		}
		
		public int insertLonelyDeath(String userID, int count, String check1, String check2, String check3, String check4, String check5, String check6, String check7, String check8,
				String check9, String check10, String check11, String check12, String check13, String check14, String check15, String check16, String check17, String check18,
				String check19, String check20, String check21, String check22, String check23, String check24, String check25, String check26, String check27) {
			String SQL = "INSERT INTO lonelyDeath VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DatabaseUtil.getConnection();
				pstmt = conn.prepareStatement(SQL);

				pstmt.setInt(1, getNextNum());
				pstmt.setString(2, userID);
				pstmt.setString(3, getDate());
				pstmt.setInt(4, count);
				pstmt.setString(5, check1);
				pstmt.setString(6, check2);
				pstmt.setString(7, check3);
				pstmt.setString(8, check4);
				pstmt.setString(9, check5);
				pstmt.setString(10, check6);
				pstmt.setString(11, check7);
				pstmt.setString(12, check8);
				pstmt.setString(13, check9);
				pstmt.setString(14, check10);
				pstmt.setString(15, check11);
				pstmt.setString(16, check12);
				pstmt.setString(17, check13);
				pstmt.setString(18, check14);
				pstmt.setString(19, check15);
				pstmt.setString(20, check16);
				pstmt.setString(21, check17);
				pstmt.setString(22, check18);
				pstmt.setString(23, check19);
				pstmt.setString(24, check20);
				pstmt.setString(25, check21);
				pstmt.setString(26, check22);
				pstmt.setString(27, check23);
				pstmt.setString(28, check24);
				pstmt.setString(29, check25);
				pstmt.setString(30, check26);
				pstmt.setString(31, check27);
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
		
		//내정보 - 고독사리스트 - 페이징처리
			public ArrayList<LonelyDeathDTO> getList(int startRow, int pageSize, String userID) {
				String SQL = "SELECT * FROM lonelydeath WHERE userID=? ORDER BY lonelyDeathID ASC LIMIT ?,?";
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				ArrayList<LonelyDeathDTO> list = new ArrayList<LonelyDeathDTO>();
				try {
					conn = DatabaseUtil.getConnection();
					pstmt = conn.prepareStatement(SQL);
					
					pstmt.setString(1, userID);
					pstmt.setInt(2, startRow-1);
					pstmt.setInt(3, pageSize);
					rs = pstmt.executeQuery();
					while (rs.next()) {
						LonelyDeathDTO lonelyDeath = new LonelyDeathDTO();
						lonelyDeath.setLonelyDeathID(rs.getInt(1));
						lonelyDeath.setUserID(rs.getString(2));
						lonelyDeath.setLonelyDeathDate(rs.getString(3));
						lonelyDeath.setLonelyDeathCount(rs.getInt(4));
						lonelyDeath.setLonelyDeathCheck1(rs.getString(5));
						lonelyDeath.setLonelyDeathCheck2(rs.getString(6));
						lonelyDeath.setLonelyDeathCheck3(rs.getString(7));
						lonelyDeath.setLonelyDeathCheck4(rs.getString(8));
						lonelyDeath.setLonelyDeathCheck5(rs.getString(9));
						lonelyDeath.setLonelyDeathCheck6(rs.getString(10));
						lonelyDeath.setLonelyDeathCheck7(rs.getString(11));
						lonelyDeath.setLonelyDeathCheck8(rs.getString(12));
						lonelyDeath.setLonelyDeathCheck9(rs.getString(13));
						lonelyDeath.setLonelyDeathCheck10(rs.getString(14));
						lonelyDeath.setLonelyDeathCheck11(rs.getString(15));
						lonelyDeath.setLonelyDeathCheck12(rs.getString(16));
						lonelyDeath.setLonelyDeathCheck13(rs.getString(17));
						lonelyDeath.setLonelyDeathCheck14(rs.getString(18));
						lonelyDeath.setLonelyDeathCheck15(rs.getString(19));
						lonelyDeath.setLonelyDeathCheck16(rs.getString(20));
						lonelyDeath.setLonelyDeathCheck17(rs.getString(21));
						lonelyDeath.setLonelyDeathCheck18(rs.getString(22));
						lonelyDeath.setLonelyDeathCheck19(rs.getString(23));
						lonelyDeath.setLonelyDeathCheck20(rs.getString(24));
						lonelyDeath.setLonelyDeathCheck21(rs.getString(25));
						lonelyDeath.setLonelyDeathCheck22(rs.getString(26));
						lonelyDeath.setLonelyDeathCheck23(rs.getString(27));
						lonelyDeath.setLonelyDeathCheck24(rs.getString(28));
						lonelyDeath.setLonelyDeathCheck25(rs.getString(29));
						lonelyDeath.setLonelyDeathCheck26(rs.getString(30));
						lonelyDeath.setLonelyDeathCheck27(rs.getString(31));

						list.add(lonelyDeath);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				return list;
			}
			
			//체크리스트 상세 페이지 보기
			public ArrayList<LonelyDeathDTO> getCheckList(int startRow, int pageSize, String userID, String lonelyDeathDate) {
				String SQL = "SELECT * FROM lonelydeath WHERE userID=? AND lonelyDeathDate=? ORDER BY lonelyDeathID ASC LIMIT ?,?";
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				ArrayList<LonelyDeathDTO> list = new ArrayList<LonelyDeathDTO>();
				try {
					conn = DatabaseUtil.getConnection();
					pstmt = conn.prepareStatement(SQL);
					
					pstmt.setString(1, userID);
					pstmt.setString(2, lonelyDeathDate);
					pstmt.setInt(3, startRow-1);
					pstmt.setInt(4, pageSize);
					rs = pstmt.executeQuery();
					while (rs.next()) {
						LonelyDeathDTO lonelyDeath = new LonelyDeathDTO();
						lonelyDeath.setLonelyDeathID(rs.getInt(1));
						lonelyDeath.setUserID(rs.getString(2));
						lonelyDeath.setLonelyDeathDate(rs.getString(3));
						lonelyDeath.setLonelyDeathCount(rs.getInt(4));
						lonelyDeath.setLonelyDeathCheck1(rs.getString(5));
						lonelyDeath.setLonelyDeathCheck2(rs.getString(6));
						lonelyDeath.setLonelyDeathCheck3(rs.getString(7));
						lonelyDeath.setLonelyDeathCheck4(rs.getString(8));
						lonelyDeath.setLonelyDeathCheck5(rs.getString(9));
						lonelyDeath.setLonelyDeathCheck6(rs.getString(10));
						lonelyDeath.setLonelyDeathCheck7(rs.getString(11));
						lonelyDeath.setLonelyDeathCheck8(rs.getString(12));
						lonelyDeath.setLonelyDeathCheck9(rs.getString(13));
						lonelyDeath.setLonelyDeathCheck10(rs.getString(14));
						lonelyDeath.setLonelyDeathCheck11(rs.getString(15));
						lonelyDeath.setLonelyDeathCheck12(rs.getString(16));
						lonelyDeath.setLonelyDeathCheck13(rs.getString(17));
						lonelyDeath.setLonelyDeathCheck14(rs.getString(18));
						lonelyDeath.setLonelyDeathCheck15(rs.getString(19));
						lonelyDeath.setLonelyDeathCheck16(rs.getString(20));
						lonelyDeath.setLonelyDeathCheck17(rs.getString(21));
						lonelyDeath.setLonelyDeathCheck18(rs.getString(22));
						lonelyDeath.setLonelyDeathCheck19(rs.getString(23));
						lonelyDeath.setLonelyDeathCheck20(rs.getString(24));
						lonelyDeath.setLonelyDeathCheck21(rs.getString(25));
						lonelyDeath.setLonelyDeathCheck22(rs.getString(26));
						lonelyDeath.setLonelyDeathCheck23(rs.getString(27));
						lonelyDeath.setLonelyDeathCheck24(rs.getString(28));
						lonelyDeath.setLonelyDeathCheck25(rs.getString(29));
						lonelyDeath.setLonelyDeathCheck26(rs.getString(30));
						lonelyDeath.setLonelyDeathCheck27(rs.getString(31));

						list.add(lonelyDeath);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				return list;
			}
			
			//체크리스트 상세 페이지 보기
					public ArrayList<LonelyDeathDTO> getCheckListAll(int startRow, int pageSize) {
						String SQL = "SELECT * FROM lonelydeath ORDER BY lonelyDeathID ASC LIMIT ?,?";
						Connection conn = null;
						PreparedStatement pstmt = null;
						ResultSet rs = null;
						ArrayList<LonelyDeathDTO> list = new ArrayList<LonelyDeathDTO>();
						try {
							conn = DatabaseUtil.getConnection();
							pstmt = conn.prepareStatement(SQL);
							
							pstmt.setInt(1, startRow-1);
							pstmt.setInt(2, pageSize);
							rs = pstmt.executeQuery();
							while (rs.next()) {
								LonelyDeathDTO lonelyDeath = new LonelyDeathDTO();
								lonelyDeath.setLonelyDeathID(rs.getInt(1));
								lonelyDeath.setUserID(rs.getString(2));
								lonelyDeath.setLonelyDeathDate(rs.getString(3));
								lonelyDeath.setLonelyDeathCount(rs.getInt(4));
								lonelyDeath.setLonelyDeathCheck1(rs.getString(5));
								lonelyDeath.setLonelyDeathCheck2(rs.getString(6));
								lonelyDeath.setLonelyDeathCheck3(rs.getString(7));
								lonelyDeath.setLonelyDeathCheck4(rs.getString(8));
								lonelyDeath.setLonelyDeathCheck5(rs.getString(9));
								lonelyDeath.setLonelyDeathCheck6(rs.getString(10));
								lonelyDeath.setLonelyDeathCheck7(rs.getString(11));
								lonelyDeath.setLonelyDeathCheck8(rs.getString(12));
								lonelyDeath.setLonelyDeathCheck9(rs.getString(13));
								lonelyDeath.setLonelyDeathCheck10(rs.getString(14));
								lonelyDeath.setLonelyDeathCheck11(rs.getString(15));
								lonelyDeath.setLonelyDeathCheck12(rs.getString(16));
								lonelyDeath.setLonelyDeathCheck13(rs.getString(17));
								lonelyDeath.setLonelyDeathCheck14(rs.getString(18));
								lonelyDeath.setLonelyDeathCheck15(rs.getString(19));
								lonelyDeath.setLonelyDeathCheck16(rs.getString(20));
								lonelyDeath.setLonelyDeathCheck17(rs.getString(21));
								lonelyDeath.setLonelyDeathCheck18(rs.getString(22));
								lonelyDeath.setLonelyDeathCheck19(rs.getString(23));
								lonelyDeath.setLonelyDeathCheck20(rs.getString(24));
								lonelyDeath.setLonelyDeathCheck21(rs.getString(25));
								lonelyDeath.setLonelyDeathCheck22(rs.getString(26));
								lonelyDeath.setLonelyDeathCheck23(rs.getString(27));
								lonelyDeath.setLonelyDeathCheck24(rs.getString(28));
								lonelyDeath.setLonelyDeathCheck25(rs.getString(29));
								lonelyDeath.setLonelyDeathCheck26(rs.getString(30));
								lonelyDeath.setLonelyDeathCheck27(rs.getString(31));

								list.add(lonelyDeath);
							}
						} catch (Exception e) {
							e.printStackTrace();
						}
						return list;
					}
}
