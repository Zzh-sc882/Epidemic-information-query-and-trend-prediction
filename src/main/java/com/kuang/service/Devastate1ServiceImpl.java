package com.kuang.service;


import com.kuang.dao.Devastate1Mapper;
import com.kuang.pojo.Devastate1;

import java.util.List;

public class Devastate1ServiceImpl implements Devastate1Service{
    private Devastate1Mapper devastate1Mapper;

    public void setDevastate1Mapper(Devastate1Mapper devastate1Mapper) {
        this.devastate1Mapper = devastate1Mapper;
    }


    public List<Devastate1> queryAllDevastate1() {
        return devastate1Mapper.queryAllDevastate1();
    }
}
