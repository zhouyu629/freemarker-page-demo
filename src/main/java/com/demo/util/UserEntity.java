package com.demo.util;

import lombok.Data;

/**
 * @program: freemarker-page-demo
 * @description: 用户实体
 * @author: zhouyu(zhouyu629 # qq.com)
 * @create: 2020-03-07
 **/
@Data
public class UserEntity {
    private Integer user_id;
    private String user_name;
    private Integer age;
    private String login_name;
    private String mail;
}
