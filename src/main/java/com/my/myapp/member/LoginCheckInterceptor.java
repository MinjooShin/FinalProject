package com.my.myapp.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter { 
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) 
	 throws Exception { 
		 HttpSession session = request.getSession(); 
		 Object obj = session.getAttribute("login"); 
		 if (obj == null) { 
			 response.sendRedirect(request.getContextPath() + "/login/login"); 
			 return false; 
		 } 
		return true; 
	 } 
//posthandle 로그인에서는 구현할 필요 없음
//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, 
//		 ModelAndView modelAndView) throws Exception { 
//		 super.postHandle(request, response, handler, modelAndView); 
//		 } 
} 

