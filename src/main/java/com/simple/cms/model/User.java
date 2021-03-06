package com.simple.cms.model;
// Generated 19-May-2014 22:35:47 by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * User generated by hbm2java
 */

@Component
@Scope("session")
public class User  implements java.io.Serializable {


     private Integer userId;
     private String name;
     private String userName;
     private String password;
     private Date creationDate;
     private String phone;
     private Set articles = new HashSet(0);

    public User() {
    }

	
    public User(String userName) {

        this.userName = userName;
    }
    public User( String name, String userName, String password, Date creationDate, String phone, Set articles) {

       this.name = name;
       this.userName = userName;
       this.password = password;
       this.creationDate = creationDate;
       this.phone = phone;
       this.articles = articles;
    }
   
    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
   
    

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public Date getCreationDate() {
        return this.creationDate;
    }
    
    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public Set getArticles() {
        return this.articles;
    }
    
    public void setArticles(Set articles) {
        this.articles = articles;
    }


	@Override
	public String toString() {
		return "User [ name=" + name + ", userName=" + userName + "]";
	}




}


