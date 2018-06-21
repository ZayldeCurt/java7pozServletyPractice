package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "cookieServlet",urlPatterns = "/cookieServlet")
public class cookieServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getParameter("option");
        if("addCookie".equals(option)){
            String name = "cookie"+new Random().nextInt(200);
            String value = ""+new Random().nextInt(200);
            Cookie cookie = new Cookie(name,value);

            cookie.setMaxAge(600);

            response.addCookie(cookie);
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }else if("showCookie".equals(   option)){

            request.getRequestDispatcher("/cookieInfo.jsp").forward(request,response);
        }else if("removeCookie".equals(option)){
            Cookie[] cookies = request.getCookies();
            for (Cookie c: cookies){
                c.setMaxAge(0);
                response.addCookie(c);
            }
        }else {
            System.err.println();
        }
    }
}
