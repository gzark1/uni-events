package teampackage;

import java.sql.*;

public class TicketDAO {
    public void newticket(Ticket ticket) throws Exception {
        Connection con = null;
        PreparedStatement stmt = null;
        DB db = new DB();     
        String id = ticket.getTicket_id();
		String usern = ticket.getUsername();
		String evid = ticket.getEvent_id();
        String fn = ticket.getF_name();
		String ln = ticket.getL_name();
		String phone = ticket.getPhone();
		String email = ticket.getEmail();
        String addr = ticket.getAddress();
        String pc = ticket.getPost_code();
        double price = ticket.getPrice();
        try{
            con = db.getConnection();
			String sql1 = "INSERT INTO ticket (ticket_id, username, event_id, f_name, l_name, phone, email, address, post_code, price) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
            stmt = con.prepareStatement(sql1);
            stmt.setString(1, id);
            stmt.setString(2, usern);
            stmt.setString(3, evid);
            stmt.setString(4, fn);
            stmt.setString(5, ln);
            stmt.setString(6, phone);
            stmt.setString(7, email);
            stmt.setString(8, addr);
            stmt.setString(9,pc);
            stmt.setDouble(10,price);
            stmt.executeUpdate();

        }catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally{

			try{
				stmt.close();
				con.close();

			}catch(Exception e){

			}
        }
    }
}
