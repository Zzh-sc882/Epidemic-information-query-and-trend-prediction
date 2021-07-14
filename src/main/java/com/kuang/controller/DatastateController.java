package com.kuang.controller;

import com.kuang.pojo.Datastate;
import com.kuang.pojo.Devastate1;
import com.kuang.service.DatastateService;
import com.kuang.service.Devastate1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/a")
public class DatastateController {
    @Autowired
    @Qualifier("DatastateServiceImpl")
    private DatastateService datastateService;
    //查询全部书籍，并展示
    @RequestMapping("/b")
    public String queryState(String queryDatastateName,Model model){
        System.out.println(queryDatastateName);
        Datastate datastate =datastateService.queryStateByName(queryDatastateName);
        System.out.println(datastate);
        List<Datastate> list =new ArrayList();
        list.add(datastate);
        model.addAttribute("list", list);
        System.out.println(list);
        return "b";
    }
}
