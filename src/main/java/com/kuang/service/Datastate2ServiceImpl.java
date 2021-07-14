package com.kuang.service;

import com.kuang.dao.Datastate2Mapper;
import com.kuang.dao.Devastate1Mapper;
import com.kuang.pojo.Datastate2;

import java.util.List;

public class Datastate2ServiceImpl implements Datastate2Service{
    private Datastate2Mapper datastate2Mapper;

    public void setDatastate2Mapper(Datastate2Mapper datastate2Mapper) {
        this.datastate2Mapper = datastate2Mapper;
    }
    public List<Datastate2> queryAllDatastate2() {
        return datastate2Mapper.queryAllDatastate2();
    }
}
