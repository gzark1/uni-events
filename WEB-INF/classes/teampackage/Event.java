package teampackage;

public class Event {
     private String event_id;
     private String e_name;
     private String e_date;
     private String e_time;
     private String e_location;
     private double e_price;
     private int availability;
     private String description;
     private String category;
     private String image;
     private int interested;
     /**
      * @param event_id
      * @param e_name
      * @param e_date
      * @param e_time
      * @param e_location
      * @param e_price
      * @param availability
      * @param description
      * @param category
      * @param image
      * @param interested
      
      */
     public Event (String event_id, String e_name, String e_date, String e_time, String e_location, double e_price, int availability, String description, String category, String image, int interested) {
          this.event_id = event_id;
          this.e_name = e_name;
          this.e_date = e_date;
          this.e_time = e_time;
          this.e_location = e_location;
          this.e_price = e_price;
          this.availability = availability;
          this.description = description;
          this.category = category;
          this.image = image;
          this.interested = interested;
     }
     public String getEvent_id() {
          return event_id;
     }
     public void setEvent_id(String event_id) {
          this.event_id = event_id;
     }
     public String getE_name() {
          return e_name;
     }
     public void setE_name(String e_name) {
          this.e_name = e_name;
     }
     public String getE_date() {
          return e_date;
     }
     public void setE_date(String e_date) {
          this.e_date = e_date;
     }
     public String getE_time() {
          return e_time;
     }
     public void setE_time(String e_time) {
          this.e_time = e_time;
     }
     public String getE_location() {
          return e_location;
     }
     public void setE_location(String e_location) {
          this.e_location = e_location;
     }
     public double getE_price() {
          return e_price;
     }
     public void setE_price(double e_price) {
          this.e_price = e_price;
     }
     public int getAvailability() {
          return availability;
     }
     public void setAvailability(int availability) {
          this.availability = availability;
     }
     public String getDescription() {
          return description;
     }
     public void setDescription(String description) {
          this.description = description;
     }
     public String getCategory() {
          return category;
     }
     public void setCategory(String category) {
          this.category = category;
     }
     public int getInterested() {
          return interested;
     }
     public void setInterested(int interested) {
          this.interested = interested;
     }
     public String getImage() {
          return image;
     }
     public void setImage(String image) {
          this.image = image;
     }
}