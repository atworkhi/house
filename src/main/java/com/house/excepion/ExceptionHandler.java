package com.house.excepion;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
  * @ClassName: ExceptionHandler
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月22日 下午5:25:40  
  * @desc:  自定义异常处理
  * @version: v1.0
 */
public class ExceptionHandler implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest req,
			HttpServletResponse resp, Object arg2, Exception ex) {
		String msg = ex.getMessage();
		if(msg!=null && msg.equals("404")){
			return new ModelAndView("common/404");
		}
		return new ModelAndView("common/error");
	}

}
