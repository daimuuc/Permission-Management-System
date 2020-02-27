package com.ponmma.ss.service;

import com.ponmma.ss.beans.PageQuery;
import com.ponmma.ss.beans.PageResult;
import com.ponmma.ss.entity.SysAcl;
import com.ponmma.ss.param.AclParam;

public interface SysAclService {

    void save(AclParam param);

    void update(AclParam param);

    PageResult<SysAcl> getPageByAclModuleId(int aclModuleId, PageQuery page);

}
