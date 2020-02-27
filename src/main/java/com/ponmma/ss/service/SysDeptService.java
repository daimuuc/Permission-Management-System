package com.ponmma.ss.service;

import com.ponmma.ss.param.DeptParam;

public interface SysDeptService {

    void save(DeptParam param);

    void update(DeptParam param);

    void delete(int deptId);

}
