package com.kuang.controller;

import com.kuang.pojo.Devastate1;
import com.kuang.service.Devastate1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/devastate1")
public class Devastate1Controller {

    @Autowired
    @Qualifier("Devastate1ServiceImpl")
    private Devastate1Service devastate1Service;
    //查询全部书籍，并展示
    @RequestMapping("/allDevastate1")
    public String list(Model model) {
        List<Devastate1> list = devastate1Service.queryAllDevastate1();
        model.addAttribute("list", list);
        System.out.println(list);
        return "allDevastate1";
    }

}