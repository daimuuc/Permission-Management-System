package com.ponmma.ss.service;

import com.ponmma.ss.beans.PageQuery;
import com.ponmma.ss.beans.PageResult;
import com.ponmma.ss.entity.SysUser;
import com.ponmma.ss.param.UserParam;

import java.util.List;

public interface SysUserService {

    void save(UserParam param);

    void update(UserParam param);

    SysUser findByKeyword(String keyword);

    PageResult<SysUser> getPageByDeptId(int deptId, PageQuery page);

    List<SysUser> getAll();
}
