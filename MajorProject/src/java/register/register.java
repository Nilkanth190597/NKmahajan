/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package register;
/**
 *
 * @author Bhavesh
 */
public class register {
   private String  first_name,last_name,father_name,district,state,gmail,password,conform_password;
 private int mobile_no,pincode,date;

public register() {
}

    public register(String first_name, String last_name, String father_name, String district, String state, String gmail, String password, String conform_password, int mobile_no, int pincode, int date) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.father_name = father_name;
        this.district = district;
        this.state = state;
        this.gmail = gmail;
        this.password = password;
        this.conform_password = conform_password;
        this.mobile_no = mobile_no;
        this.pincode = pincode;
        this.date = date;
    }

    public String getFirst_name() {
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public String getFather_name() {
        return father_name;
    }

    public int getMobile_no() {
        return mobile_no;
    }

    public String getDistrict() {
        return district;
    }

    public int getPincode() {
        return pincode;
    }

    public String getGmail() {
        return gmail;
    }

    public String getPassword() {
        return password;
    }

    public String getConform_password() {
        return conform_password;
    }

    public String getState() {
        return state;
    }

    public int getDate() {
        return date;
    }

    
   


}