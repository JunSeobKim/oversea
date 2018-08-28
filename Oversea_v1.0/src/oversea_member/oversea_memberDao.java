package oversea_member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

import oversea_member.oversea_member;
import oversea_member.ConnUtil;

public class oversea_memberDao {
	public int insertoversea_member(oversea_member oversea){
		  int rst = 0;
		  Connection conn = null;
		  PreparedStatement ps = null;
		  try{
		   conn = ConnUtil.getConnection();
		   String sql = "insert into user values(?,?,?,?,?,?,?)";
		   ps = conn.prepareStatement(sql);
		   ps.setString(1, oversea.getName());
		   ps.setString(2, oversea.getEmail());
		   ps.setString(3, oversea.getPasswd());
		   ps.setString(4, oversea.getPhone());
		   ps.setString(5, oversea.getBirth());
		   ps.setString(6, oversea.getZipcode());
		   ps.setString(7, oversea.getAddr());
		   rst = ps.executeUpdate();
		  }catch(Exception e){
		   e.printStackTrace();
		  }finally{
		   ConnUtil.close(ps, conn);
		  }
		  return rst;
		 }
		 
		 //이메일 중복확인
		 public int emailCheck(String email){
			  int rst = 0;
			  Connection conn = null;
			  PreparedStatement ps = null;
			  ResultSet rs = null;
			  try{
			   conn = ConnUtil.getConnection();
			   String sql = "select * from user where email=?";
			   ps = conn.prepareStatement(sql);
			   ps.setString(1, email);
			   rs = ps.executeQuery();
			   if(rs.next()){
			    rst = 1;
			   }
			  }catch(Exception e){
			   e.printStackTrace();
			  }finally{
			   ConnUtil.close(rs, ps, conn);
			  }
			  return rst;
			 }
		 
		//로그인
		 public int loginCheck(String email, String passwd){
			  int rst = 0;
			  Connection conn = null;
			  PreparedStatement ps = null;
			  ResultSet rs = null;
			  try{
			   conn = ConnUtil.getConnection();
			   String sql = "select * from user where email=?";
			   ps = conn.prepareStatement(sql);
			   ps.setString(1, email);
			   rs = ps.executeQuery();
			   if(rs.next()){
			    String DBpass = rs.getString("passwd");
			     if((DBpass.trim()).equals((passwd.trim()))){
			      rst=2;  // 로그인성공
			     }else{
			      rst=1;   // 비밀번호 틀림
			     }
			    }  // 아이디 없음
			  }catch(Exception e){
			   e.printStackTrace();
			  }finally{
			   ConnUtil.close(rs, ps, conn);
			  }
			  return rst;
			 }
		 
		 //아이디 찾기
		 public String findid(oversea_member oversea){
			  String email = null;
			  Connection conn = null;
			  PreparedStatement ps = null;
			  ResultSet rs = null;
			  try{
			   conn = ConnUtil.getConnection();
			   String sql = "select email from user where name=? and phone=?";
			   ps = conn.prepareStatement(sql);
			   ps.setString(1, oversea.getName());
			   ps.setString(2, oversea.getPhone());
			   rs = ps.executeQuery();
			   while(rs.next()){
			    email = rs.getString("email");
			   }
			  }catch(Exception e){
			   e.printStackTrace();
			  }finally{
			   ConnUtil.close(rs, ps, conn);
			  }
			  return email;
			 }
}
