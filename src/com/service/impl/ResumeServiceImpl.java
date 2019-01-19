package com.service.impl;

import com.bean.Resume;
import com.dao.ResumeDao;
import com.service.ResumeServic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service
public class ResumeServiceImpl implements ResumeServic {
    @Autowired
    private ResumeDao rd;
    @Override
    public List<Resume> queryAllRes(int uId) {
        return rd.queryResumesByUid(uId);
    }

    @Override
    public boolean addOrUpdResume(Resume resume) {

        try {
            if (resume.getResId()==0){
                resume.setInvited(0);
                resume.setLooked(0);
                resume.setSubmit(0);
                resume.setAccpet(0);
                resume.setDeptId(1);
                resume.setPstId(1);
                resume.setcTime(new Date());
                rd.addResume(resume);
            }else{
                if(resume.getDeptId()==null){
                    resume.setDeptId(1);
                }
                if (resume.getPstId()==null){
                    resume.setPstId(1);
                }
                if(resume.getInvited()==null){
                    resume.setInvited(0);
                }
                if(resume.getLooked()==null){
                    resume.setLooked(0);
                }
                if(resume.getSubmit()==null){
                    resume.setSubmit(0);
                }
                if (resume.getAccpet()==null){
                    resume.setAccpet(0);
                }
                resume.setuTime(new Date());
                rd.updateResume(resume);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

    @Override
    public boolean deleteRes(int resId) {
        try {
            rd.deleteResume(resId);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Resume queryResById(int resId) {
        return rd.queryResById(resId);
    }

    @Override
    public List<Resume> queryResBySubmit(int submit) {
        return rd.queryResumesBySubmit(submit);
    }

    @Override
    public List<Resume> queryResumesByPage(int userId, int currPage, int size) {
        return rd.queryResumesByPage(userId,(currPage-1)*size,size);
    }
}
