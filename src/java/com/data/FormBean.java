package com.data;


import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MK
 */
public class FormBean implements Serializable{
    
    private String fName;
    private String lName;
    private String userID;
    private String password;
    private String rePassword;
    private String alias;
    private String countryOfRes;
    private String city;
    private String langauge;
    private String securityQues;
    private String securityAns;
    private String NC_CHECK_EMAIL;
    private String NC_CHECK_OTHER;
    
    

    
    /*
    Constructor
    */
    
    public FormBean() {
        
    }
    
    /*
    Checks to see if the email was valid, aka if it was empty
    */
    public boolean isValid(){
        
        //check to see if the string is "", if so return false
        if(this.getuserID().equals(""))
            return false;
        
            //return true
            return true;
        
        
    }

    public void setfName(String firstName) {
        this.fName = firstName;
    }

    public void setlName(String lastName) {
        this.lName = lastName;
    }

    public void setuserID(String emailAddress) {
        this.userID = emailAddress;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setrePassword(String verifyPassword) {
        this.rePassword = verifyPassword;
    }

    public void setalias(String displayName) {
        this.alias = displayName;
    }

    public void setcountryOfRes(String country) {
        this.countryOfRes = country;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setLangauge(String langauge) {
        this.langauge = langauge;
    }

    public void setsecurityQues(String securityQuestion) {
        this.securityQues = securityQuestion;
    }

    public void setsecurityAns(String answerQuestion) {
        this.securityAns = answerQuestion;
    }

    public void setNC_CHECK_EMAIL(String emailPref) {
        this.NC_CHECK_EMAIL = emailPref;
    }

    public void setNC_CHECK_OTHER(String telephonePref) {
        this.NC_CHECK_OTHER = telephonePref;
    }

    public String getFirstName() {
        return fName;
    }

    public String getlName() {
        return lName;
    }

    public String getuserID() {
        return userID;
    }

    public String getPassword() {
        return password;
    }

    public String getrePassword() {
        return rePassword;
    }

    public String getalias() {
        return alias;
    }

    public String getcountryOfRes() {
        return countryOfRes;
    }

    public String getCity() {
        return city;
    }

    public String getLangauge() {
        return langauge;
    }

    public String getsecurityQues() {
        return securityQues;
    }

    public String getsecurityAns() {
        return securityAns;
    }

    public String getNC_CHECK_EMAIL() {
        return NC_CHECK_EMAIL;
    }

    public String getNC_CHECK_OTHER() {
        return NC_CHECK_OTHER;
    }
    
   
    
    
    
    
}
