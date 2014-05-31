/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.simple.cms.controller.user.authentication;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.simple.cms.model.User;
import com.simple.cms.service.UserService;

/**
 * 
 * @author Mohamed
 */
@Controller
public class LoginController {

	@RequestMapping("/Login")
	public String login(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		HttpSession session = request.getSession();
		if (session.getAttribute("user") == null) {
			String userName = (String) request.getParameter("userName");
			String pass = (String) request.getParameter("pass");
			System.out.println("user naeme try login : " + userName);

			/*
			 * User Authintication code here
			 */
			try {
				User u = null;
				UserService userService = new UserService();

				u = userService.findUserByUserName(userName);

				if (u != null && userName.equals(u.getUserName())
						&& pass.equals(u.getPassword())) {
					session.setAttribute("user", u);
					System.out.println("User : " + userName + " log in");
					String url = "/index.jsp?lang="
							+ request.getParameter("lang")
							+ "&"
							+ "barMessageType=success&barMessage=Login Successful";
					System.out.println("Redirect to : " + url);

					return "redirect:" + url;
				}
				if (session.getAttribute("user") == null) {
					return "redirect:"
							+ "/pages/Authentication/login.jsp?barMessageType=error&barMessage=User Name or Pass are invalid...";
				}
			} catch (IndexOutOfBoundsException ex) {

				return "redirect:"
						+ "/pages/Authentication/login.jsp?barMessageType=error&barMessage=User Name or Pass are invalid...";
			}
		}
		return "redirect:"
				+ "/pages/Authentication/login.jsp?barMessageType=error&barMessage=User Name or Pass are invalid...";
	}

	@RequestMapping("/Logout")
	protected String logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lang = request.getParameter("lang");
		request.getSession().removeAttribute("user");
		request.getSession().invalidate();
		return "redirect:" + "?barMessageType=success&barMessage=Logout Successful.";
	}

}
