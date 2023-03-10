package exercise3_2022_2023_8200043;

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
				
		// THEMA 1 A
		
		Connection con = null;
		DB db = new DB();

		try{

			con = db.getConnection();
			ResultSet rs = null;
			String sql1 = "SELECT * FROM users_ex3_8200043_2022_2023";
			PreparedStatement stmt = con.prepareStatement(sql1);
			rs = stmt.executeQuery();
			
			List<User> userlist = new ArrayList<User>();

			while(rs.next()){

				
				String username = rs.getString(1);
				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String email = rs.getString(4);
				String password = rs.getString(5);
				
				User usr = new User(firstname, lastname, email, username, password);
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
		// THEMA 1 B
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		DB db = new DB();

		try{

			con = db.getConnection();
			String sql1 = "SELECT * FROM users_ex3_8200043_2022_2023 WHERE username = ?";
			stmt = con.prepareStatement(sql1);
			stmt.setString(1, username);
			rs = stmt.executeQuery();
			
			if(rs.next()){

				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String email = rs.getString(4);
				String password = rs.getString(5);
				User user = new User(firstname, lastname, email, username, password);
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
	public User authenticate(String username, String password) throws Exception {
			// THEMA 1 C
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		DB db = new DB();

		try{

			con = db.getConnection();
			String sql1 = "SELECT * FROM users_ex3_8200043_2022_2023 WHERE username = ? AND password = ?";
			stmt = con.prepareStatement(sql1);
			stmt.setString(1, username);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			
			if(rs.next()){

				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String email = rs.getString(4);
				
				User user = new User(firstname, lastname, email, username, password);
				return user;

			}else{

				throw new Exception("Wrong username or password");

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
		// THEMA 1 D
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		PreparedStatement stmt2 = null;

		DB db = new DB();
		String username = user.getUsername();
		String email = user.getEmail();
		String firstname = user.getFirstname();
		String lastname = user.getLastname();
		String password = user.getPassword();

		try{

			con = db.getConnection();
			String sql1 = "SELECT * FROM users_ex3_8200043_2022_2023 WHERE username = ? OR email = ?";
			stmt = con.prepareStatement(sql1);
			stmt.setString(1, username);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			
			if(rs.next()){

				throw new Exception("Sorry, username or email already registered");

			}else{

				String sql2 = "INSERT INTO users_ex3_8200043_2022_2023 (username, firstname, lastname, email, password) VALUES (?, ?, ?, ?, ?)";
				stmt2 = con.prepareStatement(sql2);
				stmt2.setString(1,username);
				stmt2.setString(2,firstname);
				stmt2.setString(3,lastname);
				stmt2.setString(4,email);
				stmt2.setString(5,password);
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
