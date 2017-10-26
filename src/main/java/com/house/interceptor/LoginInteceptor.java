package com.house.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.house.common.SystemConfig;
import com.house.entity.User;

/**
 * 
  * @ClassName: LoginInteceptor
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月23日 上午11:40:30  
  * @desc: 登陆拦截器 
  * @version: v1.0
 */
public class LoginInteceptor extends HandlerInterceptorAdapter {

	private static final String[] IGNORE_URI = { "/back/user/login", "/back/user/toLogin" };

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {

		boolean flag = false;
		String url = request.getRequestURI();
	//	System.out.println("当前请求URL>>>: " + url);
		for (String s : IGNORE_URI) {
			if (url.contains(s)) {
				flag = true;
				break;
			}
		}
		if (!flag) {
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute(SystemConfig.LOGIN_USER);
			
			if (user == null) {
				response.sendRedirect(IGNORE_URI[1]);
			}else{
				flag = true;
			}
		}
		return flag;

	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
}
