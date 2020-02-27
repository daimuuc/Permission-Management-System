package com.ponmma.ss.service;

import com.ponmma.ss.beans.PageQuery;
import com.ponmma.ss.beans.PageResult;
import com.ponmma.ss.entity.*;
import com.ponmma.ss.param.SearchLogParam;

public interface SysLogService {

    void saveDeptLog(SysDept before, SysDept after);

    void saveUserLog(SysUser before, SysUser after);

    void saveAclModuleLog(SysAclModule before, SysAclModule after);

    void saveAclLog(SysAcl before, SysAcl after);

    void saveRoleLog(SysRole before, SysRole after);

    PageResult<SysLogWithBLOBs> searchPageList(SearchLogParam param, PageQuery page);

    void recover(int id);

}
