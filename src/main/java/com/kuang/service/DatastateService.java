package com.kuang.service;

import com.kuang.pojo.Datastate;
import org.apache.ibatis.annotations.Param;

public interface DatastateService {
    Datastate queryStateByName(String stateName);
}
