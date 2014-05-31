/*
 * To change this license header, choose License s in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.simple.cms.service;

import java.util.List;

import com.simple.cms.model.Article;

/**
 * 
 * @author Mohamed
 */
public interface ArticleServiceInterface {

	boolean addnewArticle(Article Article);

	boolean deleteArticle(Article Article);

	boolean updateArticle(Article newArticle);

	List<Article> findArticleByNumber(int number);

	Article findArticleByID(int ArticleId);

	public Article getArticleByID(int ArticleId);

	List<Article> findArticleByName(String name);

	List<Article> findAllArticle();
}
