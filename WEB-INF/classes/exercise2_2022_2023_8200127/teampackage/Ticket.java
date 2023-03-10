package teampackage;

public class Ticket {
     private String ticket_id;
     private String username;
     private String event_id;
     private String f_name;
     private String l_name;
     private int phone;
     private String email;
     private String address;
     private int post_code;
     private double price;
     private String payment_method;

     public Ticket(String ticket_id, String username, String event_id, String f_name, String l_name, int phone,
               String email,
               String address, int post_code, double price, String payment_method) {
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
          this.payment_method = payment_method;
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

     public int getPhone() {
          return phone;
     }

     public void setPhone(int phone) {
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

     public int getPost_code() {
          return post_code;
     }

     public void setPost_code(int post_code) {
          this.post_code = post_code;
     }

     public double getPrice() {
          return price;
     }

     public void setPrice(double price) {
          this.price = price;
     }

     public String getPayment_method() {
          return payment_method;
     }

     public void setPayment_method(String payment_method) {
          this.payment_method = payment_method;
     }

     

}
