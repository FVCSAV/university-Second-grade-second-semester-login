package service;

import bean.user;

import dao.userdao;

public class userservice {
    public static boolean InExist(user stu) {
        //注册判断用户名是否存在  先写入
        if(userdao.IsExist(stu)) {
            return true;//true代表在数据库中已经存在
        }
        return false;
    }
    public static boolean InPut(user stu) {//注册
        userdao.Insert(stu);
        return true;
    }
    public static int  pan(user stu) {//登录判断用户名与密码是否对应
        if (userdao.IsExist(stu)) {
            //true   ID代表在数据库中已经存在
            if (userdao.IsPass(stu)) {
                //密码正确
                return 1;
            }
            return 2;
        }
        return 3;
    }
    public static int pansid(user stu){//判断sid
        if(userdao.IsSid(stu)==1){
            return 1;
        }
        else if(userdao.IsSid(stu)==2){
            return 2;
        }
        else {
            return 3;
        }
    }
    
    public static boolean xiu(user stu){//修改密码
        if(userdao.xiu(stu)){
            return true;
        }
        return false;
    }
    
    public static boolean shan(user stu){//删除账号
        if(userdao.shan(stu)){
            return true;
        }
        return false;
    }


}