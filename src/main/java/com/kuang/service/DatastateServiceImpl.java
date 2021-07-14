package com.kuang.service;

import com.kuang.dao.Datastate3Mapper;
import com.kuang.dao.DatastateMapper;
import com.kuang.pojo.Datastate;

public class DatastateServiceImpl implements DatastateService{
    private DatastateMapper datastateMapper;

    public void setDatastateMapper(DatastateMapper datastateMapper) {
        this.datastateMapper = datastateMapper;
    }
    public Datastate queryStateByName(String stateName) {
        return datastateMapper.queryStateByName(stateName);
    }
}
