package com.th.market.vo;

import org.omg.PortableInterceptor.INACTIVE;

import java.io.Serializable;
import java.util.List;

/**
 * Created by tianheng on 2017/6/28.
 */
public class Page implements Serializable {
    //起始记录>=
    private int startRecord;
    //终止记录<
    private int endRecord;
    private Integer currentPage = 1;
    private int totalPage;
    private int pageSize = 1;
    private int totalRecord;
    private List<?> recordList;

    public Page(Integer currentPage) {
        init(currentPage);
    }

    private void init(Integer currentPage) {
        this.currentPage = currentPage;
        this.startRecord = (currentPage - 1) * pageSize + 1;
        this.endRecord = this.startRecord + this.pageSize;
    }

    public List<?> getRecordList() {
        return recordList;
    }

    public void setRecordList(List<?> recordList) {
        this.recordList = recordList;
    }

    public int getStartRecord() {
        return this.startRecord;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setStartRecord(int startRecord) {
        this.startRecord = startRecord;
    }

    public int getEndRecord() {
        return this.endRecord;
    }

    public void setEndRecord(int endRecord) {
        this.endRecord = endRecord;
    }

    public int getTotalPage() {
        totalPage = totalRecord / pageSize;
        return (totalRecord % pageSize == 0) ? totalPage : totalPage + 1;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }
}
