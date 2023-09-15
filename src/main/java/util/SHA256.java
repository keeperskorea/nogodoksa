package util;

import java.security.MessageDigest;

public class SHA256 {
	public static String getSHA256(String input) {
		StringBuffer result = new StringBuffer();
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			//원하는 salt값 입력하면 됨
			byte[] salt = "Hello! This is Salt nas.".getBytes();
			digest.reset();
			digest.update(salt);
			byte[] chars = digest.digest(input.getBytes("UTF-8"));
			for(int i = 0; i < chars.length; i++) {
				String hex = Integer.toHexString(0xff & chars[i]);
				//16진수형태로 출력
				if(hex.length() ==1) result.append("0");
				result.append(hex);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result.toString();
	}
}
