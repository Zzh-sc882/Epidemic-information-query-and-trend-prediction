package com.kuang.dao;

import com.kuang.pojo.Datastate;
import com.kuang.pojo.Datastate2;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DatastateMapper {
    Datastate queryStateByName(@Param("stateName") String stateName);
}
