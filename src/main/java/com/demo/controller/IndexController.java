package com.demo.controller;

import com.demo.util.MyPager;
import com.demo.util.UserEntity;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @program: freemarker-page-demo
 * @description: demo首页
 * @author: zhouyu(zhouyu629 # qq.com)
 * @create: 2020-03-06
 **/
@Controller
public class IndexController {
    @RequestMapping("/index.html")
    public String index(@RequestParam(name = "page",defaultValue = "1") Integer page,
                     @RequestParam(name = "pagesize",defaultValue = "10") Integer pagesize,
                              Map<String,Object> map){
        //造一些分页数据
        List<UserEntity> list = new ArrayList<>();
        for(int i = ((page-1)*pagesize+1);i<((page-1)*pagesize+pagesize);i++){
            UserEntity userEntity = new UserEntity();
            userEntity.setAge(20);
            userEntity.setLogin_name("user"+i);
            userEntity.setMail("user"+i+"@gmail.com");
            userEntity.setUser_id(i);
            userEntity.setUser_name("user"+i);
            list.add(userEntity);
        }
        MyPager myPager = new MyPager(page,pagesize,500,list);
        map.put("users",myPager);
        return "/index";
    }
}
