package cm.stu.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userLogin")
public class UserLoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //首先拿到前端传过来的信息
        String userAccount = req.getParameter("userAccount");
        String userPassword = req.getParameter("userPassword");
        if(userAccount.equals("admin") && userPassword.equals("admin")){
            //进入主页面
            req.setAttribute("mainRight", "blank.jsp");
            req.getRequestDispatcher("main.jsp").forward(req, resp);
        }else {
            //返回登录注册界面
            req.setAttribute("tip","账户和密码不一致");
            req.getRequestDispatcher("userLogin.jsp").forward(req, resp);

        }



    }
}
