package teampackage;

import java.sql.*;

public class LikesDAO {
    
    public void updateEventLikes(String eventId, String username, String userAction) {
        Connection con = null;
		DB db = new DB();
        
        PreparedStatement stmt = null;

        try {
            con = db.getConnection();
            if (userAction.equals("like")){
                String sql1 = "UPDATE event SET interested = interested + 1 WHERE event_id = ?";
                stmt = con.prepareStatement(sql1);
                stmt.setString(1, eventId);
                stmt.executeQuery();
            } else if (userAction.equals("unlike")){
                String sql1 = "UPDATE event SET interested = interested - 1 WHERE event_id = ?";
                stmt = con.prepareStatement(sql1);
                stmt.setString(1, eventId);
                stmt.executeUpdate();
            }
			
        } catch (Exception e) {
            System.err.println("Error checking if user likes event: " + e.getMessage());
        } finally {
            // close resources
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
              } catch (SQLException e) {
                System.err.println("Error closing JDBC resources: " + e.getMessage());
              }
        }
    }


    public boolean userLikesEvent(String username, String event_id){

        Connection con = null;
		DB db = new DB();
        ResultSet rs = null;
        PreparedStatement stmt = null;
        boolean isLiked = false;

        try{

			con = db.getConnection();
			String sql1 = "SELECT * FROM likes WHERE username = ? AND event_id = ? AND is_like = 1";
            stmt = con.prepareStatement(sql1);
            stmt.setString(1, username);
            stmt.setString(2, event_id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                isLiked = true;
            }

        } catch (Exception e) {
            System.err.println("Error checking if user likes event: " + e.getMessage());
        } finally {
            // close resources
            try {
              if (rs != null) rs.close();
              if (stmt != null) stmt.close();
            } catch (SQLException e) {
              System.err.println("Error closing JDBC resources: " + e.getMessage());
            }
          }
        return isLiked;
    }
}
