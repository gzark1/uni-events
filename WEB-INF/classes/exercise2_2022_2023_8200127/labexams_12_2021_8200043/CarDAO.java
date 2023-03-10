package labexams_12_2021_8200043;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CarDAO {

    public List<Car> findCars(String keyword) throws Exception{

        DB db = new DB();
        Connection con = null;

        try{
            con = db.getConnection();
            ResultSet rs = null;
            String sql1 = "SELECT * FROM cars_exam_12_2021_8200043 WHERE brand=? OR model=? ORDER BY year DESC ";
            PreparedStatement stmt = con.prepareStatement(sql1);
            stmt.setString(1, keyword);
            stmt.setString(2, keyword);
            rs = stmt.executeQuery();
            List<Car> carlist = new ArrayList<Car>();

            while(rs.next()){

                String code = rs.getString(1);
                String brand = rs.getString(2);
                String model = rs.getString(3);
                int year = rs.getInt(4);
                int hasDiscount = rs.getInt(5);
                int isNew = rs.getInt(6);
                Car car = new Car(code, brand, model, year, hasDiscount, isNew);
                carlist.add(car);
            }
            rs.close();
            stmt.close();
            return carlist;

        } catch(Exception e){

            throw new Exception(e.getMessage());

        }finally{
            try{

                con.close();
                
            } catch(Exception e){

            }
        }

    }
    
    public Car getCarByCode(String carCode) throws Exception {

        Connection con = null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		DB db = new DB();

		try{

			con = db.getConnection();
			String sql1 = "SELECT * FROM cars_exam_12_2021_8200043 WHERE code = ?";
			stmt = con.prepareStatement(sql1);
			stmt.setString(1, carCode);
			rs = stmt.executeQuery();
			
			if(rs.next()){

				String brand = rs.getString(2);
				String model = rs.getString(3);
                int year = Integer.parseInt(rs.getString(4));
                int hasDiscount = Integer.parseInt(rs.getString(5));
                int isNew = Integer.parseInt(rs.getString(6));
				Car car = new Car(carCode, brand, model, year, hasDiscount, isNew);
				return car;

			}else{

                throw new Exception("Car with code: " + carCode + " not found!");

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
    }
     //End of getCarByCode

} //End of CarDAO