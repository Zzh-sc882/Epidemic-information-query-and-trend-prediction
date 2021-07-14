package com.kuang.controller;

import com.kuang.pojo.Datastate2;
import com.kuang.pojo.Devastate1;
import com.kuang.service.Datastate2Service;
import com.kuang.service.Devastate1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/devastate2")
public class Datastate2Controller {
    @Autowired
    @Qualifier("Datastate2ServiceImpl")
    private Datastate2Service datastate2Service;
    //查询全部书籍，并展示
    @RequestMapping("/allDatastate2")
    public String list(Model model) {
        List<Datastate2> list2 = datastate2Service.queryAllDatastate2();
        model.addAttribute("list2", list2);
        System.out.println(list2);
        return "allDatastate2";
    }

}
