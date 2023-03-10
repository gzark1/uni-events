package teampackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


/**
 * UserDAO provides all the necessary methods related to users.
 * 
 * @author 
 *
 */
public class UserDAO {
		
	/**
	 * This method returns a List with all Users
	 * 
	 * @return List<User>
	 */
	public List<User> getUsers() throws Exception {
				
		
		Connection con = null;
		DB db = new DB();

		try{

			con = db.getConnection();
			ResultSet rs = null;
			String sql1 = "SELECT * FROM user";
			PreparedStatement stmt = con.prepareStatement(sql1);
			rs = stmt.executeQuery();
			
			List<User> userlist = new ArrayList<User>();

			while(rs.next()){

				
				String username = rs.getString(1);
				String password = rs.getString(2);
				String email = rs.getString(3);
				String preference = rs.getString(4);
				
				User usr = new User(username, password, email, preference);
				userlist.add(usr);

			}
			rs.close();
			stmt.close();
			return userlist;

		}catch(Exception e){

			throw new Exception(e.getMessage());

		}finally{

			try{

				con.close();

			}catch(Exception e){

			}
			
		}

	} //End of getUsers

	/**
	 * Search user by username
	 * 
	 * @param username, String
	 * @return User, the User object or null
	 * @throws Exception
	 */
	public User findUser(String username) throws Exception {

		Connection con = null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		DB db = new DB();

		try{

			con = db.getConnection();
			String sql1 = "SELECT * FROM user WHERE username = ?";
			stmt = con.prepareStatement(sql1);
			stmt.setString(1, username);
			rs = stmt.executeQuery();
			
			if(rs.next()){
				
				String password = rs.getString(2);
				String email = rs.getString(3);
				String preference = rs.getString(4);
				User user = new User(username, password, email, preference);
				return user;

			}else{

				return null;

			}
			

		}catch(Exception e){

			throw new Exception(e.getMessage());

		}finally{

			try{

				rs.close();
				stmt.close();
				con.close();

			}catch(Exception e){

			}
			
		}
		
	} //End of findUser

	/**
	 * This method is used to authenticate a user.
	 * 
	 * @param username, String
	 * @param password, String
	 * @return User, the User object
	 * @throws Exception, if the credentials are not valid
	 */
	public User authenticate(String email, String password) throws Exception {

		Connection con = null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		DB db = new DB();

		try{

			con = db.getConnection();
			String sql1 = "SELECT * FROM user WHERE email = ? AND pass_word = ?";
			stmt = con.prepareStatement(sql1);
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			
			if(rs.next()){

				String username = rs.getString(1);
				String preference = rs.getString(4);
				
				User user = new User(username, password, email, preference);
				return user;

			}else{

				throw new Exception("Wrong email or password");

			}
			

		}catch(Exception e){

			throw new Exception(e.getMessage());

		}finally{

			try{

				rs.close();
				stmt.close();
				con.close();

			}catch(Exception e){

			}
			
		}
	} //End of authenticate
	
	/**
	 * Register/create new User.
	 * 
	 * @param user, User
	 * @throws Exception, if encounter any error.
	 */
	public void register(User user) throws Exception {

		Connection con = null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		PreparedStatement stmt2 = null;

		DB db = new DB();
		String username = user.getUsername();
		String password = user.getPassword();
		String email = user.getEmail();
		String preference = user.getPreference();

		try{

			con = db.getConnection();
			String sql1 = "SELECT * FROM user WHERE username = ? OR email = ?";
			stmt = con.prepareStatement(sql1);
			stmt.setString(1, username);
			stmt.setString(2, email);
			rs = stmt.executeQuery();
			
			if(rs.next()){

				throw new Exception("Sorry, username or email already registered");

			}else{

				String sql2 = "INSERT INTO user (username, pass_word, email, preference) VALUES (?, ?, ?, ?)";
				stmt2 = con.prepareStatement(sql2);
				stmt2.setString(1,username);
				stmt2.setString(2,password);
				stmt2.setString(3,email);
				stmt2.setString(4,preference);
				stmt2.executeUpdate();

			}
			

		}catch(Exception e){

			throw new Exception(e.getMessage());

		}finally{

			try{

				rs.close();
				stmt.close();
				stmt2.close();
				con.close();

			}catch(Exception e){

			}
			
		}
		
	}//end of register

} //End of class
