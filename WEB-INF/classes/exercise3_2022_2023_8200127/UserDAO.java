package exercise3_2022_2023_8200127;

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
		
		DB db1 = new DB();		
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql1 = "SELECT * FROM users_ex3_8200127_2022_2023;";
		List<User> users = new ArrayList<User>();
		try {
			Connection con = db1.getConnection();
			stmt = con.prepareStatement(sql1);
			rs = stmt.executeQuery();
			while(rs.next()) {
				
				User user1 = new User(rs.getString("firstname"), 
								  rs.getString("lastname"),
								  rs.getString("email"),
								  rs.getString("username"), 
								  rs.getString("password"));

				users.add(user1);

			}
			
		} catch (Exception e) {
			throw new Exception(e.getMessage());		
		} finally {
			rs.close();
			stmt.close();			
			db1.close();
		}
		return users;
		// ΘΕΜΑ 1 A
		
		
	} //End of getUsers

	/**
	 * Search user by username
	 * 
	 * @param username, String
	 * @return User, the User object or null
	 * @throws Exception
	 */
	public User findUser(String username) throws Exception {
		
		DB db2 = new DB();		
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql1 = "SELECT * FROM users_ex3_8200127_2022_2023 WHERE username = ?;";
		try {
			Connection con = db2.getConnection();
			stmt = con.prepareStatement(sql1);
			stmt.setString(1,username);
			rs = stmt.executeQuery();
			if(rs.next()) {
				User user1 = new User(rs.getString("firstname"), 
								  rs.getString("lastname"),
								  rs.getString("email"),
								  rs.getString("username"), 
								  rs.getString("password"));
				return user1;
			} else {
				return null;
			}
						
		} catch (Exception e) {
			throw new Exception(e.getMessage());		
		} finally {	
			rs.close();
			stmt.close();		
			db2.close();
		}


		// ΘΕΜΑ 1 B
		
		
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
		
		DB db3 = new DB();		
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql1 = "SELECT * FROM users_ex3_8200127_2022_2023 WHERE username = ? AND password = ?;";
		try {
			Connection con = db3.getConnection();
			stmt = con.prepareStatement(sql1);
			stmt.setString(1, username);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			if(rs.next()) {
				User user1 = new User(rs.getString("firstname"), 
								  rs.getString("lastname"),
								  rs.getString("email"),
								  rs.getString("username"), 
								  rs.getString("password"));
				return user1;				
			}
			
			throw new Exception("Wrong username or password");
		} catch (Exception e) {
			throw new Exception(e.getMessage());		
		} finally {
			rs.close();
			stmt.close();			
			db3.close();
		}
			
		// ΘΕΜΑ 1 C
			
		
	} //End of authenticate
	
	/**
	 * Register/create new User.
	 * 
	 * @param user, User
	 * @throws Exception, if encounter any error.
	 */
	public void register(User user) throws Exception {
			
		DB db4 = new DB();		
		PreparedStatement stmt = null;
		PreparedStatement stmt2 = null;
		ResultSet rs = null;
		String sql1 = "SELECT * FROM users_ex3_8200127_2022_2023 WHERE username = ? OR email = ?;";
		try {
			Connection con = db4.getConnection();
			stmt = con.prepareStatement(sql1);
			stmt.setString(1,user.getUsername());
			stmt.setString(2,user.getEmail());
			rs = stmt.executeQuery();
			if(rs.next()) {
			
				throw new Exception("Sorry, username or email already registered");
			} else {
				String sql2 = "INSERT INTO users_ex3_8200127_2022_2023 (username, firstname, lastname, email, password)" +
				"VALUES (?, ?, ?, ?, ?);";
				stmt2 = con.prepareStatement(sql2);
				stmt2.setString(1, user.getUsername());
				stmt2.setString(2, user.getFirstname());
				stmt2.setString(3, user.getLastname());
				stmt2.setString(4, user.getEmail());
				stmt2.setString(5, user.getPassword());
				stmt2.executeUpdate();		
			}
		} catch (Exception e) {
			throw new Exception(e.getMessage());		
		} finally {	
			rs.close();
			stmt.close();		
			db4.close();
		}

		// ΘΕΜΑ 1 D
		
		
	}//end of register

} //End of class
