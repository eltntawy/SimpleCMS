package com.simple.cms.controller.article;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.simple.cms.model.Article;
import com.simple.cms.model.User;
import com.simple.cms.service.ArticleService;

@Controller
public class ArticleController {

	

	@RequestMapping ("ArticleSave")
	public ModelAndView saveArticle(@RequestParam (required = true,value="article" )StringBuilder article,@RequestParam (required=true,value="name") String name,
			HttpServletRequest request, HttpServletResponse response) {
		
		Enumeration<String> sEnumeration = request.getParameterNames();
		
		StringBuilder articleStringBuilder = new StringBuilder();
		
		while (sEnumeration.hasMoreElements()) {
			String para = sEnumeration.nextElement();
			System.out.print(para + " : ");
			System.out.println(request.getParameter(para));
			articleStringBuilder.append(request.getParameter(para));
		}
		
		Article articleNew = new Article();
		
		User currentUser = (User)request.getSession().getAttribute("user");
		
		articleNew.setName(name);
		
		articleNew.setDescription(articleStringBuilder.toString());
		articleNew.setUser(currentUser);
		
		ArticleService articleService = new ArticleService();
		ModelAndView mav;
		if(articleService.addnewArticle(articleNew)) {
			 mav = new ModelAndView("ArticleView");
			 
		} else {
			mav = new ModelAndView("ErrorSaving");
		}
		
		
		return mav;
		
	}
	
	@RequestMapping ("ArticleView")
	public ModelAndView listArticle(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView("ArticleView");
		
		ArticleService articleService = new ArticleService();
		
		List<Article> articleList = articleService.findAllArticle();
		
		mav.addObject("articleList", articleList);
		
		return mav;
	}
	
	@RequestMapping ("ArticleCreate")
	public ModelAndView createNewArticle(HttpServletRequest request, HttpServletResponse response) {
		if((User)request.getSession().getAttribute("user") != null) {
			ModelAndView mav = new ModelAndView("ArticleCreate");
			return mav;
		}
		return null;
	}

}
