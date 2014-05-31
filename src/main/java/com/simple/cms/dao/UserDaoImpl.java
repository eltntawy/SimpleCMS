/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.simple.cms.dao;

import java.util.List;

import org.hibernate.JDBCException;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import com.simple.cms.hibernate.HibernateUtil;
import com.simple.cms.model.User;

/**
 *
 * @author Mohamed
 */
public class UserDaoImpl implements UserDao {

    public static Session dbSession = HibernateUtil.getSessionFactory().openSession();

    public UserDaoImpl() {
		// TODO Auto-generated constructor stub
	}
    public static Session getDbSession() {
        return dbSession;
    }

    @Override
    public boolean addUser(User user) {

        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();

            dbSession.persist(user);
            dbSession.getTransaction().commit();

            return true;
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(), ex.getSQLException());
        }
    }

    @Override
    public boolean updateUser(User user) {
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();

            dbSession.saveOrUpdate(user);
            dbSession.getTransaction().commit();

            return true;
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(), ex.getSQLException());
        }
    }

    @Override
    public boolean deleteUser(User user) {

        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();

            dbSession.delete(user);
            dbSession.getTransaction().commit();

            return true;
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(), ex.getSQLException());
        }
    }

    @Override
    public User findUserByID(int userID) {

        User user;
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();

            user = (User) dbSession.get(User.class, userID);
            dbSession.getTransaction().commit();

            return user;
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(), ex.getSQLException());
        }

    }

    @Override
    public List<User> findUsersByName(String name) {
        List<User> users;
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();

            users = dbSession.createCriteria(User.class).add(Restrictions.ilike("name", name, MatchMode.ANYWHERE)).list();
            dbSession.getTransaction().commit();

            return users;
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(), ex.getSQLException());
        }

    }

    @Override
    public List<User> findAllUser() {
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();
            List<User> users = dbSession.createCriteria(User.class).list();
            return users;
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(), ex.getSQLException());
        }
    }

    @Override
    public User findUserByUserName(String userName) {
        User user;
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();

            user = (User) dbSession.createCriteria(User.class).add(Restrictions.eq("userName", userName)).uniqueResult();

            dbSession.getTransaction().commit();

            return user;
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(), ex.getSQLException());
        }
    }

}
