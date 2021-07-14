package com.kuang.service;

import com.kuang.dao.Datastate2Mapper;
import com.kuang.dao.Datastate3Mapper;
import com.kuang.pojo.Datastate3;

import java.util.List;

public class Datastate3ServiceImpl implements Datastate3Service{

    private Datastate3Mapper datastate3Mapper;

    public void setDatastate3Mapper(Datastate3Mapper datastate3Mapper) {
        this.datastate3Mapper = datastate3Mapper;
    }
    public List<Datastate3> queryAllDatastate3() {
        return datastate3Mapper.queryAllDatastate3();
    }
}
