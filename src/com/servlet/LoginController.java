package com.servlet;

import com.bean.*;
import com.service.*;
import com.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private CompanyService cs;
    @Autowired
    private InfoService infoSev;
    @Autowired
    private ResumeServic rs;
    @Autowired
    private TrainService ts;
    @Autowired
    private TrainListService tls;
    @Autowired
    private RewPuniService rps;
    @Autowired
    private USLservice usls;
    @Autowired
    private AttService attds;
    private String code;
    @RequestMapping("/")
    public String star(HttpServletRequest req){
        code= Utils.buildCode();
        req.setAttribute("code",code);
        return "login";
    }

    @RequestMapping("/goRegist.action")
    public String goRegist(){
        return "regist";
    }

    @RequestMapping("/regist.action")
    public String regist(User user,HttpServletRequest req){
        user.setPstId(1);
        user.setDeptId(1);
        if(user.getName()==null||"".equals(user.getPsw())||user.getPsw()==null
          ||"".equals(user.getName())){
            return "regist";
        }
        user.setIdentity(1);
        userService.regist(user);
        return "forward:/";
    }

    @RequestMapping("/login.action")
    public String login(User user, HttpServletRequest req,String code1){

        User user1=userService.canLogin(user);
        if(user1==null){
            req.setAttribute("errMsg","账户名或密码输入错误!");
            return "forward:/";
        }
        if(!code1.equalsIgnoreCase(code)){
            return "forward:/";
        }
        //获取公司信息
        Company com=cs.queryCompany();
        //获取招聘信息
        List<RecruitInfo> infos=infoSev.queryAllInfo();
        req.getSession().setAttribute("infos" ,infos);
        req.getSession().setAttribute("com",com);
        //获取用户信息
        req.getSession().setAttribute("user",user1);
        List<Resume> resumes;
        Resume resume=null;
        //获取投递的简历
        resumes=rs.queryResBySubmit(1);
        //获取培训信息
        List<Train> trList=ts.queryAllTrain();
        req.getSession().setAttribute("trList",trList);
        req.getSession().setAttribute("resumes",resumes);
        //用户界面
        if(user1.getIdentity()==1){
            resumes=rs.queryAllRes(user1.getUserId());
            List<Resume> rss=new ArrayList<>();
            for (Resume re :resumes) {
                if(re.getInvited()==1){
                    rss.add(re);
                }
            }
            req.getSession().setAttribute("ress",rss);
            return "redirect:/page.action";
        }
        //员工界面
        if(user1.getIdentity()==2&&!user1.getStatus().equals("离职")){
            int a=0;
            int b=0;
            Attendance attddd=null;
            List<Attendance> attList=attds.queryAllAttByUserId(user1.getUserId());
            for (Attendance att :attList) {
                if(Utils.rangeTime(att.getStarTime(),new Date())){
                    a=1;
                    attddd=att;
                    break;
                }
            }
            for (Attendance att :attList) {
                if(att.getEndTime()!=null&&Utils.rangeTime(att.getEndTime(),new Date())){
                    b=1;
                    attddd=att;
                    break;
                }
            }

            req.getSession().setAttribute("attddd",attddd);
            req.getSession().setAttribute("user1",user1);
            req.getSession().setAttribute("a",a);
            req.getSession().setAttribute("b",b);
            List<UserSalaryList> uslss=usls.queryUSLByUserId(user1.getUserId());
            req.setAttribute("usls",uslss);
            List<TrainList> trali=tls.queryAllTrainLi();
            req.setAttribute("trainsLi",trali);
            List<RewardPuni> rpList=rps.queryRewardPuniByUserId(user1.getUserId());
            req.setAttribute("rps",rpList);
            return "emppage";
        }
        List<UserSalaryList> uslss=usls.queryAllUSL();
        req.setAttribute("usls",uslss);
        List<RewardPuni> rpList=rps.queryAllRewardPuni();
        req.setAttribute("rps",rpList);
//        管理员界面
        return "managerpage";
    }
    @ResponseBody
    @RequestMapping("/checkName.action")
    public String checkName(String uName){
        System.out.println(uName);
        if(userService.checkName(uName)){
            return "true";
        }
        return "false";
    }
    @ResponseBody
    @RequestMapping("/takeCode.action")
    public String takeCode(){
        code=Utils.buildCode();
        return code;
    }
    @RequestMapping("/logout.action")
    public String logout(HttpSession session){
        session.invalidate();

        return "redirect:/";
    }
}
