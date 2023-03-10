package teampackage;

public class Ticket {
     private String ticket_id;
     private String username;
     private String event_id;
     private String f_name;
     private String l_name;
     private String phone;
     private String email;
     private String address;
     private String post_code;
     private double price;

     public Ticket(String ticket_id, String username, String event_id, String f_name, String l_name, String phone,
               String email,
               String address, String post_code, double price) {
          this.ticket_id = ticket_id;
          this.username = username;
          this.event_id = event_id;
          this.f_name = f_name;
          this.l_name = l_name;
          this.phone = phone;
          this.email = email;
          this.address = address;
          this.post_code = post_code;
          this.price = price;

     }

     public String getTicket_id() {
          return ticket_id;
     }

     public void setTicket_id(String ticket_id) {
          this.ticket_id = ticket_id;
     }

     public String getUsername() {
          return username;
     }

     public void setUsername(String username) {
          this.username = username;
     }

     public String getEvent_id() {
          return event_id;
     }

     public void setEvent_id(String event_id) {
          this.event_id = event_id;
     }

     public String getF_name() {
          return f_name;
     }

     public void setF_name(String f_name) {
          this.f_name = f_name;
     }

     public String getL_name() {
          return l_name;
     }

     public void setL_name(String l_name) {
          this.l_name = l_name;
     }

     public String getPhone() {
          return phone;
     }

     public void setPhone(String phone) {
          this.phone = phone;
     }

     public String getEmail() {
          return email;
     }

     public void setEmail(String email) {
          this.email = email;
     }

     public String getAddress() {
          return address;
     }

     public void setAddress(String address) {
          this.address = address;
     }

     public String getPost_code() {
          return post_code;
     }

     public void setPost_code(String post_code) {
          this.post_code = post_code;
     }

     public double getPrice() {
          return price;
     }

     public void setPrice(double price) {
          this.price = price;
     }

 

}
