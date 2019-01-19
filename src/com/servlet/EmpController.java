package com.servlet;

import com.alibaba.fastjson.JSONObject;
import com.bean.Attendance;
import com.bean.DdMoney;
import com.bean.RewardPuni;
import com.bean.User;
import com.service.AttService;
import com.service.DdMoneyService;
import com.service.RewPuniService;
import com.service.USLservice;
import com.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class EmpController {
    @Autowired
    private AttService atts;
    @Autowired
    private RewPuniService rps;
    @Autowired
    private DdMoneyService dms;
    @Autowired
    private USLservice usls;
    @ResponseBody
    @RequestMapping("/starWork.action")
    public String starWork(Integer attId, HttpSession session){
        DdMoney dm=dms.queryDdMoney();
        User user = (User)session.getAttribute("user");
        Attendance attd=null;
        RewardPuni rp=null;
        Date time=new Date();
        if (attId==null){
            attd=new Attendance();
            attd.setStarTime(time);
            if(Utils.clockTime("09:00",30,time)==1){
                attd.setIsLate("是");
                //生成惩罚信息
                rp=new RewardPuni();
                rp.setUserId(user.getUserId());
                rp.setRewardPuni("惩");
                rp.setReson("迟到");
                rp.setTime(time);
                rp.setMoney(dm.getLateMoney());
                rps.addRewardPuni(rp);
            }else{
                attd.setIsLate("否");
            }
            if(Utils.leaveTime("09:00",30,time)==1){
                attd.setIsNowork("是");
                rp=new RewardPuni();
                rp.setRewardPuni("惩");
                rp.setUserId(user.getUserId());
                rp.setReson("旷工");
                rp.setTime(time);
                rp.setMoney(dm.getDayMoney());
                rps.addRewardPuni(rp);
            }else{
                attd.setIsNowork("否");

            }
            attd.setUserId(user.getUserId());
            atts.addAtt(attd);
            List<Attendance> attList=atts.queryAllAttByUserId(user.getUserId());
            if (attList!=null||attList.size()!=0){
                attd=attList.get(attList.size()-1);
            }
        }else {
            attd=atts.queryAttById(attId);
            if(Utils.clockTime("18:00",30,time)==2){
                attd.setIsLeave("是");
                rp=new RewardPuni();
                rp.setRewardPuni("惩");
                rp.setUserId(user.getUserId());
                rp.setReson("早退");
                rp.setTime(time);
                rp.setMoney(dm.getLeaveMoney());
                rps.addRewardPuni(rp);
            }else{
                attd.setIsLeave("否");
            }
            if(Utils.leaveTime("18:00",30,time)==2){
                attd.setIsNowork("是");
                rp=new RewardPuni();
                rp.setRewardPuni("惩");
                rp.setUserId(user.getUserId());
                rp.setReson("旷工");
                rp.setTime(time);
                rp.setMoney(dm.getDayMoney());
                rps.addRewardPuni(rp);
            }else{
                attd.setIsNowork("否");
            }

            attd.setEndTime(time);
            atts.updateAtt(attd);
        }

        return JSONObject.toJSONString(attd);
    }
    @ResponseBody
    @RequestMapping("/salFy.action")
    public String salFy(Integer uslId,String note){
        if(usls.updateUSL(uslId,note)){
            return "true";
        }
        return null;
    }

}
