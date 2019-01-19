package com.util;

import javax.xml.crypto.Data;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class Utils {
    private static Random rd=new Random();
    public static String buildCode(){
        String code="";
        char[] codes={'0','1','2','3','4','5','6','7','8','9',
                'A','B','C','D','E','F','G','H','I','J','K','L',
                'M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
                'a','b','c','d','e','f','g','h','i','j','k','l',
                'm','n','o','p','q','r','s','t','u','v','w','x','y','z'};
        for (int i = 0; i <4 ; i++) {
            code+=codes[rd.nextInt(62)];
        }
        return code;
    }
    public static String format1(Date date){
        if(date==null){
            return "";
        }
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=sdf.format(date);
        return time;
    }
    public static String format2(Date date){
        if(date==null){
            return "";
        }
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        String time=sdf.format(date);
        return time;
    }

    /**
     * 是否迟到早退
     * @param time1
     * @param time3
     * @param time2
     * @return
     */
    public static int clockTime(String time1,int time3, Date time2){
        String[] strs=time1.split(":");
        int hour=Integer.parseInt(strs[0]);
        int minutes=Integer.parseInt(strs[1]);
        Date now=new Date();
        now.setHours(hour);
        now.setMinutes(minutes);
        if(time2.getTime()-now.getTime()>0&&time2.getTime()-now.getTime()<time3*60*1000){
            return 1;//迟到
        }else{
            return 2;//早退
        }
    }

    /**
     * 是否旷工
     * @param time1
     * @param time3
     * @param time2
     * @return
     */
    public static int leaveTime(String time1,int time3, Date time2){
        String[] strs=time1.split(":");
        int hour=Integer.parseInt(strs[0]);
        int minutes=Integer.parseInt(strs[1]);
        Date now=new Date();
        now.setHours(hour);
        now.setMinutes(minutes);
        if(time2.getTime()-now.getTime()>time3*60*1000){
            return 1;//旷工
        }else{
            return 2;
        }
    }
    /**
     * 将字符串日期转换成时间
     */
    public static Date parseTime(String stime){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        Date date=null;
        try {
            date=sdf.parse(stime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
//    比较两个日期是不是同一天
    public static boolean rangeTime(Date d1,Date d2){
        if(d1.getYear()==d2.getYear()&&d1.getMonth()==d2.getMonth()&&d1.getDay()==d2.getDay()){
            return true;
        }
        return false;
    }
}
