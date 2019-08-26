/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author THANKGOD
 */
public class SessionCheckFilter implements Filter {

  private String contextPath;
  private ArrayList<String> urlList;

  @Override
  public void init(FilterConfig fc) throws ServletException {
    contextPath = fc.getServletContext().getContextPath();
    
    String urls = fc.getInitParameter("avoid-urls");
       StringTokenizer token = new StringTokenizer(urls, ",");   
       urlList = new ArrayList<String>();

        while (token.hasMoreTokens()) {
            urlList.add(token.nextToken());  
        }
    
  }

  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain fc) throws IOException, ServletException {
    HttpServletRequest req = (HttpServletRequest) request;
    HttpServletResponse res = (HttpServletResponse) response; 
    
     String url = req.getServletPath();
     
    
    boolean staticResources = (url.contains("css") || url.contains("images"));

    if (!urlList.contains("index.jsp")  && req.getSession().getAttribute("LOGIN_USER") == null && !staticResources) { //checks if there's a LOGIN_USER set in session...
        res.sendRedirect(contextPath + "/index.jsp"); //or page where you want to redirect
    } 
      fc.doFilter(request, response);
    
  }

  @Override
  public void destroy() {
  }
}
