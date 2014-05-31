/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.simple.cms.dao;

import java.util.List;

import com.simple.cms.model.User;

/**
 * 
 * @author Mohamed Refaat
 */
public interface UserDao {

	boolean addUser(User user);

	boolean updateUser(User user);

	boolean deleteUser(User user);

	public User findUserByUserName(String userName);

	public List<User> findUsersByName(String name);

	public User findUserByID(int userID);

	List<User> findAllUser();

}
