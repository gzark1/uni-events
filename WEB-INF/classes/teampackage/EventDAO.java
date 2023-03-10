package teampackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class EventDAO {

    public Event findEventByName(String eventname) throws Exception {
        Connection con = null;
		DB db = new DB();
        ResultSet rs = null;
        PreparedStatement stmt = null;

        try{

			con = db.getConnection();
			String sql1 = "SELECT * FROM event WHERE e_name = ?";
			stmt = con.prepareStatement(sql1);
			stmt.setString(1, eventname);
			rs = stmt.executeQuery();

            if(rs.next()){
                String eventid = rs.getString(1);
                String ename = rs.getString(2);
                String edate = rs.getString(3);
                String etime = rs.getString(4);
                String elocation = rs.getString(5);
                double eprice = rs.getDouble(6);
                int availability = rs.getInt(7);
                String description = rs.getString(8);
                String category = rs.getString(9);
                String image = rs.getString(11);
                int interested = rs.getInt(11);
                


                Event evnt = new Event(eventid, ename, edate, etime, elocation, eprice, availability, description, category, image, interested);
                return evnt;
            } else {
                return null;
            }

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            rs.close();
			stmt.close();
			con.close();

        }

    }

    public Event findEventById(String event_id) throws Exception {
        Connection con = null;
		DB db = new DB();
        ResultSet rs = null;
        PreparedStatement stmt = null;

        try{

			con = db.getConnection();
			String sql1 = "SELECT * FROM event WHERE event_id = ?";
			stmt = con.prepareStatement(sql1);
			stmt.setString(1, event_id);
			rs = stmt.executeQuery();

            if(rs.next()){
                String ename = rs.getString(2);
                String edate = rs.getString(3);
                String etime = rs.getString(4);
                String elocation = rs.getString(5);
                double eprice = rs.getDouble(6);
                int availability = rs.getInt(7);
                String description = rs.getString(8);
                String category = rs.getString(9);               
                String image = rs.getString(10);
                int interested = rs.getInt(11);

                Event evnt = new Event(event_id, ename, edate, etime, elocation, eprice, availability, description, category, image, interested);
                return evnt;
            } else {
                return null;
            }

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            rs.close();
			stmt.close();
			con.close();

        }

    }

    

    public List<Event> getEvent() throws Exception {
        Connection con = null;
		DB db = new DB();
        ResultSet rs = null;
        PreparedStatement stmt = null;

        try {
            con = db.getConnection();
			String sql1 = "SELECT * FROM event";
			stmt = con.prepareStatement(sql1);
			rs = stmt.executeQuery();
			
			List<Event> eventlist = new ArrayList<Event>();

            while(rs.next()) {
                String eventid = rs.getString(1);
                String ename = rs.getString(2);
                String edate = rs.getString(3);
                String etime = rs.getString(4);
                String elocation = rs.getString(5);
                double eprice = rs.getDouble(6);
                int availability = rs.getInt(7);
                String description = rs.getString(8);
                String category = rs.getString(9);               
                String image = rs.getString(10);
                int interested = rs.getInt(11);

                Event evnt = new Event(eventid, ename, edate, etime, elocation, eprice, availability, description, category, image, interested);
                eventlist.add(evnt); {}
                
            }
            return eventlist;

        } catch (Exception e) {
            throw new Exception(e.getMessage());

        } finally {
                rs.close();
			    stmt.close();
				con.close();


        }

    }

    public List<Event> searchbar(String keyword) throws Exception {
        Connection con = null;
        DB db = new DB();
        ResultSet rs = null;
        PreparedStatement stmt = null;
        try {
            con = db.getConnection();
            String sql1 = "SELECT * FROM event WHERE e_name LIKE ? OR category = ? OR DESCRIPTION LIKE ?";
            stmt = con.prepareStatement(sql1);
            stmt.setString(1, "%"+keyword+"%");
            stmt.setString(2, keyword);
            stmt.setString(3, "%"+keyword+"%");
            rs = stmt.executeQuery();
            List<Event> eventlist = new ArrayList<Event>();
            while(rs.next()) {
                String eventid = rs.getString(1);
                String ename = rs.getString(2);
                String edate = rs.getString(3);
                String etime = rs.getString(4);
                String elocation = rs.getString(5);
                double eprice = rs.getDouble(6);
                int availability = rs.getInt(7);
                String description = rs.getString(8);
                String category = rs.getString(9);
                String image = rs.getString(10);
                int interested = rs.getInt(11);

                Event evnt = new Event(eventid, ename, edate, etime, elocation, eprice, availability, description, category, image, interested);
                eventlist.add(evnt); 

            }
            return eventlist;
        } catch (Exception e) {
            throw new Exception(e.getMessage());

        } finally {
                rs.close();
                stmt.close();
                con.close();


        }

    }
}