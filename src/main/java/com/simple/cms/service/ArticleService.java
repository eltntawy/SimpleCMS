/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.simple.cms.service;


import java.util.List;
//import javax.inject.Inject;



import javax.inject.Inject;

import com.simple.cms.dao.ArticleDaoImpl;
import com.simple.cms.dao.ArticleDao;
import com.simple.cms.model.Article;


/**
 *
 * @author Mohamed
 */
public class ArticleService implements ArticleServiceInterface{

//    @Inject 
    ArticleDao ArticleDao = new ArticleDaoImpl();
    
    @Override
    public Article getArticleByID(int ArticleID) {
        return ArticleDao.findArticleByID(ArticleID);
    }

    @Override
    public boolean addnewArticle(Article Article) {
        return ArticleDao.addArticle(Article);
    }

    @Override
    public boolean updateArticle(Article Article) {
        return ArticleDao.updateArticle(Article);
    }

    @Override
    public boolean deleteArticle(Article Article) {
        return ArticleDao.deleteArticle(Article);
    }


    @Override
    public List<Article> findArticleByNumber(int number) {
        return ArticleDao.findArticleByNumber(number);
    }

    @Override
    public Article findArticleByID(int ArticleId) {
        return ArticleDao.findArticleByID(ArticleId);
    }

    @Override
    public List<Article> findArticleByName(String name) {
        return ArticleDao.findArticleByName(name);
    }

    @Override
    public List<Article> findAllArticle() {
        return ArticleDao.findAllArticle();
    }
   
}
