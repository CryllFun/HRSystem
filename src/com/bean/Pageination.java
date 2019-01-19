package com.bean;



import java.util.List;

public class Pageination {
	//每页数据条数,传入
	private int size;
	//总共有多少条数据,传入
	private int totalSize;
	//总共有几页
	private int totalPage;
	//当前页,传入
	private int currPage;
	//是否是第一页
	private boolean firstPage;
	//是否是最后一页
	private boolean lastPage;
	//所有的数据，传入
	private List<Resume> list;

	public Pageination() {
	}

	public int getTotalPage() {
		return totalSize%size>0?totalSize/size+1:totalSize/size;
	}
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public boolean isFirstPage() {
		return currPage==1?true:false;
	}
	public boolean isLastPage() {
		return currPage==getTotalPage()?true:false;
	}
	public List<Resume> getList() {
		return list;
	}
	public void setList(List<Resume> list) {
		this.list = list;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}
}