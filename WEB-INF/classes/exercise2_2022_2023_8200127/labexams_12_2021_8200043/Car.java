package labexams_12_2021_8200043;

public class Car {
  
    private String code;
    private String brand;
    private String model;
    private int year;      
    private int hasDiscount;
    private int isNew;

    /**
     * Constructor
     * 
     * @param code
     * @param brand
     * @param model
     * @param year
     * @param hasDiscount
     * @param isNew
     */
    public Car(String code, String brand, String model, int year, int hasDiscount, int isNew) {
        this.code = code;
        this.brand = brand;
        this.model = model;
        this.year = year;
        this.hasDiscount = hasDiscount;
        this.isNew = isNew;
    }

    /* Getters & Setters */

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getHasDiscount() {
        return hasDiscount;
    }

    public void setHasDiscount(int hasDiscount) {
        this.hasDiscount = hasDiscount;
    }

    public int getIsNew() {
        return isNew;
    }

    public void setIsNew(int isNew) {
        this.isNew = isNew;
    }
    
} // end of class