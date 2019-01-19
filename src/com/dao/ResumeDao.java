package com.dao;

import com.bean.Resume;

import java.util.List;

public interface ResumeDao {
    /**
     * 增加简历
     * @param rseume
     */
    public void addResume(Resume rseume);

    /**
     * 删除简历
     * @param resId
     */
    public void deleteResume(int resId);

    /**
     * 修改简历
     * @param resume
     */
    public void updateResume(Resume resume);

    /**
     * 游客查看自己的简历
     * @return
     */
    public List<Resume> queryResumesByUid(int uId);

    /**
     * 查看相应状态的简历
     * @param submit
     * @return
     */
    public List<Resume> queryResumesBySubmit(int  submit);

    /**
     * 通过id查简历
     * @param resId
     * @return
     */
    public Resume queryResById(int resId);

    /**
     * 分页查找
     * @param userId
     * @param currPage
     * @param size
     * @return
     */
    public List<Resume> queryResumesByPage(int userId,int currPage,int size);
}
