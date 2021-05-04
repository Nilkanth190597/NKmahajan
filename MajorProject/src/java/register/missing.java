/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package register;

public class missing {
  private String  first_name,last_name,father_name,city,gender,missing_form,marks,face,health,hair;
  private int birth,mobile_no,missing_date,height;

public missing() {

}

    public missing(String first_name, String last_name, String father_name,int birth,String city,int mobile_no, String gender, String missing_form, int missing_date, int height, String marks, String face, String health, String hair) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.father_name = father_name;
        this.birth = birth;
        this.city = city;
        this.mobile_no = mobile_no;
        this.gender = gender;
        this.missing_form = missing_form;
        this.missing_date = missing_date;
        this.height = height;
        this.marks = marks;
        this.face = face;
        this.health = health;
        this.hair = hair;    
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

    public int getMissing_date() {
        return missing_date;
    }

    public String getMissing_form() {
        return missing_form;
    }

    public int getMobile_no() {
        return mobile_no;
    }

    public String getCity() {
        return city;
    }

    public int getBirth() {
        return birth;
    }

    public int getHeight() {
        return height;
    }

    public String getFace() {
        return face;
    }

    public String getGender() {
        return gender;
    }

    public String getHealth() {
        return health;
    }

    public String getHair() {
        return hair;
    }

    public String getMarks() {
        return marks;
    }

    
}