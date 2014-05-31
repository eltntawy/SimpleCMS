package com.simple.cms.service;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.List;

import com.simple.cms.model.User;

/**
 *
 * @author Mohamed
 */
public interface UserServiceInterface {

    public User getUserByID(int userID);

    public boolean addnewUser(User user);

    public boolean updateUser(User user);

    public boolean deleteUser(User user);

    public User findUserByUserName(String userName);

    public User findUserByID(int userID);

    public List<User> findAllUser();

}
