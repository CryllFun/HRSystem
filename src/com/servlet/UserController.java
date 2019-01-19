package com.servlet;

import com.bean.Resume;
import com.bean.User;
import com.service.ResumeServic;
import com.service.UserService;
import com.sun.org.apache.xpath.internal.SourceTree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bean.Pageination;
import com.conts.Conts;
import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private ResumeServic rs;
    @Autowired
    private UserService us;

    @RequestMapping("/addOrUpdateRes.action")
    public String addOrUpdateRes(String uId,Resume resume, HttpSession s){
        System.out.println(uId);
        System.out.println(resume.toString());
        User user=(User)s.getAttribute("user");
        System.out.println(user);
        resume.setUserId(user.getUserId());
        rs.addOrUpdResume(resume);
        return "redirect:/page.action";
    }
    @RequestMapping("/deleteRes.action")
    public String deleteRes(Integer resId){
        rs.deleteRes(resId);
        return "redirect:/page.action";
    }
    @ResponseBody
    @RequestMapping("/sendRes.action")
    public String sendRes(Integer resId, Integer pstId, Integer infoId,Integer deptId){
        Resume resume=rs.queryResById(resId);
        if(resume==null){
            return "false";
        }
        resume.setInfoId(infoId);
        resume.setPstId(pstId);
        resume.setDeptId(deptId);
        resume.setSubmit(1);
        resume.setSubTime(new Date());
        if(rs.addOrUpdResume(resume)){
            return "true";
        }
        return "false";

    }
    @ResponseBody
    @RequestMapping("/accptItview.action")
    public String accptItview(Integer resId,HttpSession session ){
        User u=(User)session.getAttribute("user");
        Resume r=rs.queryResById(resId);
        u.setName(r.getName());
        u.setIdentity(2);
        u.setDeptId(r.getDeptId());
        u.setPstId(r.getPstId());
        u.setStatus("实习");
        u.setUpdateTime(new Date());
        u.setAge(r.getAge());
        u.setBasicSal(r.getWantSal());
        u.setBirth(r.getBirth());
        u.setEdutTime(r.getGraduDate());
        u.setEmail(u.getEmail());
        u.setPhone(r.getPhone());
        u.setInTime(new Date());
        u.setMajor(r.getMajor());
        u.setNativePlace(r.getNativePlace());
        u.setPoliStatus(r.getPoliStatus());
        u.setRecord(r.getRecord());
        u.setSchool(r.getSchool());
        u.setSex(r.getSex());
        us.updateUser(u);
        r.setAccpet(1);
        if(rs.addOrUpdResume(r)){
            return "true";
        }
        return "false";

    }

    @ResponseBody
    @RequestMapping("/noaccptItview.action")
    public String noaccptItview(Integer resId){
        Resume resume=rs.queryResById(resId);
        resume.setAccpet(0);
        if(rs.addOrUpdResume(resume)){
            return "true";
        }
        return "false";

    }
    @RequestMapping("/page.action")
    public String userLogin(Integer currPage,HttpSession session){
        User user=(User)session.getAttribute("user");
        Pageination page=new Pageination();
        if(currPage==null||currPage==0){
            currPage=1;
        }
        page.setCurrPage(currPage);
        page.setSize(Conts.PAGE_SIZE);
        List<Resume> resumes=rs.queryAllRes(user.getUserId());
        page.setTotalSize(resumes.size());
        List<Resume> rl=rs.queryResumesByPage(user.getUserId(),page.getCurrPage() , page.getSize());
        page.setList(rl);
        if(!(rl==null||rl.size()==0)){
            session.setAttribute("resume",rl.get(0));
        }
        session.setAttribute("resumes",resumes);
        session.setAttribute("page", page);
        return "userpage";
    }


}
