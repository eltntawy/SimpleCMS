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
import com.simple.cms.model.Article;


/**
 *
 * @author Mohamed
 */
public class ArticleDaoImpl implements ArticleDao {

    protected static Session dbSession = HibernateUtil.getSessionFactory().openSession();

    public static Session getDbSession() {
        return dbSession;
    }

    @Override
    public boolean addArticle(Article Article) {

        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        dbSession.beginTransaction();
        try {
            dbSession.persist(Article);
            dbSession.getTransaction().commit();
            dbSession.flush();
            return true;
        } catch (JDBCException ex) {

            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(),ex.getSQLException());

        }

    }

    @Override
    public boolean deleteArticle(Article Article) {
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();
            dbSession.delete(Article);
            dbSession.getTransaction().commit();
            dbSession.flush();
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(),ex.getSQLException());

        }

        return true;
    }

    @Override
    public boolean updateArticle(Article newArticle) {
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();
            dbSession.saveOrUpdate(newArticle);
            dbSession.getTransaction().commit();
            dbSession.flush();
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(),ex.getSQLException());
        }

        return true;
    }

    @Override
    public List<Article> findArticleByNumber(int number) {
        List<Article> Articles;
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();
            Articles = dbSession.createCriteria(Article.class).add(Restrictions.ilike("number", number + "", MatchMode.ANYWHERE)).list();
            dbSession.getTransaction().commit();
            dbSession.flush();

            return Articles;
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(),ex.getSQLException());
        }

    }

    @Override
    public Article findArticleByID(int ArticleId) {
        Article Article;
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();
            Article
                    = (Article) dbSession.get(Article.class, ArticleId);
            dbSession.getTransaction()
                    .commit();
            dbSession.flush();

            return Article;
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(),ex.getSQLException());
        }

    }

    @Override
    public List<Article> findArticleByName(String name) {
        List<Article> Articles;
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();
        }
        try {
            dbSession.beginTransaction();
            Articles
                    = dbSession.createCriteria(Article.class
                    ).add(Restrictions.ilike("name", name, MatchMode.ANYWHERE)).list();
            dbSession.getTransaction()
                    .commit();
            dbSession.flush();

            return Articles;
        } catch (JDBCException ex) {
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(),ex.getSQLException());
        }
    }

    @Override
    public List<Article> findAllArticle() {
        if (!dbSession.isOpen()) {
            dbSession = HibernateUtil.getSessionFactory().openSession();

        }
        try {
            List<Article> Articles = dbSession.createCriteria(Article.class).list();
            return Articles;
        } catch (JDBCException ex) {
            
            dbSession.getTransaction().rollback();
            dbSession.close();
            
            throw new JDBCException(ex.getCause().getMessage(),ex.getSQLException());
        }
    }

}
