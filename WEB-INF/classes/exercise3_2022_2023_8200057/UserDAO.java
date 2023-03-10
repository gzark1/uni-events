package exercise3_2022_2023_8200057;

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
		PreparedStatement stmt1 = null;
		ResultSet rs = null;
		List<User> users = new ArrayList<User>();
		String sql = "SELECT * FROM users_ex3_8200057_2022_2023;";
		try {
			Connection con = db1.getConnection();
			stmt1 = con.prepareStatement(sql);
			rs = stmt1.executeQuery();
			while(rs.next()) {
				
				User userr = new User(rs.getString("firstname"), 
								  rs.getString("lastname"),
								  rs.getString("email"),
								  rs.getString("username"), 
								  rs.getString("password"));

				users.add(userr);

			}

		} catch ( SQLException e ) {
			throw new Exception(e.getMessage());

		} finally {
			rs.close();
			stmt1.close();
			db1.close();
		}
		return users;
		
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
		PreparedStatement stmt2 = null;
		ResultSet rs1 = null;
		String sql1 = "SELECT * FROM users_ex3_8200057_2022_2023 WHERE username = ? ;";
        try {
            Connection con = db2.getConnection();
			stmt2 = con.prepareStatement(sql1);
			stmt2.setString(1, username);
			rs1 = stmt2.executeQuery();
			if (rs1.next()) {
				User userr = new User(rs1.getString("firstname"),
				                      rs1.getString("lastname"),
									  rs1.getString("email"),
									  rs1.getString("username"),
									  rs1.getString("password"));
				return userr;   

			} else {
				return null;
			}
		} catch (SQLException e) {
			throw new Exception(e.getMessage());

		}finally {
            rs1.close();
			stmt2.close();
			db2.close();
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
		DB db3 = new DB();
		PreparedStatement stmt3 = null;
		ResultSet rs3 = null;
		String sql3 = "SELECT * FROM users_ex3_8200057_2022_2023 WHERE username = ? AND password = ? ;";
		try {
			Connection con = db3.getConnection();
			stmt3 = con.prepareStatement(sql3);
			stmt3.setString(1, username);
			stmt3.setString(2, password);
			rs3 = stmt3.executeQuery();
			if (rs3.next()) {
				User userr = new User(rs3.getString("firstname"),
				                      rs3.getString("lastname"),
									  rs3.getString("email"),
									  rs3.getString("username"),
									  rs3.getString("password"));
				return userr;   

			}
				throw new Exception("Wrong username or password");

		} catch (SQLException e) {
			throw new Exception (e.getMessage());

		} finally {
			rs3.close();
			stmt3.close();
			db3.close();
    	}
			
		
			
		
	} //End of authenticate
	
	/**
	 * Register/create new User.
	 * 
	 * @param user, User
	 * @throws Exception, if encounter any error.
	 */
	public void register(User user) throws Exception {
		DB db4 = new DB();
		String username = user.getUsername();
		String email = user.getEmail();
		PreparedStatement stmt4 = null;
        PreparedStatement stmt5 = null;
		ResultSet rs4 = null;
		String sql4 = "SELECT * FROM users_ex3_8200057_2022_2023 WHERE username = ? OR email = ? ;";
		try {
			Connection con = db4.getConnection();
			stmt4 = con.prepareStatement(sql4);
			stmt4.setString(1, username);
			stmt4.setString(2, email);
			rs4 = stmt4.executeQuery();
			if (rs4.next()) {
				throw new Exception("Sorry, username or email already registered");

            } else {
                String sql5 = "INSERT INTO users_ex3_8200057_2022_2023(username, firstname, lastname, email, password)) VALUES (?, ?, ?, ?, ?) " ;
                stmt5 = con.prepareStatement(sql5);
				stmt5.setString(1, user.getUsername());
				stmt5.setString(2, user.getFirstname());
				stmt5.setString(3, user.getLastname());
				stmt5.setString(4, user.getEmail());
				stmt5.setString(5, user.getPassword());
				stmt5.executeUpdate();
				
			}
		} catch (SQLException e) {
			throw new Exception(e.getMessage());

		} finally {
			rs4.close();
			stmt4.close();
			db4.close();
		}

		
		
		
	}//end of register

} //End of class
