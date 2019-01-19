package com.servlet;

import com.alibaba.fastjson.JSONObject;
import com.bean.*;
import com.dao.TrainDao;
import com.service.*;
import com.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.HttpMediaTypeException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class ManagerController {
    @Autowired
    private PstService ps;
    @Autowired
    private InfoService is;
    @Autowired
    private ResumeServic rs;
    @Autowired
    private CompanyService cs;
    @Autowired
    private UserService us;
    @Autowired
    private TrainService ts;
    @Autowired
    private TrainListService tls;
    @Autowired
    private RewPuniService rps;
    @Autowired
    private AttService attSer;
    @Autowired
    private USLservice usls;
    @ResponseBody
    @RequestMapping("/queryPst.action")
    public String queryPst(Integer deptId){
        List<Position> psts=ps.queryPstsBydeptId(deptId);
        return JSONObject.toJSONString(psts);
    }

    @ResponseBody
    @RequestMapping("/updateInfo.action")
    public String updateInfo(RecruitInfo info){
        info.setuTime(new Date());
        info.setComId(1);
        if(is.updateInfo(info)){
            info=is.queryInfoById(info.getInfoId());
            return JSONObject.toJSONString(info);
        }
        return null;
    }

    @ResponseBody
    @RequestMapping("/deleteInfo.action")
    public String deleteInfo(Integer infoId){

        if(is.deleteInfo(infoId)){

            return "true";
        }
        return "false";
    }

    @ResponseBody
    @RequestMapping("/addInfo.action")
    public String addInfo(RecruitInfo info){
        System.out.println(info);
        info.setComId(1);
        info.setcTime(new Date());
        if(is.addInfo(info)){
            List<RecruitInfo> infos=is.queryAllInfo();
            info=infos.get(infos.size()-1);
            return JSONObject.toJSONString(info);
        }
        return null;
    }
    @ResponseBody
    @RequestMapping("/lookRes.action")
    public String lookInfo(Integer resId, HttpServletRequest req){
        Resume res=rs.queryResById(resId);
        res.setLooked(1);
        rs.addOrUpdResume(res);
        return JSONObject.toJSONString(res);
    }

    @ResponseBody
    @RequestMapping("/mianshi.action")
    public String mianshiRes(Integer resId,Date itviewTime, HttpServletRequest req){
        Resume res=rs.queryResById(resId);
        res.setInvited(1);
        res.setInvtTime(new Date());
        res.setItviewTime(itviewTime);
        if (rs.addOrUpdResume(res)) {
            return "true";

        }
        return "false";
    }
    @ResponseBody
    @RequestMapping("/qxyq.action")
    public String qxyq(Integer resId, HttpServletRequest req){
        Resume res=rs.queryResById(resId);
        res.setInvited(0);
        res.setInvtTime(new Date());
        try {
            rs.addOrUpdResume(res);
            return "true";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "false";
    }
    @RequestMapping("/looked.action")
    public String looked(Integer resId){
        Resume res=rs.queryResById(resId);
        res.setLooked(1);
        res.setLookedTime(new Date());
        rs.addOrUpdResume(res);
        return "redirect:/login.action";
    }

    @ResponseBody
    @RequestMapping("/updtDept.action")
    public String updtDept(Department dept){
        dept.setComId(1);
        dept.setuTime(new Date());
        if (cs.updateDept(dept)) {
            return "true";
        }
        return "false";
    }
    @ResponseBody
    @RequestMapping("/addDept.action")
    public String addDept(Department dept){
        dept.setComId(1);
        dept.setcTime(new Date());
        if (cs.addDept(dept)) {
            List<Department> depts=cs.queryCompany().getDepts();
            dept=depts.get(depts.size()-1);
            return JSONObject.toJSONString(dept);
        }
        return null;
    }
    @ResponseBody
    @RequestMapping("deleteDept.action")
    public String addDept(Integer deptId){

        if (cs.deleteDept(deptId)) {

            return "true";
        }
        return "false";
    }



    @ResponseBody
    @RequestMapping("/updtPst.action")
    public String updtPst(Position pst){
        pst.setuTime(new Date());
        if (ps.updatePst(pst)) {
            return "true";
        }
        return "false";
    }
    @ResponseBody
    @RequestMapping("/addPst.action")
    public String addPst(Position pst){
        pst.setcTime(new Date());
        System.out.println(pst.getDeptId());
        if (ps.addPst(pst)) {
            List<Position> psts=ps.queryPstsBydeptId(pst.getDeptId());
            pst=psts.get(psts.size()-1);
            return JSONObject.toJSONString(pst);
        }
        return null;
    }
    @ResponseBody
    @RequestMapping("deletePst.action")
    public String deletePst(Integer pstId){

        if (ps.deletePst(pstId)) {

            return "true";
        }
        return "false";
    }
    @ResponseBody
    @RequestMapping("/addUser.action")
    public String addUser(User user){
        user.setPsw("123456");
        user.setIdentity(2);
        if(us.regist(user)){
            List<User> users=us.queryUserByDeptId(user.getDeptId());
            return JSONObject.toJSONString(users);
        }
        return null;
    }
    @ResponseBody
    @RequestMapping("/deleteUser.action")
    public String deleteUser(Integer userId){
        if(us.deleteUser(userId)){

            return "true";
        }
        return "false";
    }
    @ResponseBody
    @RequestMapping("/updateUser.action")
    public String updateUser(User user){
        user.setIdentity(2);
        user.setUpdateTime(new Date());
        if(us.updateUser(user)){
            List<User> users=us.queryUserByDeptId(user.getDeptId());
            return JSONObject.toJSONString(users);
        }
        return null;
    }

    @ResponseBody
    @RequestMapping("/showUser.action")
    public String updateUser(Integer userId){
        User user=us.queryUserByuId(userId);
        System.out.println(user);
        return JSONObject.toJSONString(user);
    }
    @ResponseBody
    @RequestMapping("/showAllUser.action")
    public String showAllUser(Integer deptId){
        List<User> users=us.queryUserByDeptId(deptId);
        return JSONObject.toJSONString(users);
    }
    @ResponseBody
    @RequestMapping("/addTrain.action")
    public String addTrain(Train train){
        train.setCreTime(new Date());
        if(ts.addTrain(train)){
            List<Train> trains=ts.queryAllTrain();
            return JSONObject.toJSONString(trains);
        }
        return null;
    }
    @ResponseBody
    @RequestMapping("/deletTrain.action")
    public String deletTrain(Integer trId){
        if(ts.deleteTrain(trId)){

            return "true";
        }
        return "false";
    }
    @ResponseBody
    @RequestMapping("/showTrain.action")
    public String showTrain(Integer trId){
        Train train=ts.queryTrainById(trId);
        List<TrainList> trLists=tls.queryTrainliByTrId(trId);
        List<User> users=new ArrayList<>();
        for (TrainList tl:trLists) {
            User user=us.queryUserByuId(tl.getUserId());
            users.add(0,user);
        }
        train.setUserList(users);
        return JSONObject.toJSONString(train);
    }
    @ResponseBody
    @RequestMapping("/updateTrain.action")
    public String updateTrain(Train train){
        train.setUpdTime(new Date());
        if(ts.updateTrain(train)){
            List<Train> trains=ts.queryAllTrain();
            return JSONObject.toJSONString(trains);
        }
        return null;
    }


    @ResponseBody
    @RequestMapping("/addTrainLi.action")
    public String addTrainLi(Integer trId,Integer deptId,Integer userId){
        if(tls.addTrainList(trId,deptId,userId)){
            return "true";
        }
        return "false";
    }
    @ResponseBody
    @RequestMapping("/deletTrainLi.action")
    public String deletTrainLi(Integer trId,Integer userId){
        if(tls.deleteOneTrainOfUser(userId,trId)){

            return "true";
        }
        return "false";
    }

    @ResponseBody
    @RequestMapping("/queryPstUser.action")
    public String deletTrainLi(Integer pstId){
        List<User> users=us.queryUserByPstId(pstId);
        List<User> us=new ArrayList<>();
        for (User u :users) {
            if(!"离职".equals(u.getStatus())){
                us.add(u);
            }
        }
        return JSONObject.toJSONString(us);
    }

    @ResponseBody
    @RequestMapping("/addReOrPu.action")
    public String addReOrPu(RewardPuni rp){
        if("奖".equals(rp.getRewardPuni())){
            if(rp.getMoney()<0){
                rp.setMoney(-rp.getMoney());
            }
        }else{
            if(rp.getMoney()>0){
                rp.setMoney(-rp.getMoney());
            }
        }
        if(rps.addRewardPuni(rp)){
            List<RewardPuni> rpList=rps.queryAllRewardPuni();
            return JSONObject.toJSONString(rpList);
        }
        return null;
    }
    @ResponseBody
    @RequestMapping("/updateRePu.action")
    public String updateRePu(RewardPuni rp){
        if(rps.updateRewardPuni(rp)){
            List<RewardPuni> rpList=rps.queryAllRewardPuni();
            return JSONObject.toJSONString(rpList);
        }
        return null;
    }
    @ResponseBody
    @RequestMapping("/deleteRePu.action")
    public String deleteRePu(Integer repuId){
        if(rps.deleteRePu(repuId)){

            return "true";
        }
        return null;
    }

    @ResponseBody
    @RequestMapping("/queryAttdByMonth.action")
    public String queryAttdByMonth(String sdate,Integer userId){
        Date date= Utils.parseTime(sdate);
        List<Attendance> attds=attSer.queryAllAttByMonth(userId,date);
        return JSONObject.toJSONString(attds);
    }
    @ResponseBody
    @RequestMapping("/queryAttdByDay.action")
    public String queryAttdByDay(String sdate,Integer userId){
        Date date= Utils.parseTime(sdate);
        Attendance attd=attSer.queryAllAttByDay(userId,date);
        return JSONObject.toJSONString(attd);
    }



    @ResponseBody
    @RequestMapping("/endSal.action")
    public String endSal(Integer userId,String time1,String time2){
        UserSalaryList usl=usls.endSal(userId,time1,time2);
        return JSONObject.toJSONString(usl);
    }
    @ResponseBody
    @RequestMapping("/addSal.action")
    public String addSal(UserSalaryList usl){
        if(usls.addUSL(usl)){
            return "true";
        }
        return null;
    }
    @ResponseBody
    @RequestMapping("/querySaly.action")
    public String querySaly(Integer userId,String time){
        List<UserSalaryList> uslss=usls.queryUserUSLByYear(userId,time);
        if(uslss.size()==0){
            return null;
        }
        return JSONObject.toJSONString(uslss);
    }
    @ResponseBody
    @RequestMapping("/querySalm.action")
    public String querySalm(Integer userId,String time){
        UserSalaryList usl=usls.queryUserUSLByMonth(userId,time);
        return JSONObject.toJSONString(usl);
    }
    @ResponseBody
    @RequestMapping("lizhiemp.action")
    public String lizhiemp(Integer userId,String note){
        User u=us.queryUserByuId(userId);
        u.setStatus("离职");
        u.setNote(note);
        if(us.updateUser(u)){
            return "true";
        }
        return "false";
    }

}
