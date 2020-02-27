package com.ponmma.ss.service;

import com.ponmma.ss.param.AclModuleParam;

public interface SysAclModuleService {

    void save(AclModuleParam param);

    void update(AclModuleParam param);

    void delete(int aclModuleId);

}
