package JS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/ajax")
public class web01controller {


    @RequestMapping("/a1")
    public void ajx(String name, HttpServletResponse response) throws IOException {
        if("admin".equals(name)){
            response.getWriter().println("true");
        }
        else response.getWriter().println("false");
    }
}
