/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.simple.cms.dao;

import java.util.List;

import com.simple.cms.model.Article;

/**
 *
 * @author Mohamed
 */
public interface ArticleDao {

    boolean addArticle(Article Article);

    boolean deleteArticle(Article Article);

    boolean updateArticle(Article newArticle);

    List<Article> findArticleByNumber(int number);

    Article findArticleByID(int ArticleId);

    List<Article> findArticleByName(String name);

    List<Article> findAllArticle();
    

}
