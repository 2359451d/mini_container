package top.bento.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


/*
 * description: 告诉springmvc这是个处理器，处理请求
 * @ Controller:标识控制器
 * @param null
 * @return
 */
@Controller
public class MyFirstController {
    /**
     * 从当前项目下开始，处理当前项目下的hello请求
     */
    @RequestMapping("/hello")
    public String firstGet() {
        System.out.println("processing...test autobuild");
        System.out.println("auto");
        //配置视图解析器
        return "sources";
    }

    @RequestMapping("/haha")
    public String haha(){
        return "haha";
    }
}
