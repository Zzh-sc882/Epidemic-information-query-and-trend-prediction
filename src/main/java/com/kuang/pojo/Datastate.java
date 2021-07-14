package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Datastate {
    private  String state;
    private  int cases;

    private  int deaths;
    private  int rate;
}
