package com.kuang.controller;

import com.kuang.pojo.Datastate2;
import com.kuang.pojo.Datastate3;
import com.kuang.service.Datastate2Service;
import com.kuang.service.Datastate3Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/devastate3")
public class Datastate3Controller {
    @Autowired
    @Qualifier("Datastate3ServiceImpl")
    private Datastate3Service datastate3Service;
    //查询全部书籍，并展示
    @RequestMapping("/allDatastate3")
    public String list(Model model) {
        List<Datastate3> list = datastate3Service.queryAllDatastate3();
        model.addAttribute("list", list);
        System.out.println(list);
        return "allDatastate3";
    }
}
