package com.service;

import com.bean.Resume;

import java.util.List;

public interface ResumeServic {
    public List<Resume> queryAllRes(int uId);
    public boolean addOrUpdResume(Resume resume);
    public boolean deleteRes(int resId);
    public Resume queryResById(int resId);
    public List<Resume> queryResBySubmit(int submit);
    public List<Resume> queryResumesByPage(int userId,int currPage,int size);
}
