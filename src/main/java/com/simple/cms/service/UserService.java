/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.simple.cms.service;

import java.util.List;

import org.hibernate.Session;

import com.simple.cms.dao.UserDao;
import com.simple.cms.dao.UserDaoImpl;
import com.simple.cms.model.User;
/**
 *
 * @author Mohamed
 */
public class UserService  implements UserServiceInterface{

	public UserService() {
		// TODO Auto-generated constructor stub
	}
    //@Inject
    public UserDao userADO = new UserDaoImpl();

    public Session getDBSession(){
        return ((UserDaoImpl)userADO).getDbSession();
    }
    
    @Override
    public User getUserByID(int userID) {
        return userADO.findUserByID(userID);
    }

    @Override
    public boolean addnewUser(User user) {
        return userADO.addUser(user);
    }

    @Override
    public boolean updateUser(User user) {
        return userADO.updateUser(user);
    }

    @Override
    public boolean deleteUser(User user) {
        return userADO.deleteUser(user);
    }

    @Override
    public User findUserByUserName(String userName) {
        return userADO.findUserByUserName(userName);
    }

    @Override
    public User findUserByID(int userID) {
        return userADO.findUserByID(userID);
    }

    @Override
    public List<User> findAllUser() {
        return userADO.findAllUser();
    }

}
